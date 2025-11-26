-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex Derivatives Premium Omd 1.47 Protocol
local omi_hkex_derivatives_premium_omd_v1_47 = Proto("Hkex.Derivatives.Premium.Omd.v1.47.Lua", "Hkex Derivatives Premium Omd 1.47")

-- Protocol table
local hkex_derivatives_premium_omd_v1_47 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex Derivatives Premium Omd 1.47 Fields
omi_hkex_derivatives_premium_omd_v1_47.fields.actual_start_date = ProtoField.new("Actual Start Date", "hkex.derivatives.premium.omd.v1.47.actualstartdate", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.actual_start_time = ProtoField.new("Actual Start Time", "hkex.derivatives.premium.omd.v1.47.actualstarttime", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.aggregate_quantity = ProtoField.new("Aggregate Quantity", "hkex.derivatives.premium.omd.v1.47.aggregatequantity", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.alert_id = ProtoField.new("Alert Id", "hkex.derivatives.premium.omd.v1.47.alertid", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.base_currency = ProtoField.new("Base Currency", "hkex.derivatives.premium.omd.v1.47.basecurrency", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.bid_ask_flag = ProtoField.new("Bid Ask Flag", "hkex.derivatives.premium.omd.v1.47.bidaskflag", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.book_entry = ProtoField.new("Book Entry", "hkex.derivatives.premium.omd.v1.47.bookentry", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.buy_write = ProtoField.new("Buy Write", "hkex.derivatives.premium.omd.v1.47.buywrite", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "hkex.derivatives.premium.omd.v1.47.calculatedopeningprice", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_quantity = ProtoField.new("Calculated Opening Quantity", "hkex.derivatives.premium.omd.v1.47.calculatedopeningquantity", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.combo_group_id = ProtoField.new("Combo Group Id", "hkex.derivatives.premium.omd.v1.47.combogroupid", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.combo_orderbook_id = ProtoField.new("Combo Orderbook Id", "hkex.derivatives.premium.omd.v1.47.comboorderbookid", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_code = ProtoField.new("Commodity Code", "hkex.derivatives.premium.omd.v1.47.commoditycode", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_id = ProtoField.new("Commodity Id", "hkex.derivatives.premium.omd.v1.47.commodityid", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_name = ProtoField.new("Commodity Name", "hkex.derivatives.premium.omd.v1.47.commodityname", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.compression_mode = ProtoField.new("Compression Mode", "hkex.derivatives.premium.omd.v1.47.compressionmode", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.content = ProtoField.new("Content", "hkex.derivatives.premium.omd.v1.47.content", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.contract_size = ProtoField.new("Contract Size", "hkex.derivatives.premium.omd.v1.47.contractsize", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.contract_size_extended = ProtoField.new("Contract Size Extended", "hkex.derivatives.premium.omd.v1.47.contractsizeextended", ftypes.INT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.country = ProtoField.new("Country", "hkex.derivatives.premium.omd.v1.47.country", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.date_time_first_trading = ProtoField.new("Date Time First Trading", "hkex.derivatives.premium.omd.v1.47.datetimefirsttrading", ftypes.INT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.date_time_last_trading = ProtoField.new("Date Time Last Trading", "hkex.derivatives.premium.omd.v1.47.datetimelasttrading", ftypes.INT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.day_indicator = ProtoField.new("Day Indicator", "hkex.derivatives.premium.omd.v1.47.dayindicator", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.deal_count = ProtoField.new("Deal Count", "hkex.derivatives.premium.omd.v1.47.dealcount", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.deal_info_uint_162 = ProtoField.new("Deal Info Uint 162", "hkex.derivatives.premium.omd.v1.47.dealinfouint162", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.deal_type = ProtoField.new("Deal Type", "hkex.derivatives.premium.omd.v1.47.dealtype", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_contract_size = ProtoField.new("Decimal In Contract Size", "hkex.derivatives.premium.omd.v1.47.decimalincontractsize", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_premium = ProtoField.new("Decimal In Premium", "hkex.derivatives.premium.omd.v1.47.decimalinpremium", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_strike_price = ProtoField.new("Decimal In Strike Price", "hkex.derivatives.premium.omd.v1.47.decimalinstrikeprice", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_underlying_price = ProtoField.new("Decimal In Underlying Price", "hkex.derivatives.premium.omd.v1.47.decimalinunderlyingprice", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.disaster_recovery_status = ProtoField.new("Disaster Recovery Status", "hkex.derivatives.premium.omd.v1.47.disasterrecoverystatus", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.effective_exp_date = ProtoField.new("Effective Exp Date", "hkex.derivatives.premium.omd.v1.47.effectiveexpdate", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.effective_tomorrow = ProtoField.new("Effective Tomorrow", "hkex.derivatives.premium.omd.v1.47.effectivetomorrow", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.expiration_date = ProtoField.new("Expiration Date", "hkex.derivatives.premium.omd.v1.47.expirationdate", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.expiry_date = ProtoField.new("Expiry Date", "hkex.derivatives.premium.omd.v1.47.expirydate", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.filler_1 = ProtoField.new("Filler 1", "hkex.derivatives.premium.omd.v1.47.filler1", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.filler_2 = ProtoField.new("Filler 2", "hkex.derivatives.premium.omd.v1.47.filler2", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.filler_3 = ProtoField.new("Filler 3", "hkex.derivatives.premium.omd.v1.47.filler3", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.filler_4 = ProtoField.new("Filler 4", "hkex.derivatives.premium.omd.v1.47.filler4", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.filler_6 = ProtoField.new("Filler 6", "hkex.derivatives.premium.omd.v1.47.filler6", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.financial_product = ProtoField.new("Financial Product", "hkex.derivatives.premium.omd.v1.47.financialproduct", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.gross_open_interest = ProtoField.new("Gross Open Interest", "hkex.derivatives.premium.omd.v1.47.grossopeninterest", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.header = ProtoField.new("Header", "hkex.derivatives.premium.omd.v1.47.header", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.high = ProtoField.new("High", "hkex.derivatives.premium.omd.v1.47.high", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.implied_volatility = ProtoField.new("Implied Volatility", "hkex.derivatives.premium.omd.v1.47.impliedvolatility", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.info_type = ProtoField.new("Info Type", "hkex.derivatives.premium.omd.v1.47.infotype", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_class_id = ProtoField.new("Instrument Class Id", "hkex.derivatives.premium.omd.v1.47.instrumentclassid", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_class_name = ProtoField.new("Instrument Class Name", "hkex.derivatives.premium.omd.v1.47.instrumentclassname", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_group = ProtoField.new("Instrument Group", "hkex.derivatives.premium.omd.v1.47.instrumentgroup", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.internal_trade_or_cross = ProtoField.new("Internal Trade Or Cross", "hkex.derivatives.premium.omd.v1.47.internaltradeorcross", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_hkex_derivatives_premium_omd_v1_47.fields.is_fractions = ProtoField.new("Is Fractions", "hkex.derivatives.premium.omd.v1.47.isfractions", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.isin_code = ProtoField.new("Isin Code", "hkex.derivatives.premium.omd.v1.47.isincode", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.last_fragment = ProtoField.new("Last Fragment", "hkex.derivatives.premium.omd.v1.47.lastfragment", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.derivatives.premium.omd.v1.47.lastseqnum", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.late_trade = ProtoField.new("Late Trade", "hkex.derivatives.premium.omd.v1.47.latetrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_hkex_derivatives_premium_omd_v1_47.fields.leg_orderbook_id = ProtoField.new("Leg Orderbook Id", "hkex.derivatives.premium.omd.v1.47.legorderbookid", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.leg_ratio = ProtoField.new("Leg Ratio", "hkex.derivatives.premium.omd.v1.47.legratio", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.leg_side = ProtoField.new("Leg Side", "hkex.derivatives.premium.omd.v1.47.legside", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.locked = ProtoField.new("Locked", "hkex.derivatives.premium.omd.v1.47.locked", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.low = ProtoField.new("Low", "hkex.derivatives.premium.omd.v1.47.low", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.market = ProtoField.new("Market", "hkex.derivatives.premium.omd.v1.47.market", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.message = ProtoField.new("Message", "hkex.derivatives.premium.omd.v1.47.message", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.modifier = ProtoField.new("Modifier", "hkex.derivatives.premium.omd.v1.47.modifier", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.msg_count = ProtoField.new("Msg Count", "hkex.derivatives.premium.omd.v1.47.msgcount", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.msg_header = ProtoField.new("Msg Header", "hkex.derivatives.premium.omd.v1.47.msgheader", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.msg_size = ProtoField.new("Msg Size", "hkex.derivatives.premium.omd.v1.47.msgsize", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.msg_type = ProtoField.new("Msg Type", "hkex.derivatives.premium.omd.v1.47.msgtype", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.net_open_interest = ProtoField.new("Net Open Interest", "hkex.derivatives.premium.omd.v1.47.netopeninterest", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.derivatives.premium.omd.v1.47.newseqno", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.no_entries = ProtoField.new("No Entries", "hkex.derivatives.premium.omd.v1.47.noentries", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.no_lines = ProtoField.new("No Lines", "hkex.derivatives.premium.omd.v1.47.nolines", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.nominal_value = ProtoField.new("Nominal Value", "hkex.derivatives.premium.omd.v1.47.nominalvalue", ftypes.INT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_decimals_price = ProtoField.new("Number Of Decimals Price", "hkex.derivatives.premium.omd.v1.47.numberofdecimalsprice", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_legs = ProtoField.new("Number Of Legs", "hkex.derivatives.premium.omd.v1.47.numberoflegs", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_lots = ProtoField.new("Number Of Lots", "hkex.derivatives.premium.omd.v1.47.numberoflots", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_orders = ProtoField.new("Number Of Orders", "hkex.derivatives.premium.omd.v1.47.numberoforders", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "hkex.derivatives.premium.omd.v1.47.occurredatcross", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_hkex_derivatives_premium_omd_v1_47.fields.off_market = ProtoField.new("Off Market", "hkex.derivatives.premium.omd.v1.47.offmarket", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_hkex_derivatives_premium_omd_v1_47.fields.open = ProtoField.new("Open", "hkex.derivatives.premium.omd.v1.47.open", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.order_id = ProtoField.new("Order Id", "hkex.derivatives.premium.omd.v1.47.orderid", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.orderbook_id = ProtoField.new("Orderbook Id", "hkex.derivatives.premium.omd.v1.47.orderbookid", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.packet = ProtoField.new("Packet", "hkex.derivatives.premium.omd.v1.47.packet", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.packet_header = ProtoField.new("Packet Header", "hkex.derivatives.premium.omd.v1.47.packetheader", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.payload = ProtoField.new("Payload", "hkex.derivatives.premium.omd.v1.47.payload", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.derivatives.premium.omd.v1.47.pktsize", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.planned_start_date = ProtoField.new("Planned Start Date", "hkex.derivatives.premium.omd.v1.47.plannedstartdate", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.planned_start_time = ProtoField.new("Planned Start Time", "hkex.derivatives.premium.omd.v1.47.plannedstarttime", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.premium_unit = ProtoField.new("Premium Unit", "hkex.derivatives.premium.omd.v1.47.premiumunit", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.price = ProtoField.new("Price", "hkex.derivatives.premium.omd.v1.47.price", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.price_level = ProtoField.new("Price Level", "hkex.derivatives.premium.omd.v1.47.pricelevel", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.price_method = ProtoField.new("Price Method", "hkex.derivatives.premium.omd.v1.47.pricemethod", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.price_quotation_factor = ProtoField.new("Price Quotation Factor", "hkex.derivatives.premium.omd.v1.47.pricequotationfactor", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.printable = ProtoField.new("Printable", "hkex.derivatives.premium.omd.v1.47.printable", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_hkex_derivatives_premium_omd_v1_47.fields.priority = ProtoField.new("Priority", "hkex.derivatives.premium.omd.v1.47.priority", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.put_or_call = ProtoField.new("Put Or Call", "hkex.derivatives.premium.omd.v1.47.putorcall", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.ranking_type = ProtoField.new("Ranking Type", "hkex.derivatives.premium.omd.v1.47.rankingtype", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.reported_trade = ProtoField.new("Reported Trade", "hkex.derivatives.premium.omd.v1.47.reportedtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_hkex_derivatives_premium_omd_v1_47.fields.seconds_to_state_change = ProtoField.new("Seconds To State Change", "hkex.derivatives.premium.omd.v1.47.secondstostatechange", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.send_time = ProtoField.new("Send Time", "hkex.derivatives.premium.omd.v1.47.sendtime", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.seq_num = ProtoField.new("Seq Num", "hkex.derivatives.premium.omd.v1.47.seqnum", ftypes.UINT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.series_status = ProtoField.new("Series Status", "hkex.derivatives.premium.omd.v1.47.seriesstatus", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.session = ProtoField.new("Session", "hkex.derivatives.premium.omd.v1.47.session", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.settlement = ProtoField.new("Settlement", "hkex.derivatives.premium.omd.v1.47.settlement", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.settlement_currency_id = ProtoField.new("Settlement Currency Id", "hkex.derivatives.premium.omd.v1.47.settlementcurrencyid", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.side = ProtoField.new("Side", "hkex.derivatives.premium.omd.v1.47.side", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.source = ProtoField.new("Source", "hkex.derivatives.premium.omd.v1.47.source", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.state = ProtoField.new("State", "hkex.derivatives.premium.omd.v1.47.state", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.state_level = ProtoField.new("State Level", "hkex.derivatives.premium.omd.v1.47.statelevel", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.strike_price = ProtoField.new("Strike Price", "hkex.derivatives.premium.omd.v1.47.strikeprice", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.suspended = ProtoField.new("Suspended", "hkex.derivatives.premium.omd.v1.47.suspended", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.derivatives.premium.omd.v1.47.suspensionindicator", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.symbol = ProtoField.new("Symbol", "hkex.derivatives.premium.omd.v1.47.symbol", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.tick_step_size = ProtoField.new("Tick Step Size", "hkex.derivatives.premium.omd.v1.47.tickstepsize", ftypes.INT32)
omi_hkex_derivatives_premium_omd_v1_47.fields.tradable = ProtoField.new("Tradable", "hkex.derivatives.premium.omd.v1.47.tradable", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_condition = ProtoField.new("Trade Condition", "hkex.derivatives.premium.omd.v1.47.tradecondition", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_id = ProtoField.new("Trade Id", "hkex.derivatives.premium.omd.v1.47.tradeid", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_quantity = ProtoField.new("Trade Quantity", "hkex.derivatives.premium.omd.v1.47.tradequantity", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_report_volume = ProtoField.new("Trade Report Volume", "hkex.derivatives.premium.omd.v1.47.tradereportvolume", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_side = ProtoField.new("Trade Side", "hkex.derivatives.premium.omd.v1.47.tradeside", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_state = ProtoField.new("Trade State", "hkex.derivatives.premium.omd.v1.47.tradestate", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_time = ProtoField.new("Trade Time", "hkex.derivatives.premium.omd.v1.47.tradetime", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.turnover = ProtoField.new("Turnover", "hkex.derivatives.premium.omd.v1.47.turnover", ftypes.UINT64)
omi_hkex_derivatives_premium_omd_v1_47.fields.underlying_price_unit = ProtoField.new("Underlying Price Unit", "hkex.derivatives.premium.omd.v1.47.underlyingpriceunit", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.underlying_type = ProtoField.new("Underlying Type", "hkex.derivatives.premium.omd.v1.47.underlyingtype", ftypes.UINT8)
omi_hkex_derivatives_premium_omd_v1_47.fields.unused_12 = ProtoField.new("Unused 12", "hkex.derivatives.premium.omd.v1.47.unused12", ftypes.UINT16, nil, base.DEC, 0xFFF0)
omi_hkex_derivatives_premium_omd_v1_47.fields.unused_5 = ProtoField.new("Unused 5", "hkex.derivatives.premium.omd.v1.47.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_hkex_derivatives_premium_omd_v1_47.fields.update_action = ProtoField.new("Update Action", "hkex.derivatives.premium.omd.v1.47.updateaction", ftypes.UINT8)

-- Hkex Derivatives Premium Omd 1.47 messages
omi_hkex_derivatives_premium_omd_v1_47.fields.aggregate_order_book_update_message = ProtoField.new("Aggregate Order Book Update Message", "hkex.derivatives.premium.omd.v1.47.aggregateorderbookupdatemessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_price_message = ProtoField.new("Calculated Opening Price Message", "hkex.derivatives.premium.omd.v1.47.calculatedopeningpricemessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.class_definition_message = ProtoField.new("Class Definition Message", "hkex.derivatives.premium.omd.v1.47.classdefinitionmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.combination_definition_message = ProtoField.new("Combination Definition Message", "hkex.derivatives.premium.omd.v1.47.combinationdefinitionmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_definition_message = ProtoField.new("Commodity Definition Message", "hkex.derivatives.premium.omd.v1.47.commoditydefinitionmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_status_message = ProtoField.new("Commodity Status Message", "hkex.derivatives.premium.omd.v1.47.commoditystatusmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.derivatives.premium.omd.v1.47.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.implied_volatility_message = ProtoField.new("Implied Volatility Message", "hkex.derivatives.premium.omd.v1.47.impliedvolatilitymessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.market_alert_message = ProtoField.new("Market Alert Message", "hkex.derivatives.premium.omd.v1.47.marketalertmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.market_status_message = ProtoField.new("Market Status Message", "hkex.derivatives.premium.omd.v1.47.marketstatusmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.open_interest_message = ProtoField.new("Open Interest Message", "hkex.derivatives.premium.omd.v1.47.openinterestmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.quote_request = ProtoField.new("Quote Request", "hkex.derivatives.premium.omd.v1.47.quoterequest", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.refresh_complete = ProtoField.new("Refresh Complete", "hkex.derivatives.premium.omd.v1.47.refreshcomplete", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.sequence_reset = ProtoField.new("Sequence Reset", "hkex.derivatives.premium.omd.v1.47.sequencereset", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.series_definition_base_message = ProtoField.new("Series Definition Base Message", "hkex.derivatives.premium.omd.v1.47.seriesdefinitionbasemessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.series_definition_extended_message = ProtoField.new("Series Definition Extended Message", "hkex.derivatives.premium.omd.v1.47.seriesdefinitionextendedmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.series_statistics_message = ProtoField.new("Series Statistics Message", "hkex.derivatives.premium.omd.v1.47.seriesstatisticsmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.series_status_message = ProtoField.new("Series Status Message", "hkex.derivatives.premium.omd.v1.47.seriesstatusmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_amendment_message = ProtoField.new("Trade Amendment Message", "hkex.derivatives.premium.omd.v1.47.tradeamendmentmessage", ftypes.STRING)
omi_hkex_derivatives_premium_omd_v1_47.fields.trade_message = ProtoField.new("Trade Message", "hkex.derivatives.premium.omd.v1.47.trademessage", ftypes.STRING)

-- Hkex Derivatives Premium Omd 1.47 generated fields
omi_hkex_derivatives_premium_omd_v1_47.fields.book_entry_index = ProtoField.new("Book Entry Index", "hkex.derivatives.premium.omd.v1.47.bookentryindex", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.content_index = ProtoField.new("Content Index", "hkex.derivatives.premium.omd.v1.47.contentindex", ftypes.UINT16)
omi_hkex_derivatives_premium_omd_v1_47.fields.message_index = ProtoField.new("Message Index", "hkex.derivatives.premium.omd.v1.47.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex Derivatives Premium Omd 1.47 Element Dissection Options
show.aggregate_order_book_update_message = true
show.book_entry = true
show.calculated_opening_price_message = true
show.class_definition_message = true
show.combination_definition_message = true
show.commodity_definition_message = true
show.commodity_status_message = true
show.deal_type = true
show.disaster_recovery_signal_message = true
show.implied_volatility_message = true
show.market_alert_message = true
show.market_status_message = true
show.message = true
show.msg_header = true
show.open_interest_message = true
show.packet = true
show.packet_header = true
show.quote_request = true
show.refresh_complete = true
show.sequence_reset = true
show.series_definition_base_message = true
show.series_definition_extended_message = true
show.series_statistics_message = true
show.series_status_message = true
show.trade_amendment_message = true
show.trade_condition = true
show.trade_message = true
show.payload = false

-- Register Hkex Derivatives Premium Omd 1.47 Show Options
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_aggregate_order_book_update_message = Pref.bool("Show Aggregate Order Book Update Message", show.aggregate_order_book_update_message, "Parse and add Aggregate Order Book Update Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_book_entry = Pref.bool("Show Book Entry", show.book_entry, "Parse and add Book Entry to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_calculated_opening_price_message = Pref.bool("Show Calculated Opening Price Message", show.calculated_opening_price_message, "Parse and add Calculated Opening Price Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_class_definition_message = Pref.bool("Show Class Definition Message", show.class_definition_message, "Parse and add Class Definition Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_combination_definition_message = Pref.bool("Show Combination Definition Message", show.combination_definition_message, "Parse and add Combination Definition Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_definition_message = Pref.bool("Show Commodity Definition Message", show.commodity_definition_message, "Parse and add Commodity Definition Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_status_message = Pref.bool("Show Commodity Status Message", show.commodity_status_message, "Parse and add Commodity Status Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_deal_type = Pref.bool("Show Deal Type", show.deal_type, "Parse and add Deal Type to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_disaster_recovery_signal_message = Pref.bool("Show Disaster Recovery Signal Message", show.disaster_recovery_signal_message, "Parse and add Disaster Recovery Signal Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_implied_volatility_message = Pref.bool("Show Implied Volatility Message", show.implied_volatility_message, "Parse and add Implied Volatility Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_alert_message = Pref.bool("Show Market Alert Message", show.market_alert_message, "Parse and add Market Alert Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_status_message = Pref.bool("Show Market Status Message", show.market_status_message, "Parse and add Market Status Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_refresh_complete = Pref.bool("Show Refresh Complete", show.refresh_complete, "Parse and add Refresh Complete to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_sequence_reset = Pref.bool("Show Sequence Reset", show.sequence_reset, "Parse and add Sequence Reset to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_base_message = Pref.bool("Show Series Definition Base Message", show.series_definition_base_message, "Parse and add Series Definition Base Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_extended_message = Pref.bool("Show Series Definition Extended Message", show.series_definition_extended_message, "Parse and add Series Definition Extended Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_statistics_message = Pref.bool("Show Series Statistics Message", show.series_statistics_message, "Parse and add Series Statistics Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_status_message = Pref.bool("Show Series Status Message", show.series_status_message, "Parse and add Series Status Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_amendment_message = Pref.bool("Show Trade Amendment Message", show.trade_amendment_message, "Parse and add Trade Amendment Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_hkex_derivatives_premium_omd_v1_47.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_hkex_derivatives_premium_omd_v1_47.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.aggregate_order_book_update_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_aggregate_order_book_update_message then
    show.aggregate_order_book_update_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_aggregate_order_book_update_message
    changed = true
  end
  if show.book_entry ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_book_entry then
    show.book_entry = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_book_entry
    changed = true
  end
  if show.calculated_opening_price_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_calculated_opening_price_message then
    show.calculated_opening_price_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_calculated_opening_price_message
    changed = true
  end
  if show.class_definition_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_class_definition_message then
    show.class_definition_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_class_definition_message
    changed = true
  end
  if show.combination_definition_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_combination_definition_message then
    show.combination_definition_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_combination_definition_message
    changed = true
  end
  if show.commodity_definition_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_definition_message then
    show.commodity_definition_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_definition_message
    changed = true
  end
  if show.commodity_status_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_status_message then
    show.commodity_status_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_commodity_status_message
    changed = true
  end
  if show.deal_type ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_deal_type then
    show.deal_type = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_deal_type
    changed = true
  end
  if show.disaster_recovery_signal_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_disaster_recovery_signal_message then
    show.disaster_recovery_signal_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_disaster_recovery_signal_message
    changed = true
  end
  if show.implied_volatility_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_implied_volatility_message then
    show.implied_volatility_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_implied_volatility_message
    changed = true
  end
  if show.market_alert_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_alert_message then
    show.market_alert_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_alert_message
    changed = true
  end
  if show.market_status_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_status_message then
    show.market_status_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_market_status_message
    changed = true
  end
  if show.message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_message then
    show.message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_message
    changed = true
  end
  if show.msg_header ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_msg_header then
    show.msg_header = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_msg_header
    changed = true
  end
  if show.open_interest_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_open_interest_message then
    show.open_interest_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_open_interest_message
    changed = true
  end
  if show.packet ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet then
    show.packet = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet_header then
    show.packet_header = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_packet_header
    changed = true
  end
  if show.quote_request ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_quote_request then
    show.quote_request = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_quote_request
    changed = true
  end
  if show.refresh_complete ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_refresh_complete then
    show.refresh_complete = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_refresh_complete
    changed = true
  end
  if show.sequence_reset ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_sequence_reset then
    show.sequence_reset = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_sequence_reset
    changed = true
  end
  if show.series_definition_base_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_base_message then
    show.series_definition_base_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_base_message
    changed = true
  end
  if show.series_definition_extended_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_extended_message then
    show.series_definition_extended_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_definition_extended_message
    changed = true
  end
  if show.series_statistics_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_statistics_message then
    show.series_statistics_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_statistics_message
    changed = true
  end
  if show.series_status_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_status_message then
    show.series_status_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_series_status_message
    changed = true
  end
  if show.trade_amendment_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_amendment_message then
    show.trade_amendment_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_amendment_message
    changed = true
  end
  if show.trade_condition ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_condition then
    show.trade_condition = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_condition
    changed = true
  end
  if show.trade_message ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_message then
    show.trade_message = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_hkex_derivatives_premium_omd_v1_47.prefs.show_payload then
    show.payload = omi_hkex_derivatives_premium_omd_v1_47.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Hkex Derivatives Premium Omd 1.47
-----------------------------------------------------------------------

-- Implied Volatility
hkex_derivatives_premium_omd_v1_47.implied_volatility = {}

-- Size: Implied Volatility
hkex_derivatives_premium_omd_v1_47.implied_volatility.size = 4

-- Display: Implied Volatility
hkex_derivatives_premium_omd_v1_47.implied_volatility.display = function(value)
  return "Implied Volatility: "..value
end

-- Dissect: Implied Volatility
hkex_derivatives_premium_omd_v1_47.implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.implied_volatility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.implied_volatility, range, value, display)

  return offset + length, value
end

-- Orderbook Id
hkex_derivatives_premium_omd_v1_47.orderbook_id = {}

-- Size: Orderbook Id
hkex_derivatives_premium_omd_v1_47.orderbook_id.size = 4

-- Display: Orderbook Id
hkex_derivatives_premium_omd_v1_47.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Implied Volatility Message
hkex_derivatives_premium_omd_v1_47.implied_volatility_message = {}

-- Size: Implied Volatility Message
hkex_derivatives_premium_omd_v1_47.implied_volatility_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.implied_volatility.size

-- Display: Implied Volatility Message
hkex_derivatives_premium_omd_v1_47.implied_volatility_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Volatility Message
hkex_derivatives_premium_omd_v1_47.implied_volatility_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Implied Volatility: Uint32
  index, implied_volatility = hkex_derivatives_premium_omd_v1_47.implied_volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Volatility Message
hkex_derivatives_premium_omd_v1_47.implied_volatility_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_volatility_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.implied_volatility_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.implied_volatility_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.implied_volatility_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.implied_volatility_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover
hkex_derivatives_premium_omd_v1_47.turnover = {}

-- Size: Turnover
hkex_derivatives_premium_omd_v1_47.turnover.size = 8

-- Display: Turnover
hkex_derivatives_premium_omd_v1_47.turnover.display = function(value)
  return "Turnover: "..value
end

-- Dissect: Turnover
hkex_derivatives_premium_omd_v1_47.turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.turnover.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.turnover, range, value, display)

  return offset + length, value
end

-- Net Open Interest
hkex_derivatives_premium_omd_v1_47.net_open_interest = {}

-- Size: Net Open Interest
hkex_derivatives_premium_omd_v1_47.net_open_interest.size = 4

-- Display: Net Open Interest
hkex_derivatives_premium_omd_v1_47.net_open_interest.display = function(value)
  return "Net Open Interest: "..value
end

-- Dissect: Net Open Interest
hkex_derivatives_premium_omd_v1_47.net_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.net_open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.net_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.net_open_interest, range, value, display)

  return offset + length, value
end

-- Gross Open Interest
hkex_derivatives_premium_omd_v1_47.gross_open_interest = {}

-- Size: Gross Open Interest
hkex_derivatives_premium_omd_v1_47.gross_open_interest.size = 4

-- Display: Gross Open Interest
hkex_derivatives_premium_omd_v1_47.gross_open_interest.display = function(value)
  return "Gross Open Interest: "..value
end

-- Dissect: Gross Open Interest
hkex_derivatives_premium_omd_v1_47.gross_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.gross_open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.gross_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.gross_open_interest, range, value, display)

  return offset + length, value
end

-- Deal Count
hkex_derivatives_premium_omd_v1_47.deal_count = {}

-- Size: Deal Count
hkex_derivatives_premium_omd_v1_47.deal_count.size = 4

-- Display: Deal Count
hkex_derivatives_premium_omd_v1_47.deal_count.display = function(value)
  return "Deal Count: "..value
end

-- Dissect: Deal Count
hkex_derivatives_premium_omd_v1_47.deal_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.deal_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.deal_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.deal_count, range, value, display)

  return offset + length, value
end

-- Settlement
hkex_derivatives_premium_omd_v1_47.settlement = {}

-- Size: Settlement
hkex_derivatives_premium_omd_v1_47.settlement.size = 4

-- Display: Settlement
hkex_derivatives_premium_omd_v1_47.settlement.display = function(value)
  return "Settlement: "..value
end

-- Dissect: Settlement
hkex_derivatives_premium_omd_v1_47.settlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.settlement.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.settlement, range, value, display)

  return offset + length, value
end

-- Filler 6
hkex_derivatives_premium_omd_v1_47.filler_6 = {}

-- Size: Filler 6
hkex_derivatives_premium_omd_v1_47.filler_6.size = 6

-- Display: Filler 6
hkex_derivatives_premium_omd_v1_47.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
hkex_derivatives_premium_omd_v1_47.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.filler_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Day Indicator
hkex_derivatives_premium_omd_v1_47.day_indicator = {}

-- Size: Day Indicator
hkex_derivatives_premium_omd_v1_47.day_indicator.size = 2

-- Display: Day Indicator
hkex_derivatives_premium_omd_v1_47.day_indicator.display = function(value)
  if value == 0 then
    return "Day Indicator: Current Business Day (0)"
  end
  if value == 1 then
    return "Day Indicator: Previous Business Day (1)"
  end

  return "Day Indicator: Unknown("..value..")"
end

-- Dissect: Day Indicator
hkex_derivatives_premium_omd_v1_47.day_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.day_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.day_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.day_indicator, range, value, display)

  return offset + length, value
end

-- Open Interest Message
hkex_derivatives_premium_omd_v1_47.open_interest_message = {}

-- Size: Open Interest Message
hkex_derivatives_premium_omd_v1_47.open_interest_message.size =
  hkex_derivatives_premium_omd_v1_47.day_indicator.size + 
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.filler_6.size + 
  hkex_derivatives_premium_omd_v1_47.settlement.size + 
  hkex_derivatives_premium_omd_v1_47.deal_count.size + 
  hkex_derivatives_premium_omd_v1_47.gross_open_interest.size + 
  hkex_derivatives_premium_omd_v1_47.net_open_interest.size + 
  hkex_derivatives_premium_omd_v1_47.turnover.size

-- Display: Open Interest Message
hkex_derivatives_premium_omd_v1_47.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
hkex_derivatives_premium_omd_v1_47.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Day Indicator: Uint16
  index, day_indicator = hkex_derivatives_premium_omd_v1_47.day_indicator.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Filler 6: String
  index, filler_6 = hkex_derivatives_premium_omd_v1_47.filler_6.dissect(buffer, index, packet, parent)

  -- Settlement: Int32
  index, settlement = hkex_derivatives_premium_omd_v1_47.settlement.dissect(buffer, index, packet, parent)

  -- Deal Count: Uint32
  index, deal_count = hkex_derivatives_premium_omd_v1_47.deal_count.dissect(buffer, index, packet, parent)

  -- Gross Open Interest: Int32
  index, gross_open_interest = hkex_derivatives_premium_omd_v1_47.gross_open_interest.dissect(buffer, index, packet, parent)

  -- Net Open Interest: Int32
  index, net_open_interest = hkex_derivatives_premium_omd_v1_47.net_open_interest.dissect(buffer, index, packet, parent)

  -- Turnover: Uint64
  index, turnover = hkex_derivatives_premium_omd_v1_47.turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
hkex_derivatives_premium_omd_v1_47.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.open_interest_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Content
hkex_derivatives_premium_omd_v1_47.content = {}

-- Size: Content
hkex_derivatives_premium_omd_v1_47.content.size = 320

-- Display: Content
hkex_derivatives_premium_omd_v1_47.content.display = function(value)
  return "Content: "..value
end

-- Dissect: Content
hkex_derivatives_premium_omd_v1_47.content.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.content.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.content.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.content, range, value, display)

  return offset + length, value
end

-- No Lines
hkex_derivatives_premium_omd_v1_47.no_lines = {}

-- Size: No Lines
hkex_derivatives_premium_omd_v1_47.no_lines.size = 1

-- Display: No Lines
hkex_derivatives_premium_omd_v1_47.no_lines.display = function(value)
  return "No Lines: "..value
end

-- Dissect: No Lines
hkex_derivatives_premium_omd_v1_47.no_lines.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.no_lines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.no_lines.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.no_lines, range, value, display)

  return offset + length, value
end

-- Priority
hkex_derivatives_premium_omd_v1_47.priority = {}

-- Size: Priority
hkex_derivatives_premium_omd_v1_47.priority.size = 1

-- Display: Priority
hkex_derivatives_premium_omd_v1_47.priority.display = function(value)
  if value == 0 then
    return "Priority: Not Specified (0)"
  end
  if value == 1 then
    return "Priority: Low (1)"
  end
  if value == 2 then
    return "Priority: Medium (2)"
  end
  if value == 3 then
    return "Priority: High (3)"
  end
  if value == 4 then
    return "Priority: Critical (4)"
  end

  return "Priority: Unknown("..value..")"
end

-- Dissect: Priority
hkex_derivatives_premium_omd_v1_47.priority.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.priority, range, value, display)

  return offset + length, value
end

-- Info Type
hkex_derivatives_premium_omd_v1_47.info_type = {}

-- Size: Info Type
hkex_derivatives_premium_omd_v1_47.info_type.size = 1

-- Display: Info Type
hkex_derivatives_premium_omd_v1_47.info_type.display = function(value)
  if value == 0 then
    return "Info Type: Not Specified (0)"
  end
  if value == 1 then
    return "Info Type: Company Announcement (1)"
  end
  if value == 2 then
    return "Info Type: Market Message (2)"
  end
  if value == 3 then
    return "Info Type: Static Line (3)"
  end
  if value == 4 then
    return "Info Type: Notice Received (4)"
  end

  return "Info Type: Unknown("..value..")"
end

-- Dissect: Info Type
hkex_derivatives_premium_omd_v1_47.info_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.info_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.info_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.info_type, range, value, display)

  return offset + length, value
end

-- Last Fragment
hkex_derivatives_premium_omd_v1_47.last_fragment = {}

-- Size: Last Fragment
hkex_derivatives_premium_omd_v1_47.last_fragment.size = 1

-- Display: Last Fragment
hkex_derivatives_premium_omd_v1_47.last_fragment.display = function(value)
  if value == "Y" then
    return "Last Fragment: Complete (Y)"
  end
  if value == "M" then
    return "Last Fragment: Not Complete (M)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
hkex_derivatives_premium_omd_v1_47.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.last_fragment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Header
hkex_derivatives_premium_omd_v1_47.header = {}

-- Size: Header
hkex_derivatives_premium_omd_v1_47.header.size = 320

-- Display: Header
hkex_derivatives_premium_omd_v1_47.header.display = function(value)
  return "Header: "..value
end

-- Dissect: Header
hkex_derivatives_premium_omd_v1_47.header.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.header.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.header.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.header, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_derivatives_premium_omd_v1_47.filler_1 = {}

-- Size: Filler 1
hkex_derivatives_premium_omd_v1_47.filler_1.size = 1

-- Display: Filler 1
hkex_derivatives_premium_omd_v1_47.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_derivatives_premium_omd_v1_47.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Source
hkex_derivatives_premium_omd_v1_47.source = {}

-- Size: Source
hkex_derivatives_premium_omd_v1_47.source.size = 1

-- Display: Source
hkex_derivatives_premium_omd_v1_47.source.display = function(value)
  if value == "H" then
    return "Source: Trading System (H)"
  end
  if value == "M" then
    return "Source: Other Market Alerts (M)"
  end

  return "Source: Unknown("..value..")"
end

-- Dissect: Source
hkex_derivatives_premium_omd_v1_47.source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.source, range, value, display)

  return offset + length, value
end

-- Alert Id
hkex_derivatives_premium_omd_v1_47.alert_id = {}

-- Size: Alert Id
hkex_derivatives_premium_omd_v1_47.alert_id.size = 2

-- Display: Alert Id
hkex_derivatives_premium_omd_v1_47.alert_id.display = function(value)
  return "Alert Id: "..value
end

-- Dissect: Alert Id
hkex_derivatives_premium_omd_v1_47.alert_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.alert_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.alert_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.alert_id, range, value, display)

  return offset + length, value
end

-- Market Alert Message
hkex_derivatives_premium_omd_v1_47.market_alert_message = {}

-- Calculate size of: Market Alert Message
hkex_derivatives_premium_omd_v1_47.market_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_derivatives_premium_omd_v1_47.alert_id.size

  index = index + hkex_derivatives_premium_omd_v1_47.source.size

  index = index + hkex_derivatives_premium_omd_v1_47.filler_1.size

  index = index + hkex_derivatives_premium_omd_v1_47.header.size

  index = index + hkex_derivatives_premium_omd_v1_47.last_fragment.size

  index = index + hkex_derivatives_premium_omd_v1_47.info_type.size

  index = index + hkex_derivatives_premium_omd_v1_47.priority.size

  index = index + hkex_derivatives_premium_omd_v1_47.no_lines.size

  -- Calculate field size from count
  local content_count = buffer(offset + index - 1, 1):le_uint()
  index = index + content_count * 320

  return index
end

-- Display: Market Alert Message
hkex_derivatives_premium_omd_v1_47.market_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Alert Message
hkex_derivatives_premium_omd_v1_47.market_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alert Id: Uint16
  index, alert_id = hkex_derivatives_premium_omd_v1_47.alert_id.dissect(buffer, index, packet, parent)

  -- Source: String
  index, source = hkex_derivatives_premium_omd_v1_47.source.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_premium_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  -- Header: Binary
  index, header = hkex_derivatives_premium_omd_v1_47.header.dissect(buffer, index, packet, parent)

  -- Last Fragment: String
  index, last_fragment = hkex_derivatives_premium_omd_v1_47.last_fragment.dissect(buffer, index, packet, parent)

  -- Info Type: Uint8
  index, info_type = hkex_derivatives_premium_omd_v1_47.info_type.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_derivatives_premium_omd_v1_47.priority.dissect(buffer, index, packet, parent)

  -- No Lines: Uint8
  index, no_lines = hkex_derivatives_premium_omd_v1_47.no_lines.dissect(buffer, index, packet, parent)

  -- Repeating: Content
  for content_index = 1, no_lines do
    index, content = hkex_derivatives_premium_omd_v1_47.content.dissect(buffer, index, packet, parent, content_index)
  end

  return index
end

-- Dissect: Market Alert Message
hkex_derivatives_premium_omd_v1_47.market_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_alert_message then
    local length = hkex_derivatives_premium_omd_v1_47.market_alert_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = hkex_derivatives_premium_omd_v1_47.market_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.market_alert_message, range, display)
  end

  return hkex_derivatives_premium_omd_v1_47.market_alert_message.fields(buffer, offset, packet, parent)
end

-- Calculated Opening Quantity
hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity = {}

-- Size: Calculated Opening Quantity
hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.size = 8

-- Display: Calculated Opening Quantity
hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.display = function(value)
  return "Calculated Opening Quantity: "..value
end

-- Dissect: Calculated Opening Quantity
hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_quantity, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_derivatives_premium_omd_v1_47.filler_4 = {}

-- Size: Filler 4
hkex_derivatives_premium_omd_v1_47.filler_4.size = 4

-- Display: Filler 4
hkex_derivatives_premium_omd_v1_47.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_derivatives_premium_omd_v1_47.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.filler_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price
hkex_derivatives_premium_omd_v1_47.calculated_opening_price = {}

-- Size: Calculated Opening Price
hkex_derivatives_premium_omd_v1_47.calculated_opening_price.size = 4

-- Display: Calculated Opening Price
hkex_derivatives_premium_omd_v1_47.calculated_opening_price.display = function(value)
  return "Calculated Opening Price: "..value
end

-- Dissect: Calculated Opening Price
hkex_derivatives_premium_omd_v1_47.calculated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.calculated_opening_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.calculated_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price Message
hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message = {}

-- Size: Calculated Opening Price Message
hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.calculated_opening_price.size + 
  hkex_derivatives_premium_omd_v1_47.filler_4.size + 
  hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.size

-- Display: Calculated Opening Price Message
hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Opening Price Message
hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: Int32
  index, calculated_opening_price = hkex_derivatives_premium_omd_v1_47.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_derivatives_premium_omd_v1_47.filler_4.dissect(buffer, index, packet, parent)

  -- Calculated Opening Quantity: Uint64
  index, calculated_opening_quantity = hkex_derivatives_premium_omd_v1_47.calculated_opening_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Opening Price Message
hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.calculated_opening_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.calculated_opening_price_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
hkex_derivatives_premium_omd_v1_47.price = {}

-- Size: Price
hkex_derivatives_premium_omd_v1_47.price.size = 4

-- Display: Price
hkex_derivatives_premium_omd_v1_47.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
hkex_derivatives_premium_omd_v1_47.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Report Volume
hkex_derivatives_premium_omd_v1_47.trade_report_volume = {}

-- Size: Trade Report Volume
hkex_derivatives_premium_omd_v1_47.trade_report_volume.size = 8

-- Display: Trade Report Volume
hkex_derivatives_premium_omd_v1_47.trade_report_volume.display = function(value)
  return "Trade Report Volume: "..value
end

-- Dissect: Trade Report Volume
hkex_derivatives_premium_omd_v1_47.trade_report_volume.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_report_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.trade_report_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_report_volume, range, value, display)

  return offset + length, value
end

-- Low
hkex_derivatives_premium_omd_v1_47.low = {}

-- Size: Low
hkex_derivatives_premium_omd_v1_47.low.size = 4

-- Display: Low
hkex_derivatives_premium_omd_v1_47.low.display = function(value)
  return "Low: "..value
end

-- Dissect: Low
hkex_derivatives_premium_omd_v1_47.low.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.low.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.low, range, value, display)

  return offset + length, value
end

-- High
hkex_derivatives_premium_omd_v1_47.high = {}

-- Size: High
hkex_derivatives_premium_omd_v1_47.high.size = 4

-- Display: High
hkex_derivatives_premium_omd_v1_47.high.display = function(value)
  return "High: "..value
end

-- Dissect: High
hkex_derivatives_premium_omd_v1_47.high.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.high.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.high, range, value, display)

  return offset + length, value
end

-- Open
hkex_derivatives_premium_omd_v1_47.open = {}

-- Size: Open
hkex_derivatives_premium_omd_v1_47.open.size = 4

-- Display: Open
hkex_derivatives_premium_omd_v1_47.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
hkex_derivatives_premium_omd_v1_47.open.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.open, range, value, display)

  return offset + length, value
end

-- Session
hkex_derivatives_premium_omd_v1_47.session = {}

-- Size: Session
hkex_derivatives_premium_omd_v1_47.session.size = 1

-- Display: Session
hkex_derivatives_premium_omd_v1_47.session.display = function(value)
  if value == 0 then
    return "Session: T Session (0)"
  end
  if value == 1 then
    return "Session: T Plus One Session (1)"
  end

  return "Session: Unknown("..value..")"
end

-- Dissect: Session
hkex_derivatives_premium_omd_v1_47.session.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.session, range, value, display)

  return offset + length, value
end

-- Series Statistics Message
hkex_derivatives_premium_omd_v1_47.series_statistics_message = {}

-- Size: Series Statistics Message
hkex_derivatives_premium_omd_v1_47.series_statistics_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.session.size + 
  hkex_derivatives_premium_omd_v1_47.open.size + 
  hkex_derivatives_premium_omd_v1_47.high.size + 
  hkex_derivatives_premium_omd_v1_47.low.size + 
  hkex_derivatives_premium_omd_v1_47.trade_report_volume.size + 
  hkex_derivatives_premium_omd_v1_47.deal_count.size + 
  hkex_derivatives_premium_omd_v1_47.price.size + 
  hkex_derivatives_premium_omd_v1_47.turnover.size

-- Display: Series Statistics Message
hkex_derivatives_premium_omd_v1_47.series_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Statistics Message
hkex_derivatives_premium_omd_v1_47.series_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Session: Uint8
  index, session = hkex_derivatives_premium_omd_v1_47.session.dissect(buffer, index, packet, parent)

  -- Open: Int32
  index, open = hkex_derivatives_premium_omd_v1_47.open.dissect(buffer, index, packet, parent)

  -- High: Int32
  index, high = hkex_derivatives_premium_omd_v1_47.high.dissect(buffer, index, packet, parent)

  -- Low: Int32
  index, low = hkex_derivatives_premium_omd_v1_47.low.dissect(buffer, index, packet, parent)

  -- Trade Report Volume: Uint64
  index, trade_report_volume = hkex_derivatives_premium_omd_v1_47.trade_report_volume.dissect(buffer, index, packet, parent)

  -- Deal Count: Uint32
  index, deal_count = hkex_derivatives_premium_omd_v1_47.deal_count.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_premium_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Turnover: Uint64
  index, turnover = hkex_derivatives_premium_omd_v1_47.turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Statistics Message
hkex_derivatives_premium_omd_v1_47.series_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.series_statistics_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.series_statistics_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.series_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.series_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.series_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 3
hkex_derivatives_premium_omd_v1_47.filler_3 = {}

-- Size: Filler 3
hkex_derivatives_premium_omd_v1_47.filler_3.size = 3

-- Display: Filler 3
hkex_derivatives_premium_omd_v1_47.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_derivatives_premium_omd_v1_47.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Trade State
hkex_derivatives_premium_omd_v1_47.trade_state = {}

-- Size: Trade State
hkex_derivatives_premium_omd_v1_47.trade_state.size = 1

-- Display: Trade State
hkex_derivatives_premium_omd_v1_47.trade_state.display = function(value)
  if value == 1 then
    return "Trade State: Given Up Trade (1)"
  end
  if value == 2 then
    return "Trade State: Rectified (2)"
  end
  if value == 3 then
    return "Trade State: Deleted (3)"
  end

  return "Trade State: Unknown("..value..")"
end

-- Dissect: Trade State
hkex_derivatives_premium_omd_v1_47.trade_state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.trade_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_state, range, value, display)

  return offset + length, value
end

-- Trade Time
hkex_derivatives_premium_omd_v1_47.trade_time = {}

-- Size: Trade Time
hkex_derivatives_premium_omd_v1_47.trade_time.size = 8

-- Display: Trade Time
hkex_derivatives_premium_omd_v1_47.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_derivatives_premium_omd_v1_47.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Quantity
hkex_derivatives_premium_omd_v1_47.trade_quantity = {}

-- Size: Trade Quantity
hkex_derivatives_premium_omd_v1_47.trade_quantity.size = 8

-- Display: Trade Quantity
hkex_derivatives_premium_omd_v1_47.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
hkex_derivatives_premium_omd_v1_47.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_quantity, range, value, display)

  return offset + length, value
end

-- Combo Group Id
hkex_derivatives_premium_omd_v1_47.combo_group_id = {}

-- Size: Combo Group Id
hkex_derivatives_premium_omd_v1_47.combo_group_id.size = 4

-- Display: Combo Group Id
hkex_derivatives_premium_omd_v1_47.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
hkex_derivatives_premium_omd_v1_47.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_derivatives_premium_omd_v1_47.trade_id = {}

-- Size: Trade Id
hkex_derivatives_premium_omd_v1_47.trade_id.size = 8

-- Display: Trade Id
hkex_derivatives_premium_omd_v1_47.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_derivatives_premium_omd_v1_47.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Amendment Message
hkex_derivatives_premium_omd_v1_47.trade_amendment_message = {}

-- Size: Trade Amendment Message
hkex_derivatives_premium_omd_v1_47.trade_amendment_message.size =
  hkex_derivatives_premium_omd_v1_47.trade_id.size + 
  hkex_derivatives_premium_omd_v1_47.combo_group_id.size + 
  hkex_derivatives_premium_omd_v1_47.price.size + 
  hkex_derivatives_premium_omd_v1_47.trade_quantity.size + 
  hkex_derivatives_premium_omd_v1_47.trade_time.size + 
  hkex_derivatives_premium_omd_v1_47.trade_state.size + 
  hkex_derivatives_premium_omd_v1_47.filler_3.size

-- Display: Trade Amendment Message
hkex_derivatives_premium_omd_v1_47.trade_amendment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amendment Message
hkex_derivatives_premium_omd_v1_47.trade_amendment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_premium_omd_v1_47.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_derivatives_premium_omd_v1_47.combo_group_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_premium_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_derivatives_premium_omd_v1_47.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_derivatives_premium_omd_v1_47.trade_time.dissect(buffer, index, packet, parent)

  -- Trade State: Uint8
  index, trade_state = hkex_derivatives_premium_omd_v1_47.trade_state.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_premium_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amendment Message
hkex_derivatives_premium_omd_v1_47.trade_amendment_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_amendment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_amendment_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.trade_amendment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.trade_amendment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.trade_amendment_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 2
hkex_derivatives_premium_omd_v1_47.filler_2 = {}

-- Size: Filler 2
hkex_derivatives_premium_omd_v1_47.filler_2.size = 2

-- Display: Filler 2
hkex_derivatives_premium_omd_v1_47.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_derivatives_premium_omd_v1_47.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Deal Info Uint 162
hkex_derivatives_premium_omd_v1_47.deal_info_uint_162 = {}

-- Size: Deal Info Uint 162
hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.size = 2

-- Display: Deal Info Uint 162
hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.display = function(value)
  return "Deal Info Uint 162: "..value
end

-- Dissect: Deal Info Uint 162
hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.deal_info_uint_162, range, value, display)

  return offset + length, value
end

-- Trade Condition
hkex_derivatives_premium_omd_v1_47.trade_condition = {}

-- Size: Trade Condition
hkex_derivatives_premium_omd_v1_47.trade_condition.size = 2

-- Display: Trade Condition
hkex_derivatives_premium_omd_v1_47.trade_condition.display = function(buffer, packet, parent)
  local display = ""

  -- Is Off Market flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Off Market|"
  end
  -- Is Buy Write flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Buy Write|"
  end
  -- Is Internal Trade Or Cross flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Internal Trade Or Cross|"
  end
  -- Is Late Trade flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Late Trade|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Condition
hkex_derivatives_premium_omd_v1_47.trade_condition.bits = function(buffer, offset, packet, parent)

  -- Unused 12: 12 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.unused_12, buffer(offset, 2))

  -- Off Market: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.off_market, buffer(offset, 2))

  -- Buy Write: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.buy_write, buffer(offset, 2))

  -- Internal Trade Or Cross: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.internal_trade_or_cross, buffer(offset, 2))

  -- Late Trade: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.late_trade, buffer(offset, 2))
end

-- Dissect: Trade Condition
hkex_derivatives_premium_omd_v1_47.trade_condition.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = hkex_derivatives_premium_omd_v1_47.trade_condition.display(range, packet, parent)
  local element = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_condition, range, display)

  if show.trade_condition then
    hkex_derivatives_premium_omd_v1_47.trade_condition.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Deal Type
hkex_derivatives_premium_omd_v1_47.deal_type = {}

-- Size: Deal Type
hkex_derivatives_premium_omd_v1_47.deal_type.size = 1

-- Display: Deal Type
hkex_derivatives_premium_omd_v1_47.deal_type.display = function(buffer, packet, parent)
  local display = ""

  -- Is Reported Trade flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Reported Trade|"
  end
  -- Is Occurred At Cross flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Occurred At Cross|"
  end
  -- Is Printable flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Printable|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Deal Type
hkex_derivatives_premium_omd_v1_47.deal_type.bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.unused_5, buffer(offset, 1))

  -- Reported Trade: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.reported_trade, buffer(offset, 1))

  -- Occurred At Cross: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.occurred_at_cross, buffer(offset, 1))

  -- Printable: 1 Bit
  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.printable, buffer(offset, 1))
end

-- Dissect: Deal Type
hkex_derivatives_premium_omd_v1_47.deal_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = hkex_derivatives_premium_omd_v1_47.deal_type.display(range, packet, parent)
  local element = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.deal_type, range, display)

  if show.deal_type then
    hkex_derivatives_premium_omd_v1_47.deal_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trade Side
hkex_derivatives_premium_omd_v1_47.trade_side = {}

-- Size: Trade Side
hkex_derivatives_premium_omd_v1_47.trade_side.size = 1

-- Display: Trade Side
hkex_derivatives_premium_omd_v1_47.trade_side.display = function(value)
  if value == 0 then
    return "Trade Side: Not Available (0)"
  end
  if value == 1 then
    return "Trade Side: Not Defined (1)"
  end
  if value == 2 then
    return "Trade Side: Buy Order (2)"
  end
  if value == 3 then
    return "Trade Side: Sell Order (3)"
  end

  return "Trade Side: Unknown("..value..")"
end

-- Dissect: Trade Side
hkex_derivatives_premium_omd_v1_47.trade_side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.trade_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.trade_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_side, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_derivatives_premium_omd_v1_47.order_id = {}

-- Size: Order Id
hkex_derivatives_premium_omd_v1_47.order_id.size = 8

-- Display: Order Id
hkex_derivatives_premium_omd_v1_47.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_derivatives_premium_omd_v1_47.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Message
hkex_derivatives_premium_omd_v1_47.trade_message = {}

-- Size: Trade Message
hkex_derivatives_premium_omd_v1_47.trade_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.order_id.size + 
  hkex_derivatives_premium_omd_v1_47.price.size + 
  hkex_derivatives_premium_omd_v1_47.trade_id.size + 
  hkex_derivatives_premium_omd_v1_47.combo_group_id.size + 
  hkex_derivatives_premium_omd_v1_47.trade_side.size + 
  hkex_derivatives_premium_omd_v1_47.deal_type.size + 
  hkex_derivatives_premium_omd_v1_47.trade_condition.size + 
  hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.size + 
  hkex_derivatives_premium_omd_v1_47.filler_2.size + 
  hkex_derivatives_premium_omd_v1_47.trade_quantity.size + 
  hkex_derivatives_premium_omd_v1_47.trade_time.size

-- Display: Trade Message
hkex_derivatives_premium_omd_v1_47.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
hkex_derivatives_premium_omd_v1_47.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_premium_omd_v1_47.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_premium_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_premium_omd_v1_47.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_derivatives_premium_omd_v1_47.combo_group_id.dissect(buffer, index, packet, parent)

  -- Trade Side: Uint8
  index, trade_side = hkex_derivatives_premium_omd_v1_47.trade_side.dissect(buffer, index, packet, parent)

  -- Deal Type: Struct of 4 fields
  index, deal_type = hkex_derivatives_premium_omd_v1_47.deal_type.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 5 fields
  index, trade_condition = hkex_derivatives_premium_omd_v1_47.trade_condition.dissect(buffer, index, packet, parent)

  -- Deal Info Uint 162: Uint16
  index, deal_info_uint_162 = hkex_derivatives_premium_omd_v1_47.deal_info_uint_162.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_premium_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_derivatives_premium_omd_v1_47.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_derivatives_premium_omd_v1_47.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
hkex_derivatives_premium_omd_v1_47.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.trade_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Ask Flag
hkex_derivatives_premium_omd_v1_47.bid_ask_flag = {}

-- Size: Bid Ask Flag
hkex_derivatives_premium_omd_v1_47.bid_ask_flag.size = 1

-- Display: Bid Ask Flag
hkex_derivatives_premium_omd_v1_47.bid_ask_flag.display = function(value)
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
hkex_derivatives_premium_omd_v1_47.bid_ask_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.bid_ask_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.bid_ask_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.bid_ask_flag, range, value, display)

  return offset + length, value
end

-- Number Of Lots
hkex_derivatives_premium_omd_v1_47.number_of_lots = {}

-- Size: Number Of Lots
hkex_derivatives_premium_omd_v1_47.number_of_lots.size = 4

-- Display: Number Of Lots
hkex_derivatives_premium_omd_v1_47.number_of_lots.display = function(value)
  return "Number Of Lots: "..value
end

-- Dissect: Number Of Lots
hkex_derivatives_premium_omd_v1_47.number_of_lots.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.number_of_lots.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.number_of_lots.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_lots, range, value, display)

  return offset + length, value
end

-- Quote Request
hkex_derivatives_premium_omd_v1_47.quote_request = {}

-- Size: Quote Request
hkex_derivatives_premium_omd_v1_47.quote_request.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.number_of_lots.size + 
  hkex_derivatives_premium_omd_v1_47.bid_ask_flag.size + 
  hkex_derivatives_premium_omd_v1_47.filler_3.size

-- Display: Quote Request
hkex_derivatives_premium_omd_v1_47.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
hkex_derivatives_premium_omd_v1_47.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Number Of Lots: Int32
  index, number_of_lots = hkex_derivatives_premium_omd_v1_47.number_of_lots.dissect(buffer, index, packet, parent)

  -- Bid Ask Flag: Uint8
  index, bid_ask_flag = hkex_derivatives_premium_omd_v1_47.bid_ask_flag.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_premium_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
hkex_derivatives_premium_omd_v1_47.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.quote_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.quote_request, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Update Action
hkex_derivatives_premium_omd_v1_47.update_action = {}

-- Size: Update Action
hkex_derivatives_premium_omd_v1_47.update_action.size = 1

-- Display: Update Action
hkex_derivatives_premium_omd_v1_47.update_action.display = function(value)
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
hkex_derivatives_premium_omd_v1_47.update_action.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.update_action, range, value, display)

  return offset + length, value
end

-- Price Level
hkex_derivatives_premium_omd_v1_47.price_level = {}

-- Size: Price Level
hkex_derivatives_premium_omd_v1_47.price_level.size = 1

-- Display: Price Level
hkex_derivatives_premium_omd_v1_47.price_level.display = function(value)
  return "Price Level: "..value
end

-- Dissect: Price Level
hkex_derivatives_premium_omd_v1_47.price_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.price_level, range, value, display)

  return offset + length, value
end

-- Side
hkex_derivatives_premium_omd_v1_47.side = {}

-- Size: Side
hkex_derivatives_premium_omd_v1_47.side.size = 1

-- Display: Side
hkex_derivatives_premium_omd_v1_47.side.display = function(value)
  if value == 1 then
    return "Side: Bid (1)"
  end
  if value == 2 then
    return "Side: Offer (2)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_derivatives_premium_omd_v1_47.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.side, range, value, display)

  return offset + length, value
end

-- Number Of Orders
hkex_derivatives_premium_omd_v1_47.number_of_orders = {}

-- Size: Number Of Orders
hkex_derivatives_premium_omd_v1_47.number_of_orders.size = 4

-- Display: Number Of Orders
hkex_derivatives_premium_omd_v1_47.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
hkex_derivatives_premium_omd_v1_47.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Aggregate Quantity
hkex_derivatives_premium_omd_v1_47.aggregate_quantity = {}

-- Size: Aggregate Quantity
hkex_derivatives_premium_omd_v1_47.aggregate_quantity.size = 8

-- Display: Aggregate Quantity
hkex_derivatives_premium_omd_v1_47.aggregate_quantity.display = function(value)
  return "Aggregate Quantity: "..value
end

-- Dissect: Aggregate Quantity
hkex_derivatives_premium_omd_v1_47.aggregate_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.aggregate_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.aggregate_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.aggregate_quantity, range, value, display)

  return offset + length, value
end

-- Book Entry
hkex_derivatives_premium_omd_v1_47.book_entry = {}

-- Size: Book Entry
hkex_derivatives_premium_omd_v1_47.book_entry.size =
  hkex_derivatives_premium_omd_v1_47.aggregate_quantity.size + 
  hkex_derivatives_premium_omd_v1_47.price.size + 
  hkex_derivatives_premium_omd_v1_47.number_of_orders.size + 
  hkex_derivatives_premium_omd_v1_47.side.size + 
  hkex_derivatives_premium_omd_v1_47.filler_1.size + 
  hkex_derivatives_premium_omd_v1_47.price_level.size + 
  hkex_derivatives_premium_omd_v1_47.update_action.size + 
  hkex_derivatives_premium_omd_v1_47.filler_4.size

-- Display: Book Entry
hkex_derivatives_premium_omd_v1_47.book_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry
hkex_derivatives_premium_omd_v1_47.book_entry.fields = function(buffer, offset, packet, parent, book_entry_index)
  local index = offset

  -- Implicit Book Entry Index
  if book_entry_index ~= nil then
    local iteration = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.book_entry_index, book_entry_index)
    iteration:set_generated()
  end

  -- Aggregate Quantity: Uint64
  index, aggregate_quantity = hkex_derivatives_premium_omd_v1_47.aggregate_quantity.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_premium_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Uint32
  index, number_of_orders = hkex_derivatives_premium_omd_v1_47.number_of_orders.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_premium_omd_v1_47.side.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_premium_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  -- Price Level: Uint8
  index, price_level = hkex_derivatives_premium_omd_v1_47.price_level.dissect(buffer, index, packet, parent)

  -- Update Action: Uint8
  index, update_action = hkex_derivatives_premium_omd_v1_47.update_action.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_derivatives_premium_omd_v1_47.filler_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry
hkex_derivatives_premium_omd_v1_47.book_entry.dissect = function(buffer, offset, packet, parent, book_entry_index)
  if show.book_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.book_entry, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.book_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
  end
end

-- No Entries
hkex_derivatives_premium_omd_v1_47.no_entries = {}

-- Size: No Entries
hkex_derivatives_premium_omd_v1_47.no_entries.size = 1

-- Display: No Entries
hkex_derivatives_premium_omd_v1_47.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
hkex_derivatives_premium_omd_v1_47.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.no_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Aggregate Order Book Update Message
hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message = {}

-- Calculate size of: Aggregate Order Book Update Message
hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_derivatives_premium_omd_v1_47.orderbook_id.size

  index = index + hkex_derivatives_premium_omd_v1_47.filler_3.size

  index = index + hkex_derivatives_premium_omd_v1_47.no_entries.size

  -- Calculate field size from count
  local book_entry_count = buffer(offset + index - 1, 1):le_uint()
  index = index + book_entry_count * 24

  return index
end

-- Display: Aggregate Order Book Update Message
hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggregate Order Book Update Message
hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_premium_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  -- No Entries: Uint8
  index, no_entries = hkex_derivatives_premium_omd_v1_47.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Book Entry
  for book_entry_index = 1, no_entries do
    index, book_entry = hkex_derivatives_premium_omd_v1_47.book_entry.dissect(buffer, index, packet, parent, book_entry_index)
  end

  return index
end

-- Dissect: Aggregate Order Book Update Message
hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.aggregate_order_book_update_message then
    local length = hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.aggregate_order_book_update_message, range, display)
  end

  return hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.fields(buffer, offset, packet, parent)
end

-- Locked
hkex_derivatives_premium_omd_v1_47.locked = {}

-- Size: Locked
hkex_derivatives_premium_omd_v1_47.locked.size = 1

-- Display: Locked
hkex_derivatives_premium_omd_v1_47.locked.display = function(value)
  if value == Y then
    return "Locked: Yes (Y)"
  end
  if value == N then
    return "Locked: No (N)"
  end

  return "Locked: Unknown("..value..")"
end

-- Dissect: Locked
hkex_derivatives_premium_omd_v1_47.locked.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.locked.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.locked.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.locked, range, value, display)

  return offset + length, value
end

-- Suspended
hkex_derivatives_premium_omd_v1_47.suspended = {}

-- Size: Suspended
hkex_derivatives_premium_omd_v1_47.suspended.size = 1

-- Display: Suspended
hkex_derivatives_premium_omd_v1_47.suspended.display = function(value)
  if value == "Y" then
    return "Suspended: Yes (Y)"
  end
  if value == "N" then
    return "Suspended: No (N)"
  end

  return "Suspended: Unknown("..value..")"
end

-- Dissect: Suspended
hkex_derivatives_premium_omd_v1_47.suspended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.suspended, range, value, display)

  return offset + length, value
end

-- Commodity Code
hkex_derivatives_premium_omd_v1_47.commodity_code = {}

-- Size: Commodity Code
hkex_derivatives_premium_omd_v1_47.commodity_code.size = 2

-- Display: Commodity Code
hkex_derivatives_premium_omd_v1_47.commodity_code.display = function(value)
  return "Commodity Code: "..value
end

-- Dissect: Commodity Code
hkex_derivatives_premium_omd_v1_47.commodity_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.commodity_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.commodity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_code, range, value, display)

  return offset + length, value
end

-- Commodity Status Message
hkex_derivatives_premium_omd_v1_47.commodity_status_message = {}

-- Size: Commodity Status Message
hkex_derivatives_premium_omd_v1_47.commodity_status_message.size =
  hkex_derivatives_premium_omd_v1_47.commodity_code.size + 
  hkex_derivatives_premium_omd_v1_47.suspended.size + 
  hkex_derivatives_premium_omd_v1_47.locked.size

-- Display: Commodity Status Message
hkex_derivatives_premium_omd_v1_47.commodity_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Status Message
hkex_derivatives_premium_omd_v1_47.commodity_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_premium_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Suspended: String
  index, suspended = hkex_derivatives_premium_omd_v1_47.suspended.dissect(buffer, index, packet, parent)

  -- Locked: Uint8
  index, locked = hkex_derivatives_premium_omd_v1_47.locked.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Status Message
hkex_derivatives_premium_omd_v1_47.commodity_status_message.dissect = function(buffer, offset, packet, parent)
  if show.commodity_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_status_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.commodity_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.commodity_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.commodity_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Status
hkex_derivatives_premium_omd_v1_47.series_status = {}

-- Size: Series Status
hkex_derivatives_premium_omd_v1_47.series_status.size = 1

-- Display: Series Status
hkex_derivatives_premium_omd_v1_47.series_status.display = function(value)
  if value == 0 then
    return "Series Status: Not Available (0)"
  end
  if value == 1 then
    return "Series Status: Active (1)"
  end
  if value == 2 then
    return "Series Status: Suspended (2)"
  end
  if value == 3 then
    return "Series Status: Issued (3)"
  end
  if value == 4 then
    return "Series Status: Delisted (4)"
  end
  if value == 5 then
    return "Series Status: Locked (5)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
hkex_derivatives_premium_omd_v1_47.series_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.series_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.series_status, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_derivatives_premium_omd_v1_47.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_derivatives_premium_omd_v1_47.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_derivatives_premium_omd_v1_47.suspension_indicator.display = function(value)
  if value == 1 then
    return "Suspension Indicator: Suspended For Trading (1)"
  end
  if value == 2 then
    return "Suspension Indicator: Not Suspended (2)"
  end
  if value == 3 then
    return "Suspension Indicator: Locked (3)"
  end

  return "Suspension Indicator: Unknown("..value..")"
end

-- Dissect: Suspension Indicator
hkex_derivatives_premium_omd_v1_47.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Series Status Message
hkex_derivatives_premium_omd_v1_47.series_status_message = {}

-- Size: Series Status Message
hkex_derivatives_premium_omd_v1_47.series_status_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.suspension_indicator.size + 
  hkex_derivatives_premium_omd_v1_47.series_status.size + 
  hkex_derivatives_premium_omd_v1_47.filler_2.size

-- Display: Series Status Message
hkex_derivatives_premium_omd_v1_47.series_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Status Message
hkex_derivatives_premium_omd_v1_47.series_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_derivatives_premium_omd_v1_47.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: Uint8
  index, series_status = hkex_derivatives_premium_omd_v1_47.series_status.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_premium_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Status Message
hkex_derivatives_premium_omd_v1_47.series_status_message.dissect = function(buffer, offset, packet, parent)
  if show.series_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.series_status_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.series_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.series_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.series_status_message.fields(buffer, offset, packet, parent)
  end
end

-- State
hkex_derivatives_premium_omd_v1_47.state = {}

-- Size: State
hkex_derivatives_premium_omd_v1_47.state.size = 2

-- Display: State
hkex_derivatives_premium_omd_v1_47.state.display = function(value)
  if value == 1 then
    return "State: Open Allocation (1)"
  end
  if value == 2 then
    return "State: Market Closed (2)"
  end
  if value == 3 then
    return "State: Market Open (3)"
  end
  if value == 4 then
    return "State: Preopen Session (4)"
  end
  if value == 5 then
    return "State: Preopen Allocation Session (5)"
  end
  if value == 6 then
    return "State: Market Pause (6)"
  end
  if value == 7 then
    return "State: Premarket Activities (7)"
  end
  if value == 8 then
    return "State: Clearing Session Started (8)"
  end
  if value == 9 then
    return "State: Clearing Session Closed (9)"
  end
  if value == 10 then
    return "State: Ahft Market Closed (10)"
  end
  if value == 11 then
    return "State: Ahft Reset Price Information (11)"
  end
  if value == 12 then
    return "State: Ahft Inactive Non Order (12)"
  end
  if value == 13 then
    return "State: Ahft Reset Price Information For Next Business Day (13)"
  end
  if value == 14 then
    return "State: Ahft Market Open (14)"
  end
  if value == 15 then
    return "State: Ahft Market Open Price Limit (15)"
  end
  if value == 16 then
    return "State: Ahft Premarket Activities (16)"
  end
  if value == 17 then
    return "State: Market Open With Price Controls (17)"
  end
  if value == 18 then
    return "State: Market Closed Today (18)"
  end
  if value == 19 then
    return "State: Market Open With Dynamic Price Banding Mechanism (19)"
  end
  if value == 20 then
    return "State: Site Failover (20)"
  end
  if value == 21 then
    return "State: Market Closed Today E (21)"
  end
  if value == 22 then
    return "State: Ahft Market Closed E (22)"
  end
  if value == 23 then
    return "State: Market Open With Dpbm And Vcm (23)"
  end
  if value == 24 then
    return "State: Market Open With Vcm (24)"
  end
  if value == 25 then
    return "State: Vcm Cool Off Status With Dynamic Price Banding Mechansim (25)"
  end
  if value == 26 then
    return "State: Vcm Cool Off Status (26)"
  end
  if value == 27 then
    return "State: Reset Counter For Vcm (27)"
  end
  if value == 28 then
    return "State: Halt (28)"
  end
  if value == 29 then
    return "State: Reset Price Information (29)"
  end
  if value == 30 then
    return "State: Block Trade Only (30)"
  end

  return "State: Unknown("..value..")"
end

-- Dissect: State
hkex_derivatives_premium_omd_v1_47.state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.state, range, value, display)

  return offset + length, value
end

-- Seconds To State Change
hkex_derivatives_premium_omd_v1_47.seconds_to_state_change = {}

-- Size: Seconds To State Change
hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.size = 2

-- Display: Seconds To State Change
hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.display = function(value)
  return "Seconds To State Change: "..value
end

-- Dissect: Seconds To State Change
hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.seconds_to_state_change, range, value, display)

  return offset + length, value
end

-- Planned Start Time
hkex_derivatives_premium_omd_v1_47.planned_start_time = {}

-- Size: Planned Start Time
hkex_derivatives_premium_omd_v1_47.planned_start_time.size = 6

-- Display: Planned Start Time
hkex_derivatives_premium_omd_v1_47.planned_start_time.display = function(value)
  return "Planned Start Time: "..value
end

-- Dissect: Planned Start Time
hkex_derivatives_premium_omd_v1_47.planned_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.planned_start_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.planned_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.planned_start_time, range, value, display)

  return offset + length, value
end

-- Planned Start Date
hkex_derivatives_premium_omd_v1_47.planned_start_date = {}

-- Size: Planned Start Date
hkex_derivatives_premium_omd_v1_47.planned_start_date.size = 8

-- Display: Planned Start Date
hkex_derivatives_premium_omd_v1_47.planned_start_date.display = function(value)
  return "Planned Start Date: "..value
end

-- Dissect: Planned Start Date
hkex_derivatives_premium_omd_v1_47.planned_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.planned_start_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.planned_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.planned_start_date, range, value, display)

  return offset + length, value
end

-- Actual Start Time
hkex_derivatives_premium_omd_v1_47.actual_start_time = {}

-- Size: Actual Start Time
hkex_derivatives_premium_omd_v1_47.actual_start_time.size = 6

-- Display: Actual Start Time
hkex_derivatives_premium_omd_v1_47.actual_start_time.display = function(value)
  return "Actual Start Time: "..value
end

-- Dissect: Actual Start Time
hkex_derivatives_premium_omd_v1_47.actual_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.actual_start_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.actual_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.actual_start_time, range, value, display)

  return offset + length, value
end

-- Actual Start Date
hkex_derivatives_premium_omd_v1_47.actual_start_date = {}

-- Size: Actual Start Date
hkex_derivatives_premium_omd_v1_47.actual_start_date.size = 8

-- Display: Actual Start Date
hkex_derivatives_premium_omd_v1_47.actual_start_date.display = function(value)
  return "Actual Start Date: "..value
end

-- Dissect: Actual Start Date
hkex_derivatives_premium_omd_v1_47.actual_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.actual_start_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.actual_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.actual_start_date, range, value, display)

  return offset + length, value
end

-- Instrument Group
hkex_derivatives_premium_omd_v1_47.instrument_group = {}

-- Size: Instrument Group
hkex_derivatives_premium_omd_v1_47.instrument_group.size = 1

-- Display: Instrument Group
hkex_derivatives_premium_omd_v1_47.instrument_group.display = function(value)
  if value == 4 then
    return "Instrument Group: Futures (4)"
  end
  if value == 6 then
    return "Instrument Group: American Style Call (6)"
  end
  if value == 7 then
    return "Instrument Group: American Style Put (7)"
  end
  if value == 22 then
    return "Instrument Group: European Style Call (22)"
  end
  if value == 23 then
    return "Instrument Group: European Style Put (23)"
  end
  if value == 170 then
    return "Instrument Group: Options Straddle (170)"
  end
  if value == 171 then
    return "Instrument Group: Options Strangle (171)"
  end
  if value == 172 then
    return "Instrument Group: Synthetic Futures (172)"
  end
  if value == 201 then
    return "Instrument Group: Time Spread Level 1 (201)"
  end
  if value == 202 then
    return "Instrument Group: Time Spread Level 2 (202)"
  end
  if value == 203 then
    return "Instrument Group: Time Spread Level 3 (203)"
  end
  if value == 204 then
    return "Instrument Group: Time Spread Level 4 (204)"
  end
  if value == 205 then
    return "Instrument Group: Time Spread Level 5 (205)"
  end
  if value == 206 then
    return "Instrument Group: Time Spread Level 6 (206)"
  end
  if value == 207 then
    return "Instrument Group: Time Spread Level 7 (207)"
  end
  if value == 208 then
    return "Instrument Group: Time Spread Level 8 (208)"
  end
  if value == 209 then
    return "Instrument Group: Time Spread Level 9 (209)"
  end
  if value == 210 then
    return "Instrument Group: Time Spread Level 10 (210)"
  end
  if value == 211 then
    return "Instrument Group: Time Spread Level 11 (211)"
  end
  if value == 212 then
    return "Instrument Group: Time Spread Level 12 (212)"
  end
  if value == 213 then
    return "Instrument Group: Time Spread Level 13 (213)"
  end
  if value == 214 then
    return "Instrument Group: Time Spread Level 14 (214)"
  end
  if value == 215 then
    return "Instrument Group: Time Spread Level 15 (215)"
  end
  if value == 216 then
    return "Instrument Group: Time Spread Level 16 (216)"
  end
  if value == 217 then
    return "Instrument Group: Time Spread Level 17 (217)"
  end
  if value == 218 then
    return "Instrument Group: Time Spread Level 18 (218)"
  end
  if value == 219 then
    return "Instrument Group: Time Spread Level 19 (219)"
  end
  if value == 220 then
    return "Instrument Group: Time Spread Level 20 (220)"
  end
  if value == 221 then
    return "Instrument Group: Time Spread Level 21 (221)"
  end
  if value == 222 then
    return "Instrument Group: Time Spread Level 22 (222)"
  end
  if value == 223 then
    return "Instrument Group: Time Spread Level 23 (223)"
  end
  if value == 250 then
    return "Instrument Group: Tailor Made Combination (250)"
  end
  if value == 254 then
    return "Instrument Group: Exchange Rate (254)"
  end
  if value == 255 then
    return "Instrument Group: Payment Currency (255)"
  end

  return "Instrument Group: Unknown("..value..")"
end

-- Dissect: Instrument Group
hkex_derivatives_premium_omd_v1_47.instrument_group.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.instrument_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.instrument_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_group, range, value, display)

  return offset + length, value
end

-- Market
hkex_derivatives_premium_omd_v1_47.market = {}

-- Size: Market
hkex_derivatives_premium_omd_v1_47.market.size = 1

-- Display: Market
hkex_derivatives_premium_omd_v1_47.market.display = function(value)
  if value == 1 then
    return "Market: Cesc Index Futures Options (1)"
  end
  if value == 2 then
    return "Market: Stock Futures (2)"
  end
  if value == 3 then
    return "Market: Three Year Exchange Fund Note Futures (3)"
  end
  if value == 16 then
    return "Market: Mini Hang Seng Index Futures Options (16)"
  end
  if value == 18 then
    return "Market: Weekly Stock Options (18)"
  end
  if value == 20 then
    return "Market: Stock Options (20)"
  end
  if value == 24 then
    return "Market: Hibor (24)"
  end
  if value == 27 then
    return "Market: Dividend Futures (27)"
  end
  if value == 32 then
    return "Market: Physically Settled Options On Futures Contracts On Hang Seng Index Futures (32)"
  end
  if value == 34 then
    return "Market: Hang Seng Index Futures Options (34)"
  end
  if value == 35 then
    return "Market: Flexible Hang Seng Index Options (35)"
  end
  if value == 37 then
    return "Market: Flexible Hang Seng China Enterprises Index Options (37)"
  end
  if value == 38 then
    return "Market: Hang Seng China Enterprises Index Futures Options (38)"
  end
  if value == 39 then
    return "Market: Weekly Hang Seng Index Options (39)"
  end
  if value == 40 then
    return "Market: Physically Settled Options On Futures Contracts On Hang Seng China Enterprises Index Futures (40)"
  end
  if value == 51 then
    return "Market: Hsi Volatility Index Futures (51)"
  end
  if value == 60 then
    return "Market: Sector Index Futures (60)"
  end
  if value == 70 then
    return "Market: Renminbi Currency Futures Options (70)"
  end
  if value == 80 then
    return "Market: Hang Seng Biotech Index Futures (80)"
  end
  if value == 83 then
    return "Market: Physically Settled Options On Futures Contracts On Hang Seng Tech Index Futures Options (83)"
  end
  if value == 84 then
    return "Market: Weekly Hang Seng Tech Index Options (84)"
  end
  if value == 86 then
    return "Market: Hang Seng Tech Index Futures And Options And Hang Seng Index (86)"
  end
  if value == 87 then
    return "Market: Weekly Hang Seng China Enterprises Index Options (87)"
  end
  if value == 93 then
    return "Market: Ibovespa Index Futures (93)"
  end
  if value == 96 then
    return "Market: Sp Bse Sensex Index Futures (96)"
  end
  if value == 99 then
    return "Market: Ftse Or Jse Top 40 Index Futures (99)"
  end
  if value == 102 then
    return "Market: Micex Index Futures (102)"
  end
  if value == 108 then
    return "Market: Msci Ax J Futures (108)"
  end
  if value == 111 then
    return "Market: Physically Settled Usd Silver Futures (111)"
  end
  if value == 112 then
    return "Market: Physically Settled Cnh Silver Futures (112)"
  end
  if value == 115 then
    return "Market: Physically Settled Cnh Gold Futures (115)"
  end
  if value == 116 then
    return "Market: Physically Settled Usd Gold Futures (116)"
  end
  if value == 117 then
    return "Market: Mof T Bond Futures (117)"
  end
  if value == 118 then
    return "Market: Usd Base And Ferrous Futures (118)"
  end
  if value == 120 then
    return "Market: Cnh London Metal Mini Futures (120)"
  end
  if value == 122 then
    return "Market: Cash Settled Rmb Currency Futures (122)"
  end
  if value == 125 then
    return "Market: Cash Settled Cnhusd Futures (125)"
  end
  if value == 153 then
    return "Market: Msci China A 50 Connect Index Futures (153)"
  end
  if value == 160 then
    return "Market: Msci Jpy Index Futures (160)"
  end
  if value == 161 then
    return "Market: Msci Usd Index Futures Ntr (161)"
  end
  if value == 163 then
    return "Market: Msci Usd Index Futures And Options 1 (163)"
  end
  if value == 164 then
    return "Market: Msci Usd Index Futures And Options 2 (164)"
  end
  if value == 166 then
    return "Market: Msci Usd Index Futures And Options 3 (166)"
  end
  if value == 168 then
    return "Market: Msci Usd Index Futures And Options 4 (168)"
  end
  if value == 170 then
    return "Market: Msci Sgd Index Futures (170)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
hkex_derivatives_premium_omd_v1_47.market.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.market, range, value, display)

  return offset + length, value
end

-- State Level
hkex_derivatives_premium_omd_v1_47.state_level = {}

-- Size: State Level
hkex_derivatives_premium_omd_v1_47.state_level.size = 2

-- Display: State Level
hkex_derivatives_premium_omd_v1_47.state_level.display = function(value)
  if value == 1 then
    return "State Level: Market (1)"
  end
  if value == 2 then
    return "State Level: Instrument Type (2)"
  end
  if value == 3 then
    return "State Level: Instrument Class (3)"
  end
  if value == 4 then
    return "State Level: Instrument Series (4)"
  end
  if value == 5 then
    return "State Level: Underlying (5)"
  end
  if value == 99 then
    return "State Level: End Of Business Day (99)"
  end

  return "State Level: Unknown("..value..")"
end

-- Dissect: State Level
hkex_derivatives_premium_omd_v1_47.state_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.state_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.state_level, range, value, display)

  return offset + length, value
end

-- Market Status Message
hkex_derivatives_premium_omd_v1_47.market_status_message = {}

-- Size: Market Status Message
hkex_derivatives_premium_omd_v1_47.market_status_message.size =
  hkex_derivatives_premium_omd_v1_47.state_level.size + 
  hkex_derivatives_premium_omd_v1_47.market.size + 
  hkex_derivatives_premium_omd_v1_47.instrument_group.size + 
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.commodity_code.size + 
  hkex_derivatives_premium_omd_v1_47.filler_2.size + 
  hkex_derivatives_premium_omd_v1_47.actual_start_date.size + 
  hkex_derivatives_premium_omd_v1_47.actual_start_time.size + 
  hkex_derivatives_premium_omd_v1_47.planned_start_date.size + 
  hkex_derivatives_premium_omd_v1_47.planned_start_time.size + 
  hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.size + 
  hkex_derivatives_premium_omd_v1_47.state.size + 
  hkex_derivatives_premium_omd_v1_47.priority.size + 
  hkex_derivatives_premium_omd_v1_47.filler_3.size

-- Display: Market Status Message
hkex_derivatives_premium_omd_v1_47.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
hkex_derivatives_premium_omd_v1_47.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- State Level: Uint16
  index, state_level = hkex_derivatives_premium_omd_v1_47.state_level.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_derivatives_premium_omd_v1_47.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_derivatives_premium_omd_v1_47.instrument_group.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_premium_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_premium_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  -- Actual Start Date: String
  index, actual_start_date = hkex_derivatives_premium_omd_v1_47.actual_start_date.dissect(buffer, index, packet, parent)

  -- Actual Start Time: String
  index, actual_start_time = hkex_derivatives_premium_omd_v1_47.actual_start_time.dissect(buffer, index, packet, parent)

  -- Planned Start Date: String
  index, planned_start_date = hkex_derivatives_premium_omd_v1_47.planned_start_date.dissect(buffer, index, packet, parent)

  -- Planned Start Time: String
  index, planned_start_time = hkex_derivatives_premium_omd_v1_47.planned_start_time.dissect(buffer, index, packet, parent)

  -- Seconds To State Change: Uint16
  index, seconds_to_state_change = hkex_derivatives_premium_omd_v1_47.seconds_to_state_change.dissect(buffer, index, packet, parent)

  -- State: Uint16
  index, state = hkex_derivatives_premium_omd_v1_47.state.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_derivatives_premium_omd_v1_47.priority.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_premium_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
hkex_derivatives_premium_omd_v1_47.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.market_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.market_status_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
hkex_derivatives_premium_omd_v1_47.leg_ratio = {}

-- Size: Leg Ratio
hkex_derivatives_premium_omd_v1_47.leg_ratio.size = 4

-- Display: Leg Ratio
hkex_derivatives_premium_omd_v1_47.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
hkex_derivatives_premium_omd_v1_47.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
hkex_derivatives_premium_omd_v1_47.leg_side = {}

-- Size: Leg Side
hkex_derivatives_premium_omd_v1_47.leg_side.size = 1

-- Display: Leg Side
hkex_derivatives_premium_omd_v1_47.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end
  if value == "2" then
    return "Leg Side: Net Value (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
hkex_derivatives_premium_omd_v1_47.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Orderbook Id
hkex_derivatives_premium_omd_v1_47.leg_orderbook_id = {}

-- Size: Leg Orderbook Id
hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.size = 4

-- Display: Leg Orderbook Id
hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.display = function(value)
  return "Leg Orderbook Id: "..value
end

-- Dissect: Leg Orderbook Id
hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.leg_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combo Orderbook Id
hkex_derivatives_premium_omd_v1_47.combo_orderbook_id = {}

-- Size: Combo Orderbook Id
hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.size = 4

-- Display: Combo Orderbook Id
hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.display = function(value)
  return "Combo Orderbook Id: "..value
end

-- Dissect: Combo Orderbook Id
hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.combo_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combination Definition Message
hkex_derivatives_premium_omd_v1_47.combination_definition_message = {}

-- Size: Combination Definition Message
hkex_derivatives_premium_omd_v1_47.combination_definition_message.size =
  hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.filler_3.size + 
  hkex_derivatives_premium_omd_v1_47.leg_side.size + 
  hkex_derivatives_premium_omd_v1_47.leg_ratio.size

-- Display: Combination Definition Message
hkex_derivatives_premium_omd_v1_47.combination_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Definition Message
hkex_derivatives_premium_omd_v1_47.combination_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Combo Orderbook Id: Uint32
  index, combo_orderbook_id = hkex_derivatives_premium_omd_v1_47.combo_orderbook_id.dissect(buffer, index, packet, parent)

  -- Leg Orderbook Id: Uint32
  index, leg_orderbook_id = hkex_derivatives_premium_omd_v1_47.leg_orderbook_id.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_premium_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  -- Leg Side: String
  index, leg_side = hkex_derivatives_premium_omd_v1_47.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Int32
  index, leg_ratio = hkex_derivatives_premium_omd_v1_47.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Definition Message
hkex_derivatives_premium_omd_v1_47.combination_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.combination_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.combination_definition_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.combination_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.combination_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.combination_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Date Time First Trading
hkex_derivatives_premium_omd_v1_47.date_time_first_trading = {}

-- Size: Date Time First Trading
hkex_derivatives_premium_omd_v1_47.date_time_first_trading.size = 8

-- Display: Date Time First Trading
hkex_derivatives_premium_omd_v1_47.date_time_first_trading.display = function(value)
  return "Date Time First Trading: "..value
end

-- Dissect: Date Time First Trading
hkex_derivatives_premium_omd_v1_47.date_time_first_trading.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.date_time_first_trading.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_premium_omd_v1_47.date_time_first_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.date_time_first_trading, range, value, display)

  return offset + length, value
end

-- Date Time Last Trading
hkex_derivatives_premium_omd_v1_47.date_time_last_trading = {}

-- Size: Date Time Last Trading
hkex_derivatives_premium_omd_v1_47.date_time_last_trading.size = 8

-- Display: Date Time Last Trading
hkex_derivatives_premium_omd_v1_47.date_time_last_trading.display = function(value)
  return "Date Time Last Trading: "..value
end

-- Dissect: Date Time Last Trading
hkex_derivatives_premium_omd_v1_47.date_time_last_trading.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.date_time_last_trading.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_premium_omd_v1_47.date_time_last_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.date_time_last_trading, range, value, display)

  return offset + length, value
end

-- Effective Exp Date
hkex_derivatives_premium_omd_v1_47.effective_exp_date = {}

-- Size: Effective Exp Date
hkex_derivatives_premium_omd_v1_47.effective_exp_date.size = 8

-- Display: Effective Exp Date
hkex_derivatives_premium_omd_v1_47.effective_exp_date.display = function(value)
  return "Effective Exp Date: "..value
end

-- Dissect: Effective Exp Date
hkex_derivatives_premium_omd_v1_47.effective_exp_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.effective_exp_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.effective_exp_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.effective_exp_date, range, value, display)

  return offset + length, value
end

-- Price Method
hkex_derivatives_premium_omd_v1_47.price_method = {}

-- Size: Price Method
hkex_derivatives_premium_omd_v1_47.price_method.size = 1

-- Display: Price Method
hkex_derivatives_premium_omd_v1_47.price_method.display = function(value)
  if value == 0 then
    return "Price Method: Not Available (0)"
  end
  if value == 1 then
    return "Price Method: Net Price (1)"
  end
  if value == 2 then
    return "Price Method: Net Value (2)"
  end

  return "Price Method: Unknown("..value..")"
end

-- Dissect: Price Method
hkex_derivatives_premium_omd_v1_47.price_method.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.price_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.price_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.price_method, range, value, display)

  return offset + length, value
end

-- Price Quotation Factor
hkex_derivatives_premium_omd_v1_47.price_quotation_factor = {}

-- Size: Price Quotation Factor
hkex_derivatives_premium_omd_v1_47.price_quotation_factor.size = 4

-- Display: Price Quotation Factor
hkex_derivatives_premium_omd_v1_47.price_quotation_factor.display = function(value)
  return "Price Quotation Factor: "..value
end

-- Dissect: Price Quotation Factor
hkex_derivatives_premium_omd_v1_47.price_quotation_factor.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.price_quotation_factor.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.price_quotation_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.price_quotation_factor, range, value, display)

  return offset + length, value
end

-- Effective Tomorrow
hkex_derivatives_premium_omd_v1_47.effective_tomorrow = {}

-- Size: Effective Tomorrow
hkex_derivatives_premium_omd_v1_47.effective_tomorrow.size = 1

-- Display: Effective Tomorrow
hkex_derivatives_premium_omd_v1_47.effective_tomorrow.display = function(value)
  if value == 0 then
    return "Effective Tomorrow: False (0)"
  end
  if value == 1 then
    return "Effective Tomorrow: True (1)"
  end

  return "Effective Tomorrow: Unknown("..value..")"
end

-- Dissect: Effective Tomorrow
hkex_derivatives_premium_omd_v1_47.effective_tomorrow.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.effective_tomorrow.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.effective_tomorrow.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.effective_tomorrow, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_derivatives_premium_omd_v1_47.isin_code = {}

-- Size: Isin Code
hkex_derivatives_premium_omd_v1_47.isin_code.size = 12

-- Display: Isin Code
hkex_derivatives_premium_omd_v1_47.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_derivatives_premium_omd_v1_47.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.isin_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Contract Size Extended
hkex_derivatives_premium_omd_v1_47.contract_size_extended = {}

-- Size: Contract Size Extended
hkex_derivatives_premium_omd_v1_47.contract_size_extended.size = 8

-- Display: Contract Size Extended
hkex_derivatives_premium_omd_v1_47.contract_size_extended.display = function(value)
  return "Contract Size Extended: "..value
end

-- Dissect: Contract Size Extended
hkex_derivatives_premium_omd_v1_47.contract_size_extended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.contract_size_extended.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_premium_omd_v1_47.contract_size_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.contract_size_extended, range, value, display)

  return offset + length, value
end

-- Strike Price
hkex_derivatives_premium_omd_v1_47.strike_price = {}

-- Size: Strike Price
hkex_derivatives_premium_omd_v1_47.strike_price.size = 4

-- Display: Strike Price
hkex_derivatives_premium_omd_v1_47.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
hkex_derivatives_premium_omd_v1_47.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiry Date
hkex_derivatives_premium_omd_v1_47.expiry_date = {}

-- Size: Expiry Date
hkex_derivatives_premium_omd_v1_47.expiry_date.size = 2

-- Display: Expiry Date
hkex_derivatives_premium_omd_v1_47.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
hkex_derivatives_premium_omd_v1_47.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Modifier
hkex_derivatives_premium_omd_v1_47.modifier = {}

-- Size: Modifier
hkex_derivatives_premium_omd_v1_47.modifier.size = 1

-- Display: Modifier
hkex_derivatives_premium_omd_v1_47.modifier.display = function(value)
  return "Modifier: "..value
end

-- Dissect: Modifier
hkex_derivatives_premium_omd_v1_47.modifier.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.modifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.modifier, range, value, display)

  return offset + length, value
end

-- Country
hkex_derivatives_premium_omd_v1_47.country = {}

-- Size: Country
hkex_derivatives_premium_omd_v1_47.country.size = 1

-- Display: Country
hkex_derivatives_premium_omd_v1_47.country.display = function(value)
  return "Country: "..value
end

-- Dissect: Country
hkex_derivatives_premium_omd_v1_47.country.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.country.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.country.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.country, range, value, display)

  return offset + length, value
end

-- Symbol
hkex_derivatives_premium_omd_v1_47.symbol = {}

-- Size: Symbol
hkex_derivatives_premium_omd_v1_47.symbol.size = 32

-- Display: Symbol
hkex_derivatives_premium_omd_v1_47.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
hkex_derivatives_premium_omd_v1_47.symbol.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.symbol, range, value, display)

  return offset + length, value
end

-- Series Definition Extended Message
hkex_derivatives_premium_omd_v1_47.series_definition_extended_message = {}

-- Size: Series Definition Extended Message
hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.symbol.size + 
  hkex_derivatives_premium_omd_v1_47.country.size + 
  hkex_derivatives_premium_omd_v1_47.market.size + 
  hkex_derivatives_premium_omd_v1_47.instrument_group.size + 
  hkex_derivatives_premium_omd_v1_47.modifier.size + 
  hkex_derivatives_premium_omd_v1_47.commodity_code.size + 
  hkex_derivatives_premium_omd_v1_47.expiry_date.size + 
  hkex_derivatives_premium_omd_v1_47.strike_price.size + 
  hkex_derivatives_premium_omd_v1_47.contract_size_extended.size + 
  hkex_derivatives_premium_omd_v1_47.isin_code.size + 
  hkex_derivatives_premium_omd_v1_47.series_status.size + 
  hkex_derivatives_premium_omd_v1_47.effective_tomorrow.size + 
  hkex_derivatives_premium_omd_v1_47.price_quotation_factor.size + 
  hkex_derivatives_premium_omd_v1_47.price_method.size + 
  hkex_derivatives_premium_omd_v1_47.filler_1.size + 
  hkex_derivatives_premium_omd_v1_47.effective_exp_date.size + 
  hkex_derivatives_premium_omd_v1_47.date_time_last_trading.size + 
  hkex_derivatives_premium_omd_v1_47.date_time_first_trading.size

-- Display: Series Definition Extended Message
hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Definition Extended Message
hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = hkex_derivatives_premium_omd_v1_47.symbol.dissect(buffer, index, packet, parent)

  -- Country: Uint8
  index, country = hkex_derivatives_premium_omd_v1_47.country.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_derivatives_premium_omd_v1_47.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_derivatives_premium_omd_v1_47.instrument_group.dissect(buffer, index, packet, parent)

  -- Modifier: Uint8
  index, modifier = hkex_derivatives_premium_omd_v1_47.modifier.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_premium_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint16
  index, expiry_date = hkex_derivatives_premium_omd_v1_47.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: Int32
  index, strike_price = hkex_derivatives_premium_omd_v1_47.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Size Extended: Int64
  index, contract_size_extended = hkex_derivatives_premium_omd_v1_47.contract_size_extended.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_derivatives_premium_omd_v1_47.isin_code.dissect(buffer, index, packet, parent)

  -- Series Status: Uint8
  index, series_status = hkex_derivatives_premium_omd_v1_47.series_status.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_premium_omd_v1_47.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor: Int32
  index, price_quotation_factor = hkex_derivatives_premium_omd_v1_47.price_quotation_factor.dissect(buffer, index, packet, parent)

  -- Price Method: Uint8
  index, price_method = hkex_derivatives_premium_omd_v1_47.price_method.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_premium_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  -- Effective Exp Date: String
  index, effective_exp_date = hkex_derivatives_premium_omd_v1_47.effective_exp_date.dissect(buffer, index, packet, parent)

  -- Date Time Last Trading: Int64
  index, date_time_last_trading = hkex_derivatives_premium_omd_v1_47.date_time_last_trading.dissect(buffer, index, packet, parent)

  -- Date Time First Trading: Int64
  index, date_time_first_trading = hkex_derivatives_premium_omd_v1_47.date_time_first_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Definition Extended Message
hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.series_definition_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.series_definition_extended_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
hkex_derivatives_premium_omd_v1_47.put_or_call = {}

-- Size: Put Or Call
hkex_derivatives_premium_omd_v1_47.put_or_call.size = 1

-- Display: Put Or Call
hkex_derivatives_premium_omd_v1_47.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Undefined (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 2 then
    return "Put Or Call: Put (2)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
hkex_derivatives_premium_omd_v1_47.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Decimal In Strike Price
hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price = {}

-- Size: Decimal In Strike Price
hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.size = 2

-- Display: Decimal In Strike Price
hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.display = function(value)
  return "Decimal In Strike Price: "..value
end

-- Dissect: Decimal In Strike Price
hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
hkex_derivatives_premium_omd_v1_47.expiration_date = {}

-- Size: Expiration Date
hkex_derivatives_premium_omd_v1_47.expiration_date.size = 8

-- Display: Expiration Date
hkex_derivatives_premium_omd_v1_47.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
hkex_derivatives_premium_omd_v1_47.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.expiration_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Number Of Legs
hkex_derivatives_premium_omd_v1_47.number_of_legs = {}

-- Size: Number Of Legs
hkex_derivatives_premium_omd_v1_47.number_of_legs.size = 1

-- Display: Number Of Legs
hkex_derivatives_premium_omd_v1_47.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
hkex_derivatives_premium_omd_v1_47.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Decimals Price
hkex_derivatives_premium_omd_v1_47.number_of_decimals_price = {}

-- Size: Number Of Decimals Price
hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.size = 2

-- Display: Number Of Decimals Price
hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.display = function(value)
  return "Number Of Decimals Price: "..value
end

-- Dissect: Number Of Decimals Price
hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.number_of_decimals_price, range, value, display)

  return offset + length, value
end

-- Financial Product
hkex_derivatives_premium_omd_v1_47.financial_product = {}

-- Size: Financial Product
hkex_derivatives_premium_omd_v1_47.financial_product.size = 1

-- Display: Financial Product
hkex_derivatives_premium_omd_v1_47.financial_product.display = function(value)
  if value == 1 then
    return "Financial Product: Option (1)"
  end
  if value == 2 then
    return "Financial Product: Forward (2)"
  end
  if value == 3 then
    return "Financial Product: Future (3)"
  end
  if value == 4 then
    return "Financial Product: Fra (4)"
  end
  if value == 5 then
    return "Financial Product: Cash (5)"
  end
  if value == 6 then
    return "Financial Product: Payment (6)"
  end
  if value == 7 then
    return "Financial Product: Exchange Rate (7)"
  end
  if value == 8 then
    return "Financial Product: Interest Rate Swap (8)"
  end
  if value == 9 then
    return "Financial Product: Repo (9)"
  end
  if value == 10 then
    return "Financial Product: Synthetic Box Leg Reference (10)"
  end
  if value == 11 then
    return "Financial Product: Standard Combination (11)"
  end
  if value == 12 then
    return "Financial Product: Guarantee (12)"
  end
  if value == 13 then
    return "Financial Product: Otc General (13)"
  end
  if value == 14 then
    return "Financial Product: Equity Warrant (14)"
  end
  if value == 15 then
    return "Financial Product: Security Lending (15)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
hkex_derivatives_premium_omd_v1_47.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.financial_product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Series Definition Base Message
hkex_derivatives_premium_omd_v1_47.series_definition_base_message = {}

-- Size: Series Definition Base Message
hkex_derivatives_premium_omd_v1_47.series_definition_base_message.size =
  hkex_derivatives_premium_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_premium_omd_v1_47.symbol.size + 
  hkex_derivatives_premium_omd_v1_47.financial_product.size + 
  hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.size + 
  hkex_derivatives_premium_omd_v1_47.number_of_legs.size + 
  hkex_derivatives_premium_omd_v1_47.strike_price.size + 
  hkex_derivatives_premium_omd_v1_47.expiration_date.size + 
  hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.size + 
  hkex_derivatives_premium_omd_v1_47.put_or_call.size + 
  hkex_derivatives_premium_omd_v1_47.filler_1.size

-- Display: Series Definition Base Message
hkex_derivatives_premium_omd_v1_47.series_definition_base_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Definition Base Message
hkex_derivatives_premium_omd_v1_47.series_definition_base_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_premium_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = hkex_derivatives_premium_omd_v1_47.symbol.dissect(buffer, index, packet, parent)

  -- Financial Product: Uint8
  index, financial_product = hkex_derivatives_premium_omd_v1_47.financial_product.dissect(buffer, index, packet, parent)

  -- Number Of Decimals Price: Uint16
  index, number_of_decimals_price = hkex_derivatives_premium_omd_v1_47.number_of_decimals_price.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Uint8
  index, number_of_legs = hkex_derivatives_premium_omd_v1_47.number_of_legs.dissect(buffer, index, packet, parent)

  -- Strike Price: Int32
  index, strike_price = hkex_derivatives_premium_omd_v1_47.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = hkex_derivatives_premium_omd_v1_47.expiration_date.dissect(buffer, index, packet, parent)

  -- Decimal In Strike Price: Uint16
  index, decimal_in_strike_price = hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Uint8
  index, put_or_call = hkex_derivatives_premium_omd_v1_47.put_or_call.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_premium_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Definition Base Message
hkex_derivatives_premium_omd_v1_47.series_definition_base_message.dissect = function(buffer, offset, packet, parent)
  if show.series_definition_base_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.series_definition_base_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.series_definition_base_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.series_definition_base_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.series_definition_base_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Step Size
hkex_derivatives_premium_omd_v1_47.tick_step_size = {}

-- Size: Tick Step Size
hkex_derivatives_premium_omd_v1_47.tick_step_size.size = 4

-- Display: Tick Step Size
hkex_derivatives_premium_omd_v1_47.tick_step_size.display = function(value)
  return "Tick Step Size: "..value
end

-- Dissect: Tick Step Size
hkex_derivatives_premium_omd_v1_47.tick_step_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.tick_step_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_premium_omd_v1_47.tick_step_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.tick_step_size, range, value, display)

  return offset + length, value
end

-- Settlement Currency Id
hkex_derivatives_premium_omd_v1_47.settlement_currency_id = {}

-- Size: Settlement Currency Id
hkex_derivatives_premium_omd_v1_47.settlement_currency_id.size = 32

-- Display: Settlement Currency Id
hkex_derivatives_premium_omd_v1_47.settlement_currency_id.display = function(value)
  return "Settlement Currency Id: "..value
end

-- Dissect: Settlement Currency Id
hkex_derivatives_premium_omd_v1_47.settlement_currency_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.settlement_currency_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.settlement_currency_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.settlement_currency_id, range, value, display)

  return offset + length, value
end

-- Is Fractions
hkex_derivatives_premium_omd_v1_47.is_fractions = {}

-- Size: Is Fractions
hkex_derivatives_premium_omd_v1_47.is_fractions.size = 1

-- Display: Is Fractions
hkex_derivatives_premium_omd_v1_47.is_fractions.display = function(value)
  if value == "1" then
    return "Is Fractions: Yes (1)"
  end
  if value == "2" then
    return "Is Fractions: No (2)"
  end

  return "Is Fractions: Unknown("..value..")"
end

-- Dissect: Is Fractions
hkex_derivatives_premium_omd_v1_47.is_fractions.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.is_fractions.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.is_fractions.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.is_fractions, range, value, display)

  return offset + length, value
end

-- Instrument Class Name
hkex_derivatives_premium_omd_v1_47.instrument_class_name = {}

-- Size: Instrument Class Name
hkex_derivatives_premium_omd_v1_47.instrument_class_name.size = 32

-- Display: Instrument Class Name
hkex_derivatives_premium_omd_v1_47.instrument_class_name.display = function(value)
  return "Instrument Class Name: "..value
end

-- Dissect: Instrument Class Name
hkex_derivatives_premium_omd_v1_47.instrument_class_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.instrument_class_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.instrument_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_class_name, range, value, display)

  return offset + length, value
end

-- Instrument Class Id
hkex_derivatives_premium_omd_v1_47.instrument_class_id = {}

-- Size: Instrument Class Id
hkex_derivatives_premium_omd_v1_47.instrument_class_id.size = 14

-- Display: Instrument Class Id
hkex_derivatives_premium_omd_v1_47.instrument_class_id.display = function(value)
  return "Instrument Class Id: "..value
end

-- Dissect: Instrument Class Id
hkex_derivatives_premium_omd_v1_47.instrument_class_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.instrument_class_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.instrument_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.instrument_class_id, range, value, display)

  return offset + length, value
end

-- Base Currency
hkex_derivatives_premium_omd_v1_47.base_currency = {}

-- Size: Base Currency
hkex_derivatives_premium_omd_v1_47.base_currency.size = 3

-- Display: Base Currency
hkex_derivatives_premium_omd_v1_47.base_currency.display = function(value)
  return "Base Currency: "..value
end

-- Dissect: Base Currency
hkex_derivatives_premium_omd_v1_47.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.base_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Premium Unit
hkex_derivatives_premium_omd_v1_47.premium_unit = {}

-- Size: Premium Unit
hkex_derivatives_premium_omd_v1_47.premium_unit.size = 1

-- Display: Premium Unit
hkex_derivatives_premium_omd_v1_47.premium_unit.display = function(value)
  if value == 1 then
    return "Premium Unit: Price (1)"
  end
  if value == 2 then
    return "Premium Unit: Yield (2)"
  end
  if value == 3 then
    return "Premium Unit: Points (3)"
  end
  if value == 4 then
    return "Premium Unit: Yield Diff (4)"
  end
  if value == 5 then
    return "Premium Unit: Imm Index (5)"
  end
  if value == 6 then
    return "Premium Unit: Basis Points (6)"
  end
  if value == 7 then
    return "Premium Unit: Inverted Yield (7)"
  end
  if value == 8 then
    return "Premium Unit: Percentage Of Nominal (8)"
  end
  if value == 9 then
    return "Premium Unit: Dirty Price (9)"
  end

  return "Premium Unit: Unknown("..value..")"
end

-- Dissect: Premium Unit
hkex_derivatives_premium_omd_v1_47.premium_unit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.premium_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.premium_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.premium_unit, range, value, display)

  return offset + length, value
end

-- Tradable
hkex_derivatives_premium_omd_v1_47.tradable = {}

-- Size: Tradable
hkex_derivatives_premium_omd_v1_47.tradable.size = 1

-- Display: Tradable
hkex_derivatives_premium_omd_v1_47.tradable.display = function(value)
  if value == 1 then
    return "Tradable: Yes (1)"
  end
  if value == 2 then
    return "Tradable: No (2)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
hkex_derivatives_premium_omd_v1_47.tradable.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.tradable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.tradable, range, value, display)

  return offset + length, value
end

-- Ranking Type
hkex_derivatives_premium_omd_v1_47.ranking_type = {}

-- Size: Ranking Type
hkex_derivatives_premium_omd_v1_47.ranking_type.size = 2

-- Display: Ranking Type
hkex_derivatives_premium_omd_v1_47.ranking_type.display = function(value)
  if value == 1 then
    return "Ranking Type: Price Then Time (1)"
  end
  if value == 2 then
    return "Ranking Type: Inverted Price Then Time (2)"
  end
  if value == 3 then
    return "Ranking Type: Price Then Traders Then Time (3)"
  end
  if value == 4 then
    return "Ranking Type: Inverted Price Then Traders Then Time (4)"
  end
  if value == 5 then
    return "Ranking Type: Price Then Market Makers Then Time (5)"
  end
  if value == 6 then
    return "Ranking Type: Inverted Price Then Market Makers Then Time (6)"
  end
  if value == 7 then
    return "Ranking Type: Price Then Baits Then Time (7)"
  end
  if value == 8 then
    return "Ranking Type: Inverted Price Then Baits Then Time (8)"
  end
  if value == 11 then
    return "Ranking Type: Price Then Own Orders Then Time (11)"
  end
  if value == 12 then
    return "Ranking Type: Inverted Price Then Own Orders Then Time (12)"
  end

  return "Ranking Type: Unknown("..value..")"
end

-- Dissect: Ranking Type
hkex_derivatives_premium_omd_v1_47.ranking_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.ranking_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.ranking_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.ranking_type, range, value, display)

  return offset + length, value
end

-- Decimal In Premium
hkex_derivatives_premium_omd_v1_47.decimal_in_premium = {}

-- Size: Decimal In Premium
hkex_derivatives_premium_omd_v1_47.decimal_in_premium.size = 2

-- Display: Decimal In Premium
hkex_derivatives_premium_omd_v1_47.decimal_in_premium.display = function(value)
  return "Decimal In Premium: "..value
end

-- Dissect: Decimal In Premium
hkex_derivatives_premium_omd_v1_47.decimal_in_premium.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.decimal_in_premium.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.decimal_in_premium.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_premium, range, value, display)

  return offset + length, value
end

-- Decimal In Contract Size
hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size = {}

-- Size: Decimal In Contract Size
hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.size = 2

-- Display: Decimal In Contract Size
hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.display = function(value)
  return "Decimal In Contract Size: "..value
end

-- Dissect: Decimal In Contract Size
hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_contract_size, range, value, display)

  return offset + length, value
end

-- Contract Size
hkex_derivatives_premium_omd_v1_47.contract_size = {}

-- Size: Contract Size
hkex_derivatives_premium_omd_v1_47.contract_size.size = 4

-- Display: Contract Size
hkex_derivatives_premium_omd_v1_47.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
hkex_derivatives_premium_omd_v1_47.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Class Definition Message
hkex_derivatives_premium_omd_v1_47.class_definition_message = {}

-- Size: Class Definition Message
hkex_derivatives_premium_omd_v1_47.class_definition_message.size =
  hkex_derivatives_premium_omd_v1_47.country.size + 
  hkex_derivatives_premium_omd_v1_47.market.size + 
  hkex_derivatives_premium_omd_v1_47.instrument_group.size + 
  hkex_derivatives_premium_omd_v1_47.modifier.size + 
  hkex_derivatives_premium_omd_v1_47.commodity_code.size + 
  hkex_derivatives_premium_omd_v1_47.filler_2.size + 
  hkex_derivatives_premium_omd_v1_47.price_quotation_factor.size + 
  hkex_derivatives_premium_omd_v1_47.contract_size.size + 
  hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.size + 
  hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.size + 
  hkex_derivatives_premium_omd_v1_47.decimal_in_premium.size + 
  hkex_derivatives_premium_omd_v1_47.ranking_type.size + 
  hkex_derivatives_premium_omd_v1_47.tradable.size + 
  hkex_derivatives_premium_omd_v1_47.premium_unit.size + 
  hkex_derivatives_premium_omd_v1_47.base_currency.size + 
  hkex_derivatives_premium_omd_v1_47.instrument_class_id.size + 
  hkex_derivatives_premium_omd_v1_47.instrument_class_name.size + 
  hkex_derivatives_premium_omd_v1_47.is_fractions.size + 
  hkex_derivatives_premium_omd_v1_47.settlement_currency_id.size + 
  hkex_derivatives_premium_omd_v1_47.effective_tomorrow.size + 
  hkex_derivatives_premium_omd_v1_47.tick_step_size.size + 
  hkex_derivatives_premium_omd_v1_47.filler_1.size

-- Display: Class Definition Message
hkex_derivatives_premium_omd_v1_47.class_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class Definition Message
hkex_derivatives_premium_omd_v1_47.class_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Country: Uint8
  index, country = hkex_derivatives_premium_omd_v1_47.country.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_derivatives_premium_omd_v1_47.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_derivatives_premium_omd_v1_47.instrument_group.dissect(buffer, index, packet, parent)

  -- Modifier: Uint8
  index, modifier = hkex_derivatives_premium_omd_v1_47.modifier.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_premium_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_premium_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor: Int32
  index, price_quotation_factor = hkex_derivatives_premium_omd_v1_47.price_quotation_factor.dissect(buffer, index, packet, parent)

  -- Contract Size: Uint32
  index, contract_size = hkex_derivatives_premium_omd_v1_47.contract_size.dissect(buffer, index, packet, parent)

  -- Decimal In Strike Price: Uint16
  index, decimal_in_strike_price = hkex_derivatives_premium_omd_v1_47.decimal_in_strike_price.dissect(buffer, index, packet, parent)

  -- Decimal In Contract Size: Uint16
  index, decimal_in_contract_size = hkex_derivatives_premium_omd_v1_47.decimal_in_contract_size.dissect(buffer, index, packet, parent)

  -- Decimal In Premium: Uint16
  index, decimal_in_premium = hkex_derivatives_premium_omd_v1_47.decimal_in_premium.dissect(buffer, index, packet, parent)

  -- Ranking Type: Uint16
  index, ranking_type = hkex_derivatives_premium_omd_v1_47.ranking_type.dissect(buffer, index, packet, parent)

  -- Tradable: Uint8
  index, tradable = hkex_derivatives_premium_omd_v1_47.tradable.dissect(buffer, index, packet, parent)

  -- Premium Unit: Uint8
  index, premium_unit = hkex_derivatives_premium_omd_v1_47.premium_unit.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_derivatives_premium_omd_v1_47.base_currency.dissect(buffer, index, packet, parent)

  -- Instrument Class Id: String
  index, instrument_class_id = hkex_derivatives_premium_omd_v1_47.instrument_class_id.dissect(buffer, index, packet, parent)

  -- Instrument Class Name: String
  index, instrument_class_name = hkex_derivatives_premium_omd_v1_47.instrument_class_name.dissect(buffer, index, packet, parent)

  -- Is Fractions: String
  index, is_fractions = hkex_derivatives_premium_omd_v1_47.is_fractions.dissect(buffer, index, packet, parent)

  -- Settlement Currency Id: String
  index, settlement_currency_id = hkex_derivatives_premium_omd_v1_47.settlement_currency_id.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_premium_omd_v1_47.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Tick Step Size: Int32
  index, tick_step_size = hkex_derivatives_premium_omd_v1_47.tick_step_size.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_premium_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class Definition Message
hkex_derivatives_premium_omd_v1_47.class_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.class_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.class_definition_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.class_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.class_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.class_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Id
hkex_derivatives_premium_omd_v1_47.commodity_id = {}

-- Size: Commodity Id
hkex_derivatives_premium_omd_v1_47.commodity_id.size = 6

-- Display: Commodity Id
hkex_derivatives_premium_omd_v1_47.commodity_id.display = function(value)
  return "Commodity Id: "..value
end

-- Dissect: Commodity Id
hkex_derivatives_premium_omd_v1_47.commodity_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.commodity_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.commodity_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_id, range, value, display)

  return offset + length, value
end

-- Underlying Type
hkex_derivatives_premium_omd_v1_47.underlying_type = {}

-- Size: Underlying Type
hkex_derivatives_premium_omd_v1_47.underlying_type.size = 1

-- Display: Underlying Type
hkex_derivatives_premium_omd_v1_47.underlying_type.display = function(value)
  if value == 1 then
    return "Underlying Type: Stock (1)"
  end
  if value == 2 then
    return "Underlying Type: Currency (2)"
  end
  if value == 3 then
    return "Underlying Type: Interest Rate (3)"
  end
  if value == 4 then
    return "Underlying Type: Energy (4)"
  end
  if value == 5 then
    return "Underlying Type: Soft And Agrics (5)"
  end
  if value == 6 then
    return "Underlying Type: Metal (6)"
  end
  if value == 7 then
    return "Underlying Type: Stock Index (7)"
  end
  if value == 8 then
    return "Underlying Type: Currency Index (8)"
  end
  if value == 9 then
    return "Underlying Type: Interest Rate Index (9)"
  end
  if value == 10 then
    return "Underlying Type: Energy Index (10)"
  end
  if value == 11 then
    return "Underlying Type: Softs And Agrics Index (11)"
  end
  if value == 12 then
    return "Underlying Type: Metal Index (12)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
hkex_derivatives_premium_omd_v1_47.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.underlying_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Nominal Value
hkex_derivatives_premium_omd_v1_47.nominal_value = {}

-- Size: Nominal Value
hkex_derivatives_premium_omd_v1_47.nominal_value.size = 8

-- Display: Nominal Value
hkex_derivatives_premium_omd_v1_47.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
hkex_derivatives_premium_omd_v1_47.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.nominal_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_derivatives_premium_omd_v1_47.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Commodity Name
hkex_derivatives_premium_omd_v1_47.commodity_name = {}

-- Size: Commodity Name
hkex_derivatives_premium_omd_v1_47.commodity_name.size = 32

-- Display: Commodity Name
hkex_derivatives_premium_omd_v1_47.commodity_name.display = function(value)
  return "Commodity Name: "..value
end

-- Dissect: Commodity Name
hkex_derivatives_premium_omd_v1_47.commodity_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.commodity_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_premium_omd_v1_47.commodity_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_name, range, value, display)

  return offset + length, value
end

-- Underlying Price Unit
hkex_derivatives_premium_omd_v1_47.underlying_price_unit = {}

-- Size: Underlying Price Unit
hkex_derivatives_premium_omd_v1_47.underlying_price_unit.size = 1

-- Display: Underlying Price Unit
hkex_derivatives_premium_omd_v1_47.underlying_price_unit.display = function(value)
  if value == 1 then
    return "Underlying Price Unit: Price (1)"
  end
  if value == 2 then
    return "Underlying Price Unit: Yield (2)"
  end
  if value == 3 then
    return "Underlying Price Unit: Points (3)"
  end
  if value == 4 then
    return "Underlying Price Unit: Yield Diff (4)"
  end
  if value == 5 then
    return "Underlying Price Unit: Imm Index (5)"
  end
  if value == 6 then
    return "Underlying Price Unit: Basis Points (6)"
  end
  if value == 7 then
    return "Underlying Price Unit: Inverted Yield (7)"
  end
  if value == 8 then
    return "Underlying Price Unit: Percentage Of Nominal (8)"
  end
  if value == 9 then
    return "Underlying Price Unit: Dirty Price (9)"
  end

  return "Underlying Price Unit: Unknown("..value..")"
end

-- Dissect: Underlying Price Unit
hkex_derivatives_premium_omd_v1_47.underlying_price_unit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.underlying_price_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.underlying_price_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.underlying_price_unit, range, value, display)

  return offset + length, value
end

-- Decimal In Underlying Price
hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price = {}

-- Size: Decimal In Underlying Price
hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.size = 2

-- Display: Decimal In Underlying Price
hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.display = function(value)
  return "Decimal In Underlying Price: "..value
end

-- Dissect: Decimal In Underlying Price
hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.decimal_in_underlying_price, range, value, display)

  return offset + length, value
end

-- Commodity Definition Message
hkex_derivatives_premium_omd_v1_47.commodity_definition_message = {}

-- Size: Commodity Definition Message
hkex_derivatives_premium_omd_v1_47.commodity_definition_message.size =
  hkex_derivatives_premium_omd_v1_47.commodity_code.size + 
  hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.size + 
  hkex_derivatives_premium_omd_v1_47.isin_code.size + 
  hkex_derivatives_premium_omd_v1_47.base_currency.size + 
  hkex_derivatives_premium_omd_v1_47.underlying_price_unit.size + 
  hkex_derivatives_premium_omd_v1_47.commodity_name.size + 
  hkex_derivatives_premium_omd_v1_47.nominal_value.size + 
  hkex_derivatives_premium_omd_v1_47.underlying_type.size + 
  hkex_derivatives_premium_omd_v1_47.effective_tomorrow.size + 
  hkex_derivatives_premium_omd_v1_47.commodity_id.size + 
  hkex_derivatives_premium_omd_v1_47.filler_2.size

-- Display: Commodity Definition Message
hkex_derivatives_premium_omd_v1_47.commodity_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Definition Message
hkex_derivatives_premium_omd_v1_47.commodity_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_premium_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Decimal In Underlying Price: Uint16
  index, decimal_in_underlying_price = hkex_derivatives_premium_omd_v1_47.decimal_in_underlying_price.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_derivatives_premium_omd_v1_47.isin_code.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_derivatives_premium_omd_v1_47.base_currency.dissect(buffer, index, packet, parent)

  -- Underlying Price Unit: Uint8
  index, underlying_price_unit = hkex_derivatives_premium_omd_v1_47.underlying_price_unit.dissect(buffer, index, packet, parent)

  -- Commodity Name: String
  index, commodity_name = hkex_derivatives_premium_omd_v1_47.commodity_name.dissect(buffer, index, packet, parent)

  -- Nominal Value: Int64
  index, nominal_value = hkex_derivatives_premium_omd_v1_47.nominal_value.dissect(buffer, index, packet, parent)

  -- Underlying Type: Uint8
  index, underlying_type = hkex_derivatives_premium_omd_v1_47.underlying_type.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_derivatives_premium_omd_v1_47.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Commodity Id: String
  index, commodity_id = hkex_derivatives_premium_omd_v1_47.commodity_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_premium_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Definition Message
hkex_derivatives_premium_omd_v1_47.commodity_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.commodity_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.commodity_definition_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.commodity_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.commodity_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.commodity_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Seq Num
hkex_derivatives_premium_omd_v1_47.last_seq_num = {}

-- Size: Last Seq Num
hkex_derivatives_premium_omd_v1_47.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_derivatives_premium_omd_v1_47.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_derivatives_premium_omd_v1_47.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Refresh Complete
hkex_derivatives_premium_omd_v1_47.refresh_complete = {}

-- Size: Refresh Complete
hkex_derivatives_premium_omd_v1_47.refresh_complete.size =
  hkex_derivatives_premium_omd_v1_47.last_seq_num.size

-- Display: Refresh Complete
hkex_derivatives_premium_omd_v1_47.refresh_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete
hkex_derivatives_premium_omd_v1_47.refresh_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_derivatives_premium_omd_v1_47.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete
hkex_derivatives_premium_omd_v1_47.refresh_complete.dissect = function(buffer, offset, packet, parent)
  if show.refresh_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.refresh_complete, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.refresh_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.refresh_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.refresh_complete.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Status
hkex_derivatives_premium_omd_v1_47.disaster_recovery_status = {}

-- Size: Disaster Recovery Status
hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.size = 4

-- Display: Disaster Recovery Status
hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.display = function(value)
  if value == 1 then
    return "Disaster Recovery Status: In Progress (1)"
  end
  if value == 2 then
    return "Disaster Recovery Status: Completed (2)"
  end

  return "Disaster Recovery Status: Unknown("..value..")"
end

-- Dissect: Disaster Recovery Status
hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.disaster_recovery_status, range, value, display)

  return offset + length, value
end

-- Disaster Recovery Signal Message
hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.size =
  hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.size

-- Display: Disaster Recovery Signal Message
hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Disaster Recovery Status: Uint32
  index, disaster_recovery_status = hkex_derivatives_premium_omd_v1_47.disaster_recovery_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.disaster_recovery_signal_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- New Seq No
hkex_derivatives_premium_omd_v1_47.new_seq_no = {}

-- Size: New Seq No
hkex_derivatives_premium_omd_v1_47.new_seq_no.size = 4

-- Display: New Seq No
hkex_derivatives_premium_omd_v1_47.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_derivatives_premium_omd_v1_47.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence Reset
hkex_derivatives_premium_omd_v1_47.sequence_reset = {}

-- Size: Sequence Reset
hkex_derivatives_premium_omd_v1_47.sequence_reset.size =
  hkex_derivatives_premium_omd_v1_47.new_seq_no.size

-- Display: Sequence Reset
hkex_derivatives_premium_omd_v1_47.sequence_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset
hkex_derivatives_premium_omd_v1_47.sequence_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_derivatives_premium_omd_v1_47.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset
hkex_derivatives_premium_omd_v1_47.sequence_reset.dissect = function(buffer, offset, packet, parent)
  if show.sequence_reset then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.sequence_reset, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.sequence_reset.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.sequence_reset.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.sequence_reset.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_derivatives_premium_omd_v1_47.payload = {}

-- Size: Payload
hkex_derivatives_premium_omd_v1_47.payload.size = function(buffer, offset, msg_type)
  -- Size of Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_premium_omd_v1_47.sequence_reset.size
  end
  -- Size of Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.size
  end
  -- Size of Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_premium_omd_v1_47.refresh_complete.size
  end
  -- Size of Commodity Definition Message
  if msg_type == 301 then
    return hkex_derivatives_premium_omd_v1_47.commodity_definition_message.size
  end
  -- Size of Class Definition Message
  if msg_type == 302 then
    return hkex_derivatives_premium_omd_v1_47.class_definition_message.size
  end
  -- Size of Series Definition Base Message
  if msg_type == 303 then
    return hkex_derivatives_premium_omd_v1_47.series_definition_base_message.size
  end
  -- Size of Series Definition Extended Message
  if msg_type == 304 then
    return hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.size
  end
  -- Size of Combination Definition Message
  if msg_type == 305 then
    return hkex_derivatives_premium_omd_v1_47.combination_definition_message.size
  end
  -- Size of Market Status Message
  if msg_type == 320 then
    return hkex_derivatives_premium_omd_v1_47.market_status_message.size
  end
  -- Size of Series Status Message
  if msg_type == 321 then
    return hkex_derivatives_premium_omd_v1_47.series_status_message.size
  end
  -- Size of Commodity Status Message
  if msg_type == 322 then
    return hkex_derivatives_premium_omd_v1_47.commodity_status_message.size
  end
  -- Size of Aggregate Order Book Update Message
  if msg_type == 353 then
    return hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.size(buffer, offset)
  end
  -- Size of Quote Request
  if msg_type == 336 then
    return hkex_derivatives_premium_omd_v1_47.quote_request.size
  end
  -- Size of Trade Message
  if msg_type == 350 then
    return hkex_derivatives_premium_omd_v1_47.trade_message.size
  end
  -- Size of Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_premium_omd_v1_47.trade_amendment_message.size
  end
  -- Size of Series Statistics Message
  if msg_type == 363 then
    return hkex_derivatives_premium_omd_v1_47.series_statistics_message.size
  end
  -- Size of Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.size
  end
  -- Size of Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_premium_omd_v1_47.market_alert_message.size(buffer, offset)
  end
  -- Size of Open Interest Message
  if msg_type == 366 then
    return hkex_derivatives_premium_omd_v1_47.open_interest_message.size
  end
  -- Size of Implied Volatility Message
  if msg_type == 367 then
    return hkex_derivatives_premium_omd_v1_47.implied_volatility_message.size
  end

  return 0
end

-- Display: Payload
hkex_derivatives_premium_omd_v1_47.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
hkex_derivatives_premium_omd_v1_47.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_premium_omd_v1_47.sequence_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_premium_omd_v1_47.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_premium_omd_v1_47.refresh_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Definition Message
  if msg_type == 301 then
    return hkex_derivatives_premium_omd_v1_47.commodity_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Class Definition Message
  if msg_type == 302 then
    return hkex_derivatives_premium_omd_v1_47.class_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Definition Base Message
  if msg_type == 303 then
    return hkex_derivatives_premium_omd_v1_47.series_definition_base_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Definition Extended Message
  if msg_type == 304 then
    return hkex_derivatives_premium_omd_v1_47.series_definition_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Definition Message
  if msg_type == 305 then
    return hkex_derivatives_premium_omd_v1_47.combination_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Message
  if msg_type == 320 then
    return hkex_derivatives_premium_omd_v1_47.market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Status Message
  if msg_type == 321 then
    return hkex_derivatives_premium_omd_v1_47.series_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Status Message
  if msg_type == 322 then
    return hkex_derivatives_premium_omd_v1_47.commodity_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggregate Order Book Update Message
  if msg_type == 353 then
    return hkex_derivatives_premium_omd_v1_47.aggregate_order_book_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if msg_type == 336 then
    return hkex_derivatives_premium_omd_v1_47.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 350 then
    return hkex_derivatives_premium_omd_v1_47.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_premium_omd_v1_47.trade_amendment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Statistics Message
  if msg_type == 363 then
    return hkex_derivatives_premium_omd_v1_47.series_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_premium_omd_v1_47.calculated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_premium_omd_v1_47.market_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if msg_type == 366 then
    return hkex_derivatives_premium_omd_v1_47.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Volatility Message
  if msg_type == 367 then
    return hkex_derivatives_premium_omd_v1_47.implied_volatility_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
hkex_derivatives_premium_omd_v1_47.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return hkex_derivatives_premium_omd_v1_47.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = hkex_derivatives_premium_omd_v1_47.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = hkex_derivatives_premium_omd_v1_47.payload.display(buffer, packet, parent)
  local element = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.payload, range, display)

  return hkex_derivatives_premium_omd_v1_47.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Msg Type
hkex_derivatives_premium_omd_v1_47.msg_type = {}

-- Size: Msg Type
hkex_derivatives_premium_omd_v1_47.msg_type.size = 2

-- Display: Msg Type
hkex_derivatives_premium_omd_v1_47.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete (203)"
  end
  if value == 301 then
    return "Msg Type: Commodity Definition Message (301)"
  end
  if value == 302 then
    return "Msg Type: Class Definition Message (302)"
  end
  if value == 303 then
    return "Msg Type: Series Definition Base Message (303)"
  end
  if value == 304 then
    return "Msg Type: Series Definition Extended Message (304)"
  end
  if value == 305 then
    return "Msg Type: Combination Definition Message (305)"
  end
  if value == 320 then
    return "Msg Type: Market Status Message (320)"
  end
  if value == 321 then
    return "Msg Type: Series Status Message (321)"
  end
  if value == 322 then
    return "Msg Type: Commodity Status Message (322)"
  end
  if value == 353 then
    return "Msg Type: Aggregate Order Book Update Message (353)"
  end
  if value == 336 then
    return "Msg Type: Quote Request (336)"
  end
  if value == 350 then
    return "Msg Type: Trade Message (350)"
  end
  if value == 356 then
    return "Msg Type: Trade Amendment Message (356)"
  end
  if value == 363 then
    return "Msg Type: Series Statistics Message (363)"
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
  if value == 367 then
    return "Msg Type: Implied Volatility Message (367)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_derivatives_premium_omd_v1_47.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_derivatives_premium_omd_v1_47.msg_size = {}

-- Size: Msg Size
hkex_derivatives_premium_omd_v1_47.msg_size.size = 2

-- Display: Msg Size
hkex_derivatives_premium_omd_v1_47.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_derivatives_premium_omd_v1_47.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Header
hkex_derivatives_premium_omd_v1_47.msg_header = {}

-- Size: Msg Header
hkex_derivatives_premium_omd_v1_47.msg_header.size =
  hkex_derivatives_premium_omd_v1_47.msg_size.size + 
  hkex_derivatives_premium_omd_v1_47.msg_type.size

-- Display: Msg Header
hkex_derivatives_premium_omd_v1_47.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_derivatives_premium_omd_v1_47.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_derivatives_premium_omd_v1_47.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, msg_type = hkex_derivatives_premium_omd_v1_47.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_derivatives_premium_omd_v1_47.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.msg_header, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_derivatives_premium_omd_v1_47.message = {}

-- Display: Message
hkex_derivatives_premium_omd_v1_47.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_derivatives_premium_omd_v1_47.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_derivatives_premium_omd_v1_47.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 20 branches
  index = hkex_derivatives_premium_omd_v1_47.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_derivatives_premium_omd_v1_47.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.message, buffer(offset, 0))
    local current = hkex_derivatives_premium_omd_v1_47.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_derivatives_premium_omd_v1_47.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_derivatives_premium_omd_v1_47.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
hkex_derivatives_premium_omd_v1_47.send_time = {}

-- Size: Send Time
hkex_derivatives_premium_omd_v1_47.send_time.size = 8

-- Display: Send Time
hkex_derivatives_premium_omd_v1_47.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_derivatives_premium_omd_v1_47.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_premium_omd_v1_47.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_derivatives_premium_omd_v1_47.seq_num = {}

-- Size: Seq Num
hkex_derivatives_premium_omd_v1_47.seq_num.size = 4

-- Display: Seq Num
hkex_derivatives_premium_omd_v1_47.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_derivatives_premium_omd_v1_47.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Compression Mode
hkex_derivatives_premium_omd_v1_47.compression_mode = {}

-- Size: Compression Mode
hkex_derivatives_premium_omd_v1_47.compression_mode.size = 1

-- Display: Compression Mode
hkex_derivatives_premium_omd_v1_47.compression_mode.display = function(value)
  return "Compression Mode: "..value
end

-- Dissect: Compression Mode
hkex_derivatives_premium_omd_v1_47.compression_mode.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.compression_mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_premium_omd_v1_47.compression_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.compression_mode, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_derivatives_premium_omd_v1_47.msg_count = {}

-- Size: Msg Count
hkex_derivatives_premium_omd_v1_47.msg_count.size = 1

-- Display: Msg Count
hkex_derivatives_premium_omd_v1_47.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_derivatives_premium_omd_v1_47.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_premium_omd_v1_47.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_derivatives_premium_omd_v1_47.pkt_size = {}

-- Size: Pkt Size
hkex_derivatives_premium_omd_v1_47.pkt_size.size = 2

-- Display: Pkt Size
hkex_derivatives_premium_omd_v1_47.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_derivatives_premium_omd_v1_47.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_premium_omd_v1_47.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_premium_omd_v1_47.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
hkex_derivatives_premium_omd_v1_47.packet_header = {}

-- Size: Packet Header
hkex_derivatives_premium_omd_v1_47.packet_header.size =
  hkex_derivatives_premium_omd_v1_47.pkt_size.size + 
  hkex_derivatives_premium_omd_v1_47.msg_count.size + 
  hkex_derivatives_premium_omd_v1_47.compression_mode.size + 
  hkex_derivatives_premium_omd_v1_47.seq_num.size + 
  hkex_derivatives_premium_omd_v1_47.send_time.size

-- Display: Packet Header
hkex_derivatives_premium_omd_v1_47.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_derivatives_premium_omd_v1_47.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_derivatives_premium_omd_v1_47.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_derivatives_premium_omd_v1_47.msg_count.dissect(buffer, index, packet, parent)

  -- Compression Mode: 1 Byte Unsigned Fixed Width Integer
  index, compression_mode = hkex_derivatives_premium_omd_v1_47.compression_mode.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_derivatives_premium_omd_v1_47.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_derivatives_premium_omd_v1_47.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_derivatives_premium_omd_v1_47.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_premium_omd_v1_47.fields.packet_header, buffer(offset, 0))
    local index = hkex_derivatives_premium_omd_v1_47.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_premium_omd_v1_47.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_premium_omd_v1_47.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_derivatives_premium_omd_v1_47.packet = {}

-- Dissect Packet
hkex_derivatives_premium_omd_v1_47.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_derivatives_premium_omd_v1_47.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_derivatives_premium_omd_v1_47.message.dissect(buffer, index, packet, parent, msg_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_derivatives_premium_omd_v1_47.init()
end

-- Dissector for Hkex Derivatives Premium Omd 1.47
function omi_hkex_derivatives_premium_omd_v1_47.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_derivatives_premium_omd_v1_47.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_derivatives_premium_omd_v1_47, buffer(), omi_hkex_derivatives_premium_omd_v1_47.description, "("..buffer:len().." Bytes)")
  return hkex_derivatives_premium_omd_v1_47.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_hkex_derivatives_premium_omd_v1_47)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
hkex_derivatives_premium_omd_v1_47.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Hkex Derivatives Premium Omd 1.47
local function omi_hkex_derivatives_premium_omd_v1_47_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_derivatives_premium_omd_v1_47.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_derivatives_premium_omd_v1_47
  omi_hkex_derivatives_premium_omd_v1_47.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex Derivatives Premium Omd 1.47
omi_hkex_derivatives_premium_omd_v1_47:register_heuristic("udp", omi_hkex_derivatives_premium_omd_v1_47_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.47
--   Date: Tuesday, October 14, 2025
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
