-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexDerivatives FullTick Omd 1.49 Protocol
local omi_hkex_hkexderivatives_fulltick_omd_v1_49 = Proto("Omi.Hkex.HkexDerivatives.FullTick.Omd.v1.49", "Hkex HkexDerivatives FullTick Omd 1.49")

-- Protocol table
local hkex_hkexderivatives_fulltick_omd_v1_49 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexDerivatives FullTick Omd 1.49 Fields
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.actual_start_date = ProtoField.new("Actual Start Date", "hkex.hkexderivatives.fulltick.omd.v1.49.actualstartdate", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.actual_start_time = ProtoField.new("Actual Start Time", "hkex.hkexderivatives.fulltick.omd.v1.49.actualstarttime", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.alert_id = ProtoField.new("Alert Id", "hkex.hkexderivatives.fulltick.omd.v1.49.alertid", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.bait_or_implied_order = ProtoField.new("Bait Or Implied Order", "hkex.hkexderivatives.fulltick.omd.v1.49.baitorimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.base_currency = ProtoField.new("Base Currency", "hkex.hkexderivatives.fulltick.omd.v1.49.basecurrency", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.bid_ask_flag = ProtoField.new("Bid Ask Flag", "hkex.hkexderivatives.fulltick.omd.v1.49.bidaskflag", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.buy_write = ProtoField.new("Buy Write", "hkex.hkexderivatives.fulltick.omd.v1.49.buywrite", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "hkex.hkexderivatives.fulltick.omd.v1.49.calculatedopeningprice", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_quantity = ProtoField.new("Calculated Opening Quantity", "hkex.hkexderivatives.fulltick.omd.v1.49.calculatedopeningquantity", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combo_group_id = ProtoField.new("Combo Group Id", "hkex.hkexderivatives.fulltick.omd.v1.49.combogroupid", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combo_orderbook_id = ProtoField.new("Combo Orderbook Id", "hkex.hkexderivatives.fulltick.omd.v1.49.comboorderbookid", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_code = ProtoField.new("Commodity Code", "hkex.hkexderivatives.fulltick.omd.v1.49.commoditycode", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_id = ProtoField.new("Commodity Id", "hkex.hkexderivatives.fulltick.omd.v1.49.commodityid", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_name = ProtoField.new("Commodity Name", "hkex.hkexderivatives.fulltick.omd.v1.49.commodityname", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.compression_mode = ProtoField.new("Compression Mode", "hkex.hkexderivatives.fulltick.omd.v1.49.compressionmode", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.content = ProtoField.new("Content", "hkex.hkexderivatives.fulltick.omd.v1.49.content", ftypes.BYTES)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.contract_size = ProtoField.new("Contract Size", "hkex.hkexderivatives.fulltick.omd.v1.49.contractsize", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.contract_size_extended = ProtoField.new("Contract Size Extended", "hkex.hkexderivatives.fulltick.omd.v1.49.contractsizeextended", ftypes.INT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.convert_to_aggressive = ProtoField.new("Convert To Aggressive", "hkex.hkexderivatives.fulltick.omd.v1.49.converttoaggressive", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.country = ProtoField.new("Country", "hkex.hkexderivatives.fulltick.omd.v1.49.country", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.date_time_first_trading = ProtoField.new("Date Time First Trading", "hkex.hkexderivatives.fulltick.omd.v1.49.datetimefirsttrading", ftypes.INT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.date_time_last_trading = ProtoField.new("Date Time Last Trading", "hkex.hkexderivatives.fulltick.omd.v1.49.datetimelasttrading", ftypes.INT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.deal_info_uint_162 = ProtoField.new("Deal Info Uint 162", "hkex.hkexderivatives.fulltick.omd.v1.49.dealinfouint162", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.deal_type = ProtoField.new("Deal Type", "hkex.hkexderivatives.fulltick.omd.v1.49.dealtype", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_contract_size = ProtoField.new("Decimal In Contract Size", "hkex.hkexderivatives.fulltick.omd.v1.49.decimalincontractsize", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_premium = ProtoField.new("Decimal In Premium", "hkex.hkexderivatives.fulltick.omd.v1.49.decimalinpremium", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_strike_price = ProtoField.new("Decimal In Strike Price", "hkex.hkexderivatives.fulltick.omd.v1.49.decimalinstrikeprice", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_underlying_price = ProtoField.new("Decimal In Underlying Price", "hkex.hkexderivatives.fulltick.omd.v1.49.decimalinunderlyingprice", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.disaster_recovery_status = ProtoField.new("Disaster Recovery Status", "hkex.hkexderivatives.fulltick.omd.v1.49.disasterrecoverystatus", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.effective_exp_date = ProtoField.new("Effective Exp Date", "hkex.hkexderivatives.fulltick.omd.v1.49.effectiveexpdate", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.effective_tomorrow = ProtoField.new("Effective Tomorrow", "hkex.hkexderivatives.fulltick.omd.v1.49.effectivetomorrow", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.expiration_date = ProtoField.new("Expiration Date", "hkex.hkexderivatives.fulltick.omd.v1.49.expirationdate", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.expiry_date = ProtoField.new("Expiry Date", "hkex.hkexderivatives.fulltick.omd.v1.49.expirydate", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.fill_and_kill_immediately = ProtoField.new("Fill And Kill Immediately", "hkex.hkexderivatives.fulltick.omd.v1.49.fillandkillimmediately", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_1 = ProtoField.new("Filler 1", "hkex.hkexderivatives.fulltick.omd.v1.49.filler1", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_2 = ProtoField.new("Filler 2", "hkex.hkexderivatives.fulltick.omd.v1.49.filler2", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_3 = ProtoField.new("Filler 3", "hkex.hkexderivatives.fulltick.omd.v1.49.filler3", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_4 = ProtoField.new("Filler 4", "hkex.hkexderivatives.fulltick.omd.v1.49.filler4", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.financial_product = ProtoField.new("Financial Product", "hkex.hkexderivatives.fulltick.omd.v1.49.financialproduct", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.firm_color_disabled = ProtoField.new("Firm Color Disabled", "hkex.hkexderivatives.fulltick.omd.v1.49.firmcolordisabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.force = ProtoField.new("Force", "hkex.hkexderivatives.fulltick.omd.v1.49.force", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.header = ProtoField.new("Header", "hkex.hkexderivatives.fulltick.omd.v1.49.header", ftypes.BYTES)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.info_type = ProtoField.new("Info Type", "hkex.hkexderivatives.fulltick.omd.v1.49.infotype", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_class_id = ProtoField.new("Instrument Class Id", "hkex.hkexderivatives.fulltick.omd.v1.49.instrumentclassid", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_class_name = ProtoField.new("Instrument Class Name", "hkex.hkexderivatives.fulltick.omd.v1.49.instrumentclassname", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_group = ProtoField.new("Instrument Group", "hkex.hkexderivatives.fulltick.omd.v1.49.instrumentgroup", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.internal_trade_or_cross = ProtoField.new("Internal Trade Or Cross", "hkex.hkexderivatives.fulltick.omd.v1.49.internaltradeorcross", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.is_fractions = ProtoField.new("Is Fractions", "hkex.hkexderivatives.fulltick.omd.v1.49.isfractions", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.isin_code = ProtoField.new("Isin Code", "hkex.hkexderivatives.fulltick.omd.v1.49.isincode", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.last_fragment = ProtoField.new("Last Fragment", "hkex.hkexderivatives.fulltick.omd.v1.49.lastfragment", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.late_trade = ProtoField.new("Late Trade", "hkex.hkexderivatives.fulltick.omd.v1.49.latetrade", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_orderbook_id = ProtoField.new("Leg Orderbook Id", "hkex.hkexderivatives.fulltick.omd.v1.49.legorderbookid", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_ratio = ProtoField.new("Leg Ratio", "hkex.hkexderivatives.fulltick.omd.v1.49.legratio", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_side = ProtoField.new("Leg Side", "hkex.hkexderivatives.fulltick.omd.v1.49.legside", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.locked = ProtoField.new("Locked", "hkex.hkexderivatives.fulltick.omd.v1.49.locked", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.lot_type = ProtoField.new("Lot Type", "hkex.hkexderivatives.fulltick.omd.v1.49.lottype", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market = ProtoField.new("Market", "hkex.hkexderivatives.fulltick.omd.v1.49.market", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_bid = ProtoField.new("Market Bid", "hkex.hkexderivatives.fulltick.omd.v1.49.marketbid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.modifier = ProtoField.new("Modifier", "hkex.hkexderivatives.fulltick.omd.v1.49.modifier", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexderivatives.fulltick.omd.v1.49.msgcount", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexderivatives.fulltick.omd.v1.49.msgsize", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexderivatives.fulltick.omd.v1.49.msgtype", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexderivatives.fulltick.omd.v1.49.newseqno", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.no_lines = ProtoField.new("No Lines", "hkex.hkexderivatives.fulltick.omd.v1.49.nolines", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.nominal_value = ProtoField.new("Nominal Value", "hkex.hkexderivatives.fulltick.omd.v1.49.nominalvalue", ftypes.INT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_decimals_price = ProtoField.new("Number Of Decimals Price", "hkex.hkexderivatives.fulltick.omd.v1.49.numberofdecimalsprice", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_legs = ProtoField.new("Number Of Legs", "hkex.hkexderivatives.fulltick.omd.v1.49.numberoflegs", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_lots = ProtoField.new("Number Of Lots", "hkex.hkexderivatives.fulltick.omd.v1.49.numberoflots", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "hkex.hkexderivatives.fulltick.omd.v1.49.occurredatcross", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.off_market = ProtoField.new("Off Market", "hkex.hkexderivatives.fulltick.omd.v1.49.offmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_book_position = ProtoField.new("Order Book Position", "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookposition", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_id = ProtoField.new("Order Id", "hkex.hkexderivatives.fulltick.omd.v1.49.orderid", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_type = ProtoField.new("Order Type", "hkex.hkexderivatives.fulltick.omd.v1.49.ordertype", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.orderbook_id = ProtoField.new("Orderbook Id", "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.override_crossing = ProtoField.new("Override Crossing", "hkex.hkexderivatives.fulltick.omd.v1.49.overridecrossing", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexderivatives.fulltick.omd.v1.49.pktsize", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.planned_start_date = ProtoField.new("Planned Start Date", "hkex.hkexderivatives.fulltick.omd.v1.49.plannedstartdate", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.planned_start_time = ProtoField.new("Planned Start Time", "hkex.hkexderivatives.fulltick.omd.v1.49.plannedstarttime", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.premium_unit = ProtoField.new("Premium Unit", "hkex.hkexderivatives.fulltick.omd.v1.49.premiumunit", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price = ProtoField.new("Price", "hkex.hkexderivatives.fulltick.omd.v1.49.price", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_method = ProtoField.new("Price Method", "hkex.hkexderivatives.fulltick.omd.v1.49.pricemethod", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_quotation_factor = ProtoField.new("Price Quotation Factor", "hkex.hkexderivatives.fulltick.omd.v1.49.pricequotationfactor", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_stabilization = ProtoField.new("Price Stabilization", "hkex.hkexderivatives.fulltick.omd.v1.49.pricestabilization", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.printable = ProtoField.new("Printable", "hkex.hkexderivatives.fulltick.omd.v1.49.printable", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.priority = ProtoField.new("Priority", "hkex.hkexderivatives.fulltick.omd.v1.49.priority", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.put_or_call = ProtoField.new("Put Or Call", "hkex.hkexderivatives.fulltick.omd.v1.49.putorcall", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.quantity = ProtoField.new("Quantity", "hkex.hkexderivatives.fulltick.omd.v1.49.quantity", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.ranking_type = ProtoField.new("Ranking Type", "hkex.hkexderivatives.fulltick.omd.v1.49.rankingtype", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.reported_trade = ProtoField.new("Reported Trade", "hkex.hkexderivatives.fulltick.omd.v1.49.reportedtrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.seconds_to_state_change = ProtoField.new("Seconds To State Change", "hkex.hkexderivatives.fulltick.omd.v1.49.secondstostatechange", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.send_time = ProtoField.new("Send Time", "hkex.hkexderivatives.fulltick.omd.v1.49.sendtime", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexderivatives.fulltick.omd.v1.49.seqnum", ftypes.UINT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_status = ProtoField.new("Series Status", "hkex.hkexderivatives.fulltick.omd.v1.49.seriesstatus", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.settlement_currency_id = ProtoField.new("Settlement Currency Id", "hkex.hkexderivatives.fulltick.omd.v1.49.settlementcurrencyid", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.short_sell = ProtoField.new("Short Sell", "hkex.hkexderivatives.fulltick.omd.v1.49.shortsell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.side = ProtoField.new("Side", "hkex.hkexderivatives.fulltick.omd.v1.49.side", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.source = ProtoField.new("Source", "hkex.hkexderivatives.fulltick.omd.v1.49.source", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.state = ProtoField.new("State", "hkex.hkexderivatives.fulltick.omd.v1.49.state", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.state_level = ProtoField.new("State Level", "hkex.hkexderivatives.fulltick.omd.v1.49.statelevel", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.strike_price = ProtoField.new("Strike Price", "hkex.hkexderivatives.fulltick.omd.v1.49.strikeprice", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.suspended = ProtoField.new("Suspended", "hkex.hkexderivatives.fulltick.omd.v1.49.suspended", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.hkexderivatives.fulltick.omd.v1.49.suspensionindicator", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.symbol = ProtoField.new("Symbol", "hkex.hkexderivatives.fulltick.omd.v1.49.symbol", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.tick_step_size = ProtoField.new("Tick Step Size", "hkex.hkexderivatives.fulltick.omd.v1.49.tickstepsize", ftypes.INT32)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.tradable = ProtoField.new("Tradable", "hkex.hkexderivatives.fulltick.omd.v1.49.tradable", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_condition = ProtoField.new("Trade Condition", "hkex.hkexderivatives.fulltick.omd.v1.49.tradecondition", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_id = ProtoField.new("Trade Id", "hkex.hkexderivatives.fulltick.omd.v1.49.tradeid", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_quantity = ProtoField.new("Trade Quantity", "hkex.hkexderivatives.fulltick.omd.v1.49.tradequantity", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_side = ProtoField.new("Trade Side", "hkex.hkexderivatives.fulltick.omd.v1.49.tradeside", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_state = ProtoField.new("Trade State", "hkex.hkexderivatives.fulltick.omd.v1.49.tradestate", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_time = ProtoField.new("Trade Time", "hkex.hkexderivatives.fulltick.omd.v1.49.tradetime", ftypes.UINT64)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.underlying_price_unit = ProtoField.new("Underlying Price Unit", "hkex.hkexderivatives.fulltick.omd.v1.49.underlyingpriceunit", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.underlying_type = ProtoField.new("Underlying Type", "hkex.hkexderivatives.fulltick.omd.v1.49.underlyingtype", ftypes.UINT8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.undisclosed = ProtoField.new("Undisclosed", "hkex.hkexderivatives.fulltick.omd.v1.49.undisclosed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_12 = ProtoField.new("Unused 12", "hkex.hkexderivatives.fulltick.omd.v1.49.unused12", ftypes.UINT16, nil, base.DEC, 0xFFF0)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_5 = ProtoField.new("Unused 5", "hkex.hkexderivatives.fulltick.omd.v1.49.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_10 = ProtoField.new("Unused Order Type Bit 10", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit10", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_15 = ProtoField.new("Unused Order Type Bit 15", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit15", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_16 = ProtoField.new("Unused Order Type Bit 16", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit16", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_7 = ProtoField.new("Unused Order Type Bit 7", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit7", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_8 = ProtoField.new("Unused Order Type Bit 8", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit8", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_9 = ProtoField.new("Unused Order Type Bit 9", "hkex.hkexderivatives.fulltick.omd.v1.49.unusedordertypebit9", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)

-- Hkex HkexDerivatives FullTick Omd 1.49 Headers
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.message = ProtoField.new("Message", "hkex.hkexderivatives.fulltick.omd.v1.49.message", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexderivatives.fulltick.omd.v1.49.msgheader", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.packet = ProtoField.new("Packet", "hkex.hkexderivatives.fulltick.omd.v1.49.packet", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexderivatives.fulltick.omd.v1.49.packetheader", ftypes.STRING)

-- Hkex HkexDerivatives FullTick 1.49 Application Messages
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.add_order_message = ProtoField.new("Add Order Message", "hkex.hkexderivatives.fulltick.omd.v1.49.addordermessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_price_message = ProtoField.new("Calculated Opening Price Message", "hkex.hkexderivatives.fulltick.omd.v1.49.calculatedopeningpricemessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.class_definition_message = ProtoField.new("Class Definition Message", "hkex.hkexderivatives.fulltick.omd.v1.49.classdefinitionmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combination_definition_message = ProtoField.new("Combination Definition Message", "hkex.hkexderivatives.fulltick.omd.v1.49.combinationdefinitionmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_definition_message = ProtoField.new("Commodity Definition Message", "hkex.hkexderivatives.fulltick.omd.v1.49.commoditydefinitionmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_status_message = ProtoField.new("Commodity Status Message", "hkex.hkexderivatives.fulltick.omd.v1.49.commoditystatusmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.delete_order_message = ProtoField.new("Delete Order Message", "hkex.hkexderivatives.fulltick.omd.v1.49.deleteordermessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexderivatives.fulltick.omd.v1.49.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_alert_message = ProtoField.new("Market Alert Message", "hkex.hkexderivatives.fulltick.omd.v1.49.marketalertmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_status_message = ProtoField.new("Market Status Message", "hkex.hkexderivatives.fulltick.omd.v1.49.marketstatusmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.modify_order_message = ProtoField.new("Modify Order Message", "hkex.hkexderivatives.fulltick.omd.v1.49.modifyordermessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.orderbook_clear_message = ProtoField.new("Orderbook Clear Message", "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookclearmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.quote_request = ProtoField.new("Quote Request", "hkex.hkexderivatives.fulltick.omd.v1.49.quoterequest", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.sequence_reset = ProtoField.new("Sequence Reset", "hkex.hkexderivatives.fulltick.omd.v1.49.sequencereset", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_definition_base_message = ProtoField.new("Series Definition Base Message", "hkex.hkexderivatives.fulltick.omd.v1.49.seriesdefinitionbasemessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_definition_extended_message = ProtoField.new("Series Definition Extended Message", "hkex.hkexderivatives.fulltick.omd.v1.49.seriesdefinitionextendedmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_status_message = ProtoField.new("Series Status Message", "hkex.hkexderivatives.fulltick.omd.v1.49.seriesstatusmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_amendment_message = ProtoField.new("Trade Amendment Message", "hkex.hkexderivatives.fulltick.omd.v1.49.tradeamendmentmessage", ftypes.STRING)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_message = ProtoField.new("Trade Message", "hkex.hkexderivatives.fulltick.omd.v1.49.trademessage", ftypes.STRING)

-- Hkex HkexDerivatives FullTick Omd 1.49 generated fields
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.content_index = ProtoField.new("Content Index", "hkex.hkexderivatives.fulltick.omd.v1.49.contentindex", ftypes.UINT16)
omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.message_index = ProtoField.new("Message Index", "hkex.hkexderivatives.fulltick.omd.v1.49.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexDerivatives FullTick Omd 1.49 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Hkex HkexDerivatives FullTick Omd 1.49 Show Options
omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_application_messages
  end
  if show.headers ~= omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_headers then
    show.headers = omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_headers
  end
  if show.structs ~= omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_structs then
    show.structs = omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_structs
  end
  if show.indexes ~= omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_indexes then
    show.indexes = omi_hkex_hkexderivatives_fulltick_omd_v1_49.prefs.show_indexes
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


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Hkex HkexDerivatives FullTick Omd 1.49 Fields
-----------------------------------------------------------------------

-- Actual Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date = {}

-- Size: Actual Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.size = 8

-- Display: Actual Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.display = function(value)
  return "Actual Start Date: "..value
end

-- Dissect: Actual Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.actual_start_date, range, value, display)

  return offset + length, value
end

-- Actual Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time = {}

-- Size: Actual Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.size = 6

-- Display: Actual Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.display = function(value)
  return "Actual Start Time: "..value
end

-- Dissect: Actual Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.actual_start_time, range, value, display)

  return offset + length, value
end

-- Alert Id
hkex_hkexderivatives_fulltick_omd_v1_49.alert_id = {}

-- Size: Alert Id
hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.size = 2

-- Display: Alert Id
hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.display = function(value)
  return "Alert Id: "..value
end

-- Dissect: Alert Id
hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.alert_id, range, value, display)

  return offset + length, value
end

-- Base Currency
hkex_hkexderivatives_fulltick_omd_v1_49.base_currency = {}

-- Size: Base Currency
hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.size = 3

-- Display: Base Currency
hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.display = function(value)
  return "Base Currency: "..value
end

-- Dissect: Base Currency
hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Bid Ask Flag
hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag = {}

-- Size: Bid Ask Flag
hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.size = 1

-- Display: Bid Ask Flag
hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.bid_ask_flag, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price = {}

-- Size: Calculated Opening Price
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.size = 4

-- Display: Calculated Opening Price
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.display = function(value)
  return "Calculated Opening Price: "..value
end

-- Dissect: Calculated Opening Price
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Calculated Opening Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity = {}

-- Size: Calculated Opening Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.size = 8

-- Display: Calculated Opening Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.display = function(value)
  return "Calculated Opening Quantity: "..value
end

-- Dissect: Calculated Opening Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_quantity, range, value, display)

  return offset + length, value
end

-- Combo Group Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id = {}

-- Size: Combo Group Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.size = 4

-- Display: Combo Group Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Combo Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id = {}

-- Size: Combo Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.size = 4

-- Display: Combo Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.display = function(value)
  return "Combo Orderbook Id: "..value
end

-- Dissect: Combo Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combo_orderbook_id, range, value, display)

  return offset + length, value
end

-- Commodity Code
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code = {}

-- Size: Commodity Code
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size = 2

-- Display: Commodity Code
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.display = function(value)
  return "Commodity Code: "..value
end

-- Dissect: Commodity Code
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_code, range, value, display)

  return offset + length, value
end

-- Commodity Id
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id = {}

-- Size: Commodity Id
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.size = 6

-- Display: Commodity Id
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.display = function(value)
  return "Commodity Id: "..value
end

-- Dissect: Commodity Id
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_id, range, value, display)

  return offset + length, value
end

-- Commodity Name
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name = {}

-- Size: Commodity Name
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.size = 32

-- Display: Commodity Name
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.display = function(value)
  return "Commodity Name: "..value
end

-- Dissect: Commodity Name
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_name, range, value, display)

  return offset + length, value
end

-- Compression Mode
hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode = {}

-- Size: Compression Mode
hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.size = 1

-- Display: Compression Mode
hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.display = function(value)
  return "Compression Mode: "..value
end

-- Dissect: Compression Mode
hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.compression_mode, range, value, display)

  return offset + length, value
end

-- Content
hkex_hkexderivatives_fulltick_omd_v1_49.content = {}

-- Size: Content
hkex_hkexderivatives_fulltick_omd_v1_49.content.size = 320

-- Display: Content
hkex_hkexderivatives_fulltick_omd_v1_49.content.display = function(value)
  return "Content: "..value
end

-- Dissect: Content
hkex_hkexderivatives_fulltick_omd_v1_49.content.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.content.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.content.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.content, range, value, display)

  return offset + length, value
end

-- Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size = {}

-- Size: Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.size = 4

-- Display: Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Contract Size Extended
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended = {}

-- Size: Contract Size Extended
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.size = 8

-- Display: Contract Size Extended
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.display = function(value)
  return "Contract Size Extended: "..value
end

-- Dissect: Contract Size Extended
hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.contract_size_extended, range, value, display)

  return offset + length, value
end

-- Country
hkex_hkexderivatives_fulltick_omd_v1_49.country = {}

-- Size: Country
hkex_hkexderivatives_fulltick_omd_v1_49.country.size = 1

-- Display: Country
hkex_hkexderivatives_fulltick_omd_v1_49.country.display = function(value)
  return "Country: "..value
end

-- Dissect: Country
hkex_hkexderivatives_fulltick_omd_v1_49.country.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.country.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.country.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.country, range, value, display)

  return offset + length, value
end

-- Date Time First Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading = {}

-- Size: Date Time First Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.size = 8

-- Display: Date Time First Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.display = function(value)
  return "Date Time First Trading: "..value
end

-- Dissect: Date Time First Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.date_time_first_trading, range, value, display)

  return offset + length, value
end

-- Date Time Last Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading = {}

-- Size: Date Time Last Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.size = 8

-- Display: Date Time Last Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.display = function(value)
  return "Date Time Last Trading: "..value
end

-- Dissect: Date Time Last Trading
hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.date_time_last_trading, range, value, display)

  return offset + length, value
end

-- Deal Info Uint 162
hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162 = {}

-- Size: Deal Info Uint 162
hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.size = 2

-- Display: Deal Info Uint 162
hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.display = function(value)
  return "Deal Info Uint 162: "..value
end

-- Dissect: Deal Info Uint 162
hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.deal_info_uint_162, range, value, display)

  return offset + length, value
end

-- Decimal In Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size = {}

-- Size: Decimal In Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.size = 2

-- Display: Decimal In Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.display = function(value)
  return "Decimal In Contract Size: "..value
end

-- Dissect: Decimal In Contract Size
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_contract_size, range, value, display)

  return offset + length, value
end

-- Decimal In Premium
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium = {}

-- Size: Decimal In Premium
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.size = 2

-- Display: Decimal In Premium
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.display = function(value)
  return "Decimal In Premium: "..value
end

-- Dissect: Decimal In Premium
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_premium, range, value, display)

  return offset + length, value
end

-- Decimal In Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price = {}

-- Size: Decimal In Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.size = 2

-- Display: Decimal In Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.display = function(value)
  return "Decimal In Strike Price: "..value
end

-- Dissect: Decimal In Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_strike_price, range, value, display)

  return offset + length, value
end

-- Decimal In Underlying Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price = {}

-- Size: Decimal In Underlying Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.size = 2

-- Display: Decimal In Underlying Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.display = function(value)
  return "Decimal In Underlying Price: "..value
end

-- Dissect: Decimal In Underlying Price
hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.decimal_in_underlying_price, range, value, display)

  return offset + length, value
end

-- Disaster Recovery Status
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status = {}

-- Size: Disaster Recovery Status
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.size = 4

-- Display: Disaster Recovery Status
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.display = function(value)
  if value == 1 then
    return "Disaster Recovery Status: In Progress (1)"
  end
  if value == 2 then
    return "Disaster Recovery Status: Completed (2)"
  end

  return "Disaster Recovery Status: Unknown("..value..")"
end

-- Dissect: Disaster Recovery Status
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.disaster_recovery_status, range, value, display)

  return offset + length, value
end

-- Effective Exp Date
hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date = {}

-- Size: Effective Exp Date
hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.size = 8

-- Display: Effective Exp Date
hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.display = function(value)
  return "Effective Exp Date: "..value
end

-- Dissect: Effective Exp Date
hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.effective_exp_date, range, value, display)

  return offset + length, value
end

-- Effective Tomorrow
hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow = {}

-- Size: Effective Tomorrow
hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.size = 1

-- Display: Effective Tomorrow
hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.display = function(value)
  if value == 0 then
    return "Effective Tomorrow: False (0)"
  end
  if value == 1 then
    return "Effective Tomorrow: True (1)"
  end

  return "Effective Tomorrow: Unknown("..value..")"
end

-- Dissect: Effective Tomorrow
hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.effective_tomorrow, range, value, display)

  return offset + length, value
end

-- Expiration Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date = {}

-- Size: Expiration Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.size = 8

-- Display: Expiration Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiry Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date = {}

-- Size: Expiry Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.size = 2

-- Display: Expiry Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_hkexderivatives_fulltick_omd_v1_49.filler_1 = {}

-- Size: Filler 1
hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size = 1

-- Display: Filler 1
hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_hkexderivatives_fulltick_omd_v1_49.filler_2 = {}

-- Size: Filler 2
hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size = 2

-- Display: Filler 2
hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_hkexderivatives_fulltick_omd_v1_49.filler_3 = {}

-- Size: Filler 3
hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size = 3

-- Display: Filler 3
hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_hkexderivatives_fulltick_omd_v1_49.filler_4 = {}

-- Size: Filler 4
hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.size = 4

-- Display: Filler 4
hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Financial Product
hkex_hkexderivatives_fulltick_omd_v1_49.financial_product = {}

-- Size: Financial Product
hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.size = 1

-- Display: Financial Product
hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Header
hkex_hkexderivatives_fulltick_omd_v1_49.header = {}

-- Size: Header
hkex_hkexderivatives_fulltick_omd_v1_49.header.size = 320

-- Display: Header
hkex_hkexderivatives_fulltick_omd_v1_49.header.display = function(value)
  return "Header: "..value
end

-- Dissect: Header
hkex_hkexderivatives_fulltick_omd_v1_49.header.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.header.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.header.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.header, range, value, display)

  return offset + length, value
end

-- Info Type
hkex_hkexderivatives_fulltick_omd_v1_49.info_type = {}

-- Size: Info Type
hkex_hkexderivatives_fulltick_omd_v1_49.info_type.size = 1

-- Display: Info Type
hkex_hkexderivatives_fulltick_omd_v1_49.info_type.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.info_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.info_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.info_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.info_type, range, value, display)

  return offset + length, value
end

-- Instrument Class Id
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id = {}

-- Size: Instrument Class Id
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.size = 14

-- Display: Instrument Class Id
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.display = function(value)
  return "Instrument Class Id: "..value
end

-- Dissect: Instrument Class Id
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_class_id, range, value, display)

  return offset + length, value
end

-- Instrument Class Name
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name = {}

-- Size: Instrument Class Name
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.size = 32

-- Display: Instrument Class Name
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.display = function(value)
  return "Instrument Class Name: "..value
end

-- Dissect: Instrument Class Name
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_class_name, range, value, display)

  return offset + length, value
end

-- Instrument Group
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group = {}

-- Size: Instrument Group
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.size = 1

-- Display: Instrument Group
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.instrument_group, range, value, display)

  return offset + length, value
end

-- Is Fractions
hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions = {}

-- Size: Is Fractions
hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.size = 1

-- Display: Is Fractions
hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.display = function(value)
  if value == "1" then
    return "Is Fractions: Yes (1)"
  end
  if value == "2" then
    return "Is Fractions: No (2)"
  end

  return "Is Fractions: Unknown("..value..")"
end

-- Dissect: Is Fractions
hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.is_fractions, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_hkexderivatives_fulltick_omd_v1_49.isin_code = {}

-- Size: Isin Code
hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.size = 12

-- Display: Isin Code
hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Last Fragment
hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment = {}

-- Size: Last Fragment
hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.size = 1

-- Display: Last Fragment
hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.display = function(value)
  if value == "Y" then
    return "Last Fragment: Complete (Y)"
  end
  if value == "M" then
    return "Last Fragment: Not Complete (M)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Leg Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id = {}

-- Size: Leg Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.size = 4

-- Display: Leg Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.display = function(value)
  return "Leg Orderbook Id: "..value
end

-- Dissect: Leg Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_orderbook_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio = {}

-- Size: Leg Ratio
hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.size = 4

-- Display: Leg Ratio
hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
hkex_hkexderivatives_fulltick_omd_v1_49.leg_side = {}

-- Size: Leg Side
hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.size = 1

-- Display: Leg Side
hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Locked
hkex_hkexderivatives_fulltick_omd_v1_49.locked = {}

-- Size: Locked
hkex_hkexderivatives_fulltick_omd_v1_49.locked.size = 1

-- Display: Locked
hkex_hkexderivatives_fulltick_omd_v1_49.locked.display = function(value)
  if value == 1 then
    return "Locked: Yes (1)"
  end
  if value == 2 then
    return "Locked: No (2)"
  end

  return "Locked: Unknown("..value..")"
end

-- Dissect: Locked
hkex_hkexderivatives_fulltick_omd_v1_49.locked.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.locked.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.locked.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.locked, range, value, display)

  return offset + length, value
end

-- Lot Type
hkex_hkexderivatives_fulltick_omd_v1_49.lot_type = {}

-- Size: Lot Type
hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.size = 1

-- Display: Lot Type
hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Market
hkex_hkexderivatives_fulltick_omd_v1_49.market = {}

-- Size: Market
hkex_hkexderivatives_fulltick_omd_v1_49.market.size = 1

-- Display: Market
hkex_hkexderivatives_fulltick_omd_v1_49.market.display = function(value)
  if value == 1 then
    return "Market: Cesc Index Futures And Options (1)"
  end
  if value == 2 then
    return "Market: Stock Futures In Omdd Partition 1 (2)"
  end
  if value == 3 then
    return "Market: Three Year Exchange Fund Note Futures (3)"
  end
  if value == 16 then
    return "Market: Mini Hang Seng Index Futures And Options (16)"
  end
  if value == 18 then
    return "Market: Weekly Stock Options In Omdd Partition 1 (18)"
  end
  if value == 20 then
    return "Market: Stock Options In Omdd Partition 1 (20)"
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
    return "Market: Hang Seng Index Futures And Options (34)"
  end
  if value == 35 then
    return "Market: Flexible Hang Seng Index Options (35)"
  end
  if value == 37 then
    return "Market: Flexible Hang Seng China Enterprises Index Options (37)"
  end
  if value == 38 then
    return "Market: Hang Seng China Enterprises Index Futures And Options (38)"
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
    return "Market: Renminbi Currency Futures And Options (70)"
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
    return "Market: Hang Seng Tech Index Futures And Options (86)"
  end
  if value == 87 then
    return "Market: Hang Seng Index And Hang Seng China Enterprises Index Gross And Net Total Return Index Futures (87)"
  end
  if value == 93 then
    return "Market: Weekly Hang Seng China Enterprises Index Options (93)"
  end
  if value == 96 then
    return "Market: Ibovespa Index Futures (96)"
  end
  if value == 99 then
    return "Market: Sp Bse Sensex Index Futures (99)"
  end
  if value == 102 then
    return "Market: Ftse And Jse Top 40 Index Futures (102)"
  end
  if value == 108 then
    return "Market: Micex Index Futures (108)"
  end
  if value == 111 then
    return "Market: Msci Ax J Futures Ntr (111)"
  end
  if value == 112 then
    return "Market: Physically Settled Usd Silver Futures (112)"
  end
  if value == 115 then
    return "Market: Physically Settled Cnh Silver Futures (115)"
  end
  if value == 116 then
    return "Market: Physically Settled Cnh Gold Futures (116)"
  end
  if value == 117 then
    return "Market: Physically Settled Usd Gold Futures (117)"
  end
  if value == 118 then
    return "Market: Five Year China Government Bond Futures (118)"
  end
  if value == 120 then
    return "Market: Usd Base And Ferrous Futures (120)"
  end
  if value == 122 then
    return "Market: Cnh London Metal Mini Futures (122)"
  end
  if value == 125 then
    return "Market: Cash Settled Rmb Currency Futures (125)"
  end
  if value == 141 then
    return "Market: Cash Settled Cnhusd Futures (141)"
  end
  if value == 143 then
    return "Market: Stock Futures In Omdd Partition 3 (143)"
  end
  if value == 145 then
    return "Market: Weekly Stock Options In Omdd Partition 3 (145)"
  end
  if value == 153 then
    return "Market: Msci China A 50 Connect Index Futures (153)"
  end
  if value == 160 then
    return "Market: Msci Jpy Index Futures Price And Ntr (160)"
  end
  if value == 161 then
    return "Market: Msci Usd Index Futures Ntr (161)"
  end
  if value == 163 then
    return "Market: Msci Usd Index Futures And Options Price 1 (163)"
  end
  if value == 164 then
    return "Market: Msci Usd Index Futures And Options Price 2 (164)"
  end
  if value == 166 then
    return "Market: Msci Usd Index Futures And Options Price 3 (166)"
  end
  if value == 168 then
    return "Market: Msci Usd Index Futures And Options Price 4 (168)"
  end
  if value == 170 then
    return "Market: Msci Sgd Index Futures Price (170)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
hkex_hkexderivatives_fulltick_omd_v1_49.market.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market, range, value, display)

  return offset + length, value
end

-- Modifier
hkex_hkexderivatives_fulltick_omd_v1_49.modifier = {}

-- Size: Modifier
hkex_hkexderivatives_fulltick_omd_v1_49.modifier.size = 1

-- Display: Modifier
hkex_hkexderivatives_fulltick_omd_v1_49.modifier.display = function(value)
  return "Modifier: "..value
end

-- Dissect: Modifier
hkex_hkexderivatives_fulltick_omd_v1_49.modifier.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.modifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.modifier, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexderivatives_fulltick_omd_v1_49.msg_count = {}

-- Size: Msg Count
hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.size = 1

-- Display: Msg Count
hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexderivatives_fulltick_omd_v1_49.msg_size = {}

-- Size: Msg Size
hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.size = 2

-- Display: Msg Size
hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexderivatives_fulltick_omd_v1_49.msg_type = {}

-- Size: Msg Type
hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.size = 2

-- Display: Msg Type
hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.display = function(value)
  if value == 364 then
    return "Msg Type: Calculated Opening Price Message (364)"
  end
  if value == 100 then
    return "Msg Type: Sequence Reset (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 323 then
    return "Msg Type: Market Alert Message (323)"
  end
  if value == 330 then
    return "Msg Type: Add Order Message (330)"
  end
  if value == 331 then
    return "Msg Type: Modify Order Message (331)"
  end
  if value == 332 then
    return "Msg Type: Delete Order Message (332)"
  end
  if value == 335 then
    return "Msg Type: Orderbook Clear Message (335)"
  end
  if value == 336 then
    return "Msg Type: Quote Request (336)"
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
  if value == 350 then
    return "Msg Type: Trade Message (350)"
  end
  if value == 356 then
    return "Msg Type: Trade Amendment Message (356)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no = {}

-- Size: New Seq No
hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- No Lines
hkex_hkexderivatives_fulltick_omd_v1_49.no_lines = {}

-- Size: No Lines
hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.size = 1

-- Display: No Lines
hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.display = function(value)
  return "No Lines: "..value
end

-- Dissect: No Lines
hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.no_lines, range, value, display)

  return offset + length, value
end

-- Nominal Value
hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value = {}

-- Size: Nominal Value
hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.size = 8

-- Display: Nominal Value
hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals Price
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price = {}

-- Size: Number Of Decimals Price
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.size = 2

-- Display: Number Of Decimals Price
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.display = function(value)
  return "Number Of Decimals Price: "..value
end

-- Dissect: Number Of Decimals Price
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_decimals_price, range, value, display)

  return offset + length, value
end

-- Number Of Legs
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs = {}

-- Size: Number Of Legs
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.size = 1

-- Display: Number Of Legs
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Lots
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots = {}

-- Size: Number Of Lots
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.size = 4

-- Display: Number Of Lots
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.display = function(value)
  return "Number Of Lots: "..value
end

-- Dissect: Number Of Lots
hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.number_of_lots, range, value, display)

  return offset + length, value
end

-- Order Book Position
hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position = {}

-- Size: Order Book Position
hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.size = 4

-- Display: Order Book Position
hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_hkexderivatives_fulltick_omd_v1_49.order_id = {}

-- Size: Order Id
hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size = 8

-- Display: Order Id
hkex_hkexderivatives_fulltick_omd_v1_49.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_hkexderivatives_fulltick_omd_v1_49.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_id, range, value, display)

  return offset + length, value
end

-- Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id = {}

-- Size: Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size = 4

-- Display: Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size = {}

-- Size: Pkt Size
hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Planned Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date = {}

-- Size: Planned Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.size = 8

-- Display: Planned Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.display = function(value)
  return "Planned Start Date: "..value
end

-- Dissect: Planned Start Date
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.planned_start_date, range, value, display)

  return offset + length, value
end

-- Planned Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time = {}

-- Size: Planned Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.size = 6

-- Display: Planned Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.display = function(value)
  return "Planned Start Time: "..value
end

-- Dissect: Planned Start Time
hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.planned_start_time, range, value, display)

  return offset + length, value
end

-- Premium Unit
hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit = {}

-- Size: Premium Unit
hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.size = 1

-- Display: Premium Unit
hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.premium_unit, range, value, display)

  return offset + length, value
end

-- Price
hkex_hkexderivatives_fulltick_omd_v1_49.price = {}

-- Size: Price
hkex_hkexderivatives_fulltick_omd_v1_49.price.size = 4

-- Display: Price
hkex_hkexderivatives_fulltick_omd_v1_49.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
hkex_hkexderivatives_fulltick_omd_v1_49.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price, range, value, display)

  return offset + length, value
end

-- Price Method
hkex_hkexderivatives_fulltick_omd_v1_49.price_method = {}

-- Size: Price Method
hkex_hkexderivatives_fulltick_omd_v1_49.price_method.size = 1

-- Display: Price Method
hkex_hkexderivatives_fulltick_omd_v1_49.price_method.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.price_method.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.price_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.price_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_method, range, value, display)

  return offset + length, value
end

-- Price Quotation Factor
hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor = {}

-- Size: Price Quotation Factor
hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.size = 4

-- Display: Price Quotation Factor
hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.display = function(value)
  return "Price Quotation Factor: "..value
end

-- Dissect: Price Quotation Factor
hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_quotation_factor, range, value, display)

  return offset + length, value
end

-- Priority
hkex_hkexderivatives_fulltick_omd_v1_49.priority = {}

-- Size: Priority
hkex_hkexderivatives_fulltick_omd_v1_49.priority.size = 1

-- Display: Priority
hkex_hkexderivatives_fulltick_omd_v1_49.priority.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.priority.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.priority, range, value, display)

  return offset + length, value
end

-- Put Or Call
hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call = {}

-- Size: Put Or Call
hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.size = 1

-- Display: Put Or Call
hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.quantity = {}

-- Size: Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.quantity.size = 4

-- Display: Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.quantity, range, value, display)

  return offset + length, value
end

-- Ranking Type
hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type = {}

-- Size: Ranking Type
hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.size = 2

-- Display: Ranking Type
hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.ranking_type, range, value, display)

  return offset + length, value
end

-- Seconds To State Change
hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change = {}

-- Size: Seconds To State Change
hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.size = 2

-- Display: Seconds To State Change
hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.display = function(value)
  return "Seconds To State Change: "..value
end

-- Dissect: Seconds To State Change
hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.seconds_to_state_change, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexderivatives_fulltick_omd_v1_49.send_time = {}

-- Size: Send Time
hkex_hkexderivatives_fulltick_omd_v1_49.send_time.size = 8

-- Display: Send Time
hkex_hkexderivatives_fulltick_omd_v1_49.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_hkexderivatives_fulltick_omd_v1_49.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_hkexderivatives_fulltick_omd_v1_49.seq_num = {}

-- Size: Seq Num
hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.size = 4

-- Display: Seq Num
hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Series Status
hkex_hkexderivatives_fulltick_omd_v1_49.series_status = {}

-- Size: Series Status
hkex_hkexderivatives_fulltick_omd_v1_49.series_status.size = 1

-- Display: Series Status
hkex_hkexderivatives_fulltick_omd_v1_49.series_status.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.series_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.series_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_status, range, value, display)

  return offset + length, value
end

-- Settlement Currency Id
hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id = {}

-- Size: Settlement Currency Id
hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.size = 32

-- Display: Settlement Currency Id
hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.display = function(value)
  return "Settlement Currency Id: "..value
end

-- Dissect: Settlement Currency Id
hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.settlement_currency_id, range, value, display)

  return offset + length, value
end

-- Side
hkex_hkexderivatives_fulltick_omd_v1_49.side = {}

-- Size: Side
hkex_hkexderivatives_fulltick_omd_v1_49.side.size = 1

-- Display: Side
hkex_hkexderivatives_fulltick_omd_v1_49.side.display = function(value)
  if value == 0 then
    return "Side: Bid (0)"
  end
  if value == 1 then
    return "Side: Offer (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_hkexderivatives_fulltick_omd_v1_49.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.side, range, value, display)

  return offset + length, value
end

-- Source
hkex_hkexderivatives_fulltick_omd_v1_49.source = {}

-- Size: Source
hkex_hkexderivatives_fulltick_omd_v1_49.source.size = 1

-- Display: Source
hkex_hkexderivatives_fulltick_omd_v1_49.source.display = function(value)
  if value == "H" then
    return "Source: Trading System (H)"
  end
  if value == "M" then
    return "Source: Other Market Alerts (M)"
  end

  return "Source: Unknown("..value..")"
end

-- Dissect: Source
hkex_hkexderivatives_fulltick_omd_v1_49.source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.source, range, value, display)

  return offset + length, value
end

-- State
hkex_hkexderivatives_fulltick_omd_v1_49.state = {}

-- Size: State
hkex_hkexderivatives_fulltick_omd_v1_49.state.size = 2

-- Display: State
hkex_hkexderivatives_fulltick_omd_v1_49.state.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.state, range, value, display)

  return offset + length, value
end

-- State Level
hkex_hkexderivatives_fulltick_omd_v1_49.state_level = {}

-- Size: State Level
hkex_hkexderivatives_fulltick_omd_v1_49.state_level.size = 2

-- Display: State Level
hkex_hkexderivatives_fulltick_omd_v1_49.state_level.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.state_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.state_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.state_level, range, value, display)

  return offset + length, value
end

-- Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.strike_price = {}

-- Size: Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.size = 4

-- Display: Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Suspended
hkex_hkexderivatives_fulltick_omd_v1_49.suspended = {}

-- Size: Suspended
hkex_hkexderivatives_fulltick_omd_v1_49.suspended.size = 1

-- Display: Suspended
hkex_hkexderivatives_fulltick_omd_v1_49.suspended.display = function(value)
  if value == "Y" then
    return "Suspended: Yes (Y)"
  end
  if value == "N" then
    return "Suspended: No (N)"
  end

  return "Suspended: Unknown("..value..")"
end

-- Dissect: Suspended
hkex_hkexderivatives_fulltick_omd_v1_49.suspended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.suspended, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
hkex_hkexderivatives_fulltick_omd_v1_49.symbol = {}

-- Size: Symbol
hkex_hkexderivatives_fulltick_omd_v1_49.symbol.size = 32

-- Display: Symbol
hkex_hkexderivatives_fulltick_omd_v1_49.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
hkex_hkexderivatives_fulltick_omd_v1_49.symbol.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Step Size
hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size = {}

-- Size: Tick Step Size
hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.size = 4

-- Display: Tick Step Size
hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.display = function(value)
  return "Tick Step Size: "..value
end

-- Dissect: Tick Step Size
hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.tick_step_size, range, value, display)

  return offset + length, value
end

-- Tradable
hkex_hkexderivatives_fulltick_omd_v1_49.tradable = {}

-- Size: Tradable
hkex_hkexderivatives_fulltick_omd_v1_49.tradable.size = 1

-- Display: Tradable
hkex_hkexderivatives_fulltick_omd_v1_49.tradable.display = function(value)
  if value == 1 then
    return "Tradable: Yes (1)"
  end
  if value == 2 then
    return "Tradable: No (2)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
hkex_hkexderivatives_fulltick_omd_v1_49.tradable.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.tradable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_hkexderivatives_fulltick_omd_v1_49.trade_id = {}

-- Size: Trade Id
hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.size = 8

-- Display: Trade Id
hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity = {}

-- Size: Trade Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.size = 8

-- Display: Trade Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_quantity, range, value, display)

  return offset + length, value
end

-- Trade Side
hkex_hkexderivatives_fulltick_omd_v1_49.trade_side = {}

-- Size: Trade Side
hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.size = 1

-- Display: Trade Side
hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_side, range, value, display)

  return offset + length, value
end

-- Trade State
hkex_hkexderivatives_fulltick_omd_v1_49.trade_state = {}

-- Size: Trade State
hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.size = 1

-- Display: Trade State
hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_state, range, value, display)

  return offset + length, value
end

-- Trade Time
hkex_hkexderivatives_fulltick_omd_v1_49.trade_time = {}

-- Size: Trade Time
hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.size = 8

-- Display: Trade Time
hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Underlying Price Unit
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit = {}

-- Size: Underlying Price Unit
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.size = 1

-- Display: Underlying Price Unit
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.underlying_price_unit, range, value, display)

  return offset + length, value
end

-- Underlying Type
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type = {}

-- Size: Underlying Type
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.size = 1

-- Display: Underlying Type
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.display = function(value)
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
hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.underlying_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexDerivatives FullTick Omd 1.49
-----------------------------------------------------------------------

-- Trade Amendment Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message = {}

-- Size: Trade Amendment Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size

-- Display: Trade Amendment Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amendment Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Id: Uint64
  index, trade_id = hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexderivatives_fulltick_omd_v1_49.price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.dissect(buffer, index, packet, parent)

  -- Trade State: Uint8
  index, trade_state = hkex_hkexderivatives_fulltick_omd_v1_49.trade_state.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amendment Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_amendment_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition = {}

-- Size: Trade Condition
hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.size = 2

-- Display: Trade Condition
hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Late Trade flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Late Trade"
  end
  -- Is Internal Trade Or Cross flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Internal Trade Or Cross"
  end
  -- Is Buy Write flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Buy Write"
  end
  -- Is Off Market flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Off Market"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Condition
hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.bits = function(range, value, packet, parent)

  -- Late Trade: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.late_trade, range, value)

  -- Internal Trade Or Cross: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.internal_trade_or_cross, range, value)

  -- Buy Write: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.buy_write, range, value)

  -- Off Market: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.off_market, range, value)

  -- Unused 12: 12 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_12, range, value)
end

-- Dissect: Trade Condition
hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.dissect = function(buffer, offset, packet, parent)
  local size = hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.display(range, value, packet, parent)
  local element = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_condition, range, display)

  if show.structs then
    hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Deal Type
hkex_hkexderivatives_fulltick_omd_v1_49.deal_type = {}

-- Size: Deal Type
hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.size = 1

-- Display: Deal Type
hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Printable flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Printable"
  end
  -- Is Occurred At Cross flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Occurred At Cross"
  end
  -- Is Reported Trade flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Reported Trade"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Deal Type
hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.bits = function(range, value, packet, parent)

  -- Printable: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.printable, range, value)

  -- Occurred At Cross: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.occurred_at_cross, range, value)

  -- Reported Trade: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.reported_trade, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_5, range, value)
end

-- Dissect: Deal Type
hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.dissect = function(buffer, offset, packet, parent)
  local size = hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.display(range, value, packet, parent)
  local element = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.deal_type, range, display)

  if show.structs then
    hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_message = {}

-- Size: Trade Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.size

-- Display: Trade Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexderivatives_fulltick_omd_v1_49.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint64
  index, trade_id = hkex_hkexderivatives_fulltick_omd_v1_49.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_hkexderivatives_fulltick_omd_v1_49.combo_group_id.dissect(buffer, index, packet, parent)

  -- Trade Side: Uint8
  index, trade_side = hkex_hkexderivatives_fulltick_omd_v1_49.trade_side.dissect(buffer, index, packet, parent)

  -- Deal Type: Struct of 4 fields
  index, deal_type = hkex_hkexderivatives_fulltick_omd_v1_49.deal_type.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 5 fields
  index, trade_condition = hkex_hkexderivatives_fulltick_omd_v1_49.trade_condition.dissect(buffer, index, packet, parent)

  -- Deal Info Uint 162: Uint16
  index, deal_info_uint_162 = hkex_hkexderivatives_fulltick_omd_v1_49.deal_info_uint_162.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_hkexderivatives_fulltick_omd_v1_49.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_hkexderivatives_fulltick_omd_v1_49.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.trade_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message = {}

-- Size: Commodity Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.suspended.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.locked.size

-- Display: Commodity Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint16
  index, commodity_code = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect(buffer, index, packet, parent)

  -- Suspended: String
  index, suspended = hkex_hkexderivatives_fulltick_omd_v1_49.suspended.dissect(buffer, index, packet, parent)

  -- Locked: Uint8
  index, locked = hkex_hkexderivatives_fulltick_omd_v1_49.locked.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_status_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message = {}

-- Size: Series Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.series_status.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size

-- Display: Series Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_hkexderivatives_fulltick_omd_v1_49.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: Uint8
  index, series_status = hkex_hkexderivatives_fulltick_omd_v1_49.series_status.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_status_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message = {}

-- Size: Market Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.state_level.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.market.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.state.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.priority.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size

-- Display: Market Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- State Level: Uint16
  index, state_level = hkex_hkexderivatives_fulltick_omd_v1_49.state_level.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_hkexderivatives_fulltick_omd_v1_49.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect(buffer, index, packet, parent)

  -- Actual Start Date: String
  index, actual_start_date = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_date.dissect(buffer, index, packet, parent)

  -- Actual Start Time: String
  index, actual_start_time = hkex_hkexderivatives_fulltick_omd_v1_49.actual_start_time.dissect(buffer, index, packet, parent)

  -- Planned Start Date: String
  index, planned_start_date = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_date.dissect(buffer, index, packet, parent)

  -- Planned Start Time: String
  index, planned_start_time = hkex_hkexderivatives_fulltick_omd_v1_49.planned_start_time.dissect(buffer, index, packet, parent)

  -- Seconds To State Change: Uint16
  index, seconds_to_state_change = hkex_hkexderivatives_fulltick_omd_v1_49.seconds_to_state_change.dissect(buffer, index, packet, parent)

  -- State: Uint16
  index, state = hkex_hkexderivatives_fulltick_omd_v1_49.state.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_hkexderivatives_fulltick_omd_v1_49.priority.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_status_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message = {}

-- Size: Combination Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.size

-- Display: Combination Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Combo Orderbook Id: Uint32
  index, combo_orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.combo_orderbook_id.dissect(buffer, index, packet, parent)

  -- Leg Orderbook Id: Uint32
  index, leg_orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.leg_orderbook_id.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.dissect(buffer, index, packet, parent)

  -- Leg Side: String
  index, leg_side = hkex_hkexderivatives_fulltick_omd_v1_49.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Int32
  index, leg_ratio = hkex_hkexderivatives_fulltick_omd_v1_49.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.combination_definition_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Definition Extended Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message = {}

-- Size: Series Definition Extended Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.symbol.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.country.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.market.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.modifier.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.series_status.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price_method.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.size

-- Display: Series Definition Extended Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Definition Extended Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = hkex_hkexderivatives_fulltick_omd_v1_49.symbol.dissect(buffer, index, packet, parent)

  -- Country: Uint8
  index, country = hkex_hkexderivatives_fulltick_omd_v1_49.country.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_hkexderivatives_fulltick_omd_v1_49.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.dissect(buffer, index, packet, parent)

  -- Modifier: Uint8
  index, modifier = hkex_hkexderivatives_fulltick_omd_v1_49.modifier.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint16
  index, expiry_date = hkex_hkexderivatives_fulltick_omd_v1_49.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: Int32
  index, strike_price = hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Size Extended: Int64
  index, contract_size_extended = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size_extended.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.dissect(buffer, index, packet, parent)

  -- Series Status: Uint8
  index, series_status = hkex_hkexderivatives_fulltick_omd_v1_49.series_status.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor: Int32
  index, price_quotation_factor = hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.dissect(buffer, index, packet, parent)

  -- Price Method: Uint8
  index, price_method = hkex_hkexderivatives_fulltick_omd_v1_49.price_method.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect(buffer, index, packet, parent)

  -- Effective Exp Date: String
  index, effective_exp_date = hkex_hkexderivatives_fulltick_omd_v1_49.effective_exp_date.dissect(buffer, index, packet, parent)

  -- Date Time Last Trading: Int64
  index, date_time_last_trading = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_last_trading.dissect(buffer, index, packet, parent)

  -- Date Time First Trading: Int64
  index, date_time_first_trading = hkex_hkexderivatives_fulltick_omd_v1_49.date_time_first_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Definition Extended Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_definition_extended_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Definition Base Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message = {}

-- Size: Series Definition Base Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.symbol.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size

-- Display: Series Definition Base Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Definition Base Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = hkex_hkexderivatives_fulltick_omd_v1_49.symbol.dissect(buffer, index, packet, parent)

  -- Financial Product: Uint8
  index, financial_product = hkex_hkexderivatives_fulltick_omd_v1_49.financial_product.dissect(buffer, index, packet, parent)

  -- Number Of Decimals Price: Uint16
  index, number_of_decimals_price = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_decimals_price.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Uint8
  index, number_of_legs = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_legs.dissect(buffer, index, packet, parent)

  -- Strike Price: Int32
  index, strike_price = hkex_hkexderivatives_fulltick_omd_v1_49.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = hkex_hkexderivatives_fulltick_omd_v1_49.expiration_date.dissect(buffer, index, packet, parent)

  -- Decimal In Strike Price: Uint16
  index, decimal_in_strike_price = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Uint8
  index, put_or_call = hkex_hkexderivatives_fulltick_omd_v1_49.put_or_call.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Definition Base Message
hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.series_definition_base_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.fields(buffer, offset, packet, parent)
  end
end

-- Class Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message = {}

-- Size: Class Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.country.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.market.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.modifier.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.tradable.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size

-- Display: Class Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Country: Uint8
  index, country = hkex_hkexderivatives_fulltick_omd_v1_49.country.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_hkexderivatives_fulltick_omd_v1_49.market.dissect(buffer, index, packet, parent)

  -- Instrument Group: Uint8
  index, instrument_group = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_group.dissect(buffer, index, packet, parent)

  -- Modifier: Uint8
  index, modifier = hkex_hkexderivatives_fulltick_omd_v1_49.modifier.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect(buffer, index, packet, parent)

  -- Price Quotation Factor: Int32
  index, price_quotation_factor = hkex_hkexderivatives_fulltick_omd_v1_49.price_quotation_factor.dissect(buffer, index, packet, parent)

  -- Contract Size: Uint32
  index, contract_size = hkex_hkexderivatives_fulltick_omd_v1_49.contract_size.dissect(buffer, index, packet, parent)

  -- Decimal In Strike Price: Uint16
  index, decimal_in_strike_price = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_strike_price.dissect(buffer, index, packet, parent)

  -- Decimal In Contract Size: Uint16
  index, decimal_in_contract_size = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_contract_size.dissect(buffer, index, packet, parent)

  -- Decimal In Premium: Uint16
  index, decimal_in_premium = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_premium.dissect(buffer, index, packet, parent)

  -- Ranking Type: Uint16
  index, ranking_type = hkex_hkexderivatives_fulltick_omd_v1_49.ranking_type.dissect(buffer, index, packet, parent)

  -- Tradable: Uint8
  index, tradable = hkex_hkexderivatives_fulltick_omd_v1_49.tradable.dissect(buffer, index, packet, parent)

  -- Premium Unit: Uint8
  index, premium_unit = hkex_hkexderivatives_fulltick_omd_v1_49.premium_unit.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.dissect(buffer, index, packet, parent)

  -- Instrument Class Id: String
  index, instrument_class_id = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_id.dissect(buffer, index, packet, parent)

  -- Instrument Class Name: String
  index, instrument_class_name = hkex_hkexderivatives_fulltick_omd_v1_49.instrument_class_name.dissect(buffer, index, packet, parent)

  -- Is Fractions: String
  index, is_fractions = hkex_hkexderivatives_fulltick_omd_v1_49.is_fractions.dissect(buffer, index, packet, parent)

  -- Settlement Currency Id: String
  index, settlement_currency_id = hkex_hkexderivatives_fulltick_omd_v1_49.settlement_currency_id.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Tick Step Size: Int32
  index, tick_step_size = hkex_hkexderivatives_fulltick_omd_v1_49.tick_step_size.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.class_definition_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message = {}

-- Size: Commodity Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.size

-- Display: Commodity Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint16
  index, commodity_code = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_code.dissect(buffer, index, packet, parent)

  -- Decimal In Underlying Price: Uint16
  index, decimal_in_underlying_price = hkex_hkexderivatives_fulltick_omd_v1_49.decimal_in_underlying_price.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_hkexderivatives_fulltick_omd_v1_49.isin_code.dissect(buffer, index, packet, parent)

  -- Base Currency: String
  index, base_currency = hkex_hkexderivatives_fulltick_omd_v1_49.base_currency.dissect(buffer, index, packet, parent)

  -- Underlying Price Unit: Uint8
  index, underlying_price_unit = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_price_unit.dissect(buffer, index, packet, parent)

  -- Commodity Name: String
  index, commodity_name = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_name.dissect(buffer, index, packet, parent)

  -- Nominal Value: Int64
  index, nominal_value = hkex_hkexderivatives_fulltick_omd_v1_49.nominal_value.dissect(buffer, index, packet, parent)

  -- Underlying Type: Uint8
  index, underlying_type = hkex_hkexderivatives_fulltick_omd_v1_49.underlying_type.dissect(buffer, index, packet, parent)

  -- Effective Tomorrow: Uint8
  index, effective_tomorrow = hkex_hkexderivatives_fulltick_omd_v1_49.effective_tomorrow.dissect(buffer, index, packet, parent)

  -- Commodity Id: String
  index, commodity_id = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Definition Message
hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.commodity_definition_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request
hkex_hkexderivatives_fulltick_omd_v1_49.quote_request = {}

-- Size: Quote Request
hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.size

-- Display: Quote Request
hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Number Of Lots: Int32
  index, number_of_lots = hkex_hkexderivatives_fulltick_omd_v1_49.number_of_lots.dissect(buffer, index, packet, parent)

  -- Bid Ask Flag: Uint8
  index, bid_ask_flag = hkex_hkexderivatives_fulltick_omd_v1_49.bid_ask_flag.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.quote_request, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Clear Message
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message = {}

-- Size: Orderbook Clear Message
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size

-- Display: Orderbook Clear Message
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Clear Message
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Clear Message
hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.orderbook_clear_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message = {}

-- Size: Delete Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.side.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size

-- Display: Delete Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_hkexderivatives_fulltick_omd_v1_49.side.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.delete_order_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Type
hkex_hkexderivatives_fulltick_omd_v1_49.order_type = {}

-- Size: Order Type
hkex_hkexderivatives_fulltick_omd_v1_49.order_type.size = 2

-- Display: Order Type
hkex_hkexderivatives_fulltick_omd_v1_49.order_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Force flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Force"
  end
  -- Is Short Sell flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Short Sell"
  end
  -- Is Market Bid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Market Bid"
  end
  -- Is Price Stabilization flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Price Stabilization"
  end
  -- Is Override Crossing flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Override Crossing"
  end
  -- Is Undisclosed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Undisclosed"
  end
  -- Is Unused Order Type Bit 7 flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 7"
  end
  -- Is Unused Order Type Bit 8 flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 8"
  end
  -- Is Unused Order Type Bit 9 flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 9"
  end
  -- Is Unused Order Type Bit 10 flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 10"
  end
  -- Is Fill And Kill Immediately flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Fill And Kill Immediately"
  end
  -- Is Firm Color Disabled flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Firm Color Disabled"
  end
  -- Is Convert To Aggressive flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Convert To Aggressive"
  end
  -- Is Bait Or Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Or Implied Order"
  end
  -- Is Unused Order Type Bit 15 flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 15"
  end
  -- Is Unused Order Type Bit 16 flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Unused Order Type Bit 16"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Type
hkex_hkexderivatives_fulltick_omd_v1_49.order_type.bits = function(range, value, packet, parent)

  -- Force: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.force, range, value)

  -- Short Sell: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.short_sell, range, value)

  -- Market Bid: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_bid, range, value)

  -- Price Stabilization: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.price_stabilization, range, value)

  -- Override Crossing: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.override_crossing, range, value)

  -- Undisclosed: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.undisclosed, range, value)

  -- Unused Order Type Bit 7: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_7, range, value)

  -- Unused Order Type Bit 8: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_8, range, value)

  -- Unused Order Type Bit 9: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_9, range, value)

  -- Unused Order Type Bit 10: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_10, range, value)

  -- Fill And Kill Immediately: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.fill_and_kill_immediately, range, value)

  -- Firm Color Disabled: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.firm_color_disabled, range, value)

  -- Convert To Aggressive: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.convert_to_aggressive, range, value)

  -- Bait Or Implied Order: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.bait_or_implied_order, range, value)

  -- Unused Order Type Bit 15: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_15, range, value)

  -- Unused Order Type Bit 16: 1 Bit
  parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.unused_order_type_bit_16, range, value)
end

-- Dissect: Order Type
hkex_hkexderivatives_fulltick_omd_v1_49.order_type.dissect = function(buffer, offset, packet, parent)
  local size = hkex_hkexderivatives_fulltick_omd_v1_49.order_type.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = hkex_hkexderivatives_fulltick_omd_v1_49.order_type.display(range, value, packet, parent)
  local element = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.order_type, range, display)

  if show.structs then
    hkex_hkexderivatives_fulltick_omd_v1_49.order_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message = {}

-- Size: Modify Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.quantity.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.side.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.size

-- Display: Modify Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexderivatives_fulltick_omd_v1_49.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexderivatives_fulltick_omd_v1_49.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_hkexderivatives_fulltick_omd_v1_49.side.dissect(buffer, index, packet, parent)

  -- Order Type: Struct of 16 fields
  index, order_type = hkex_hkexderivatives_fulltick_omd_v1_49.order_type.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.modify_order_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message = {}

-- Size: Add Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.quantity.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.side.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_type.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.size

-- Display: Add Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexderivatives_fulltick_omd_v1_49.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexderivatives_fulltick_omd_v1_49.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexderivatives_fulltick_omd_v1_49.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_hkexderivatives_fulltick_omd_v1_49.side.dissect(buffer, index, packet, parent)

  -- Lot Type: Uint8
  index, lot_type = hkex_hkexderivatives_fulltick_omd_v1_49.lot_type.dissect(buffer, index, packet, parent)

  -- Order Type: Struct of 16 fields
  index, order_type = hkex_hkexderivatives_fulltick_omd_v1_49.order_type.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = hkex_hkexderivatives_fulltick_omd_v1_49.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.add_order_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Alert Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message = {}

-- Calculate size of: Market Alert Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.source.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.header.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.info_type.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.priority.size

  index = index + hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.size

  -- Calculate field size from count
  local content_count = buffer(offset + index - 1, 1):le_uint()
  index = index + content_count * 320

  return index
end

-- Display: Market Alert Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Alert Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alert Id: Uint16
  index, alert_id = hkex_hkexderivatives_fulltick_omd_v1_49.alert_id.dissect(buffer, index, packet, parent)

  -- Source: String
  index, source = hkex_hkexderivatives_fulltick_omd_v1_49.source.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_1.dissect(buffer, index, packet, parent)

  -- Header: Binary
  index, header = hkex_hkexderivatives_fulltick_omd_v1_49.header.dissect(buffer, index, packet, parent)

  -- Last Fragment: String
  index, last_fragment = hkex_hkexderivatives_fulltick_omd_v1_49.last_fragment.dissect(buffer, index, packet, parent)

  -- Info Type: Uint8
  index, info_type = hkex_hkexderivatives_fulltick_omd_v1_49.info_type.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_hkexderivatives_fulltick_omd_v1_49.priority.dissect(buffer, index, packet, parent)

  -- No Lines: Uint8
  index, no_lines = hkex_hkexderivatives_fulltick_omd_v1_49.no_lines.dissect(buffer, index, packet, parent)

  -- Repeating: Content
  for content_index = 1, no_lines do
    index, content = hkex_hkexderivatives_fulltick_omd_v1_49.content.dissect(buffer, index, packet, parent, content_index)
  end

  return index
end

-- Dissect: Market Alert Message
hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.market_alert_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Signal Message
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Disaster Recovery Status: Uint32
  index, disaster_recovery_status = hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset
hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset = {}

-- Size: Sequence Reset
hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.size

-- Display: Sequence Reset
hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset
hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexderivatives_fulltick_omd_v1_49.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset
hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.sequence_reset, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.fields(buffer, offset, packet, parent)
  end
end

-- Calculated Opening Price Message
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message = {}

-- Size: Calculated Opening Price Message
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.size

-- Display: Calculated Opening Price Message
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Opening Price Message
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_id.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: Int32
  index, calculated_opening_price = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexderivatives_fulltick_omd_v1_49.filler_4.dissect(buffer, index, packet, parent)

  -- Calculated Opening Quantity: Uint64
  index, calculated_opening_quantity = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Opening Price Message
hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.calculated_opening_price_message, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexderivatives_fulltick_omd_v1_49.payload = {}

-- Dissect: Payload
hkex_hkexderivatives_fulltick_omd_v1_49.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.calculated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Reset
  if msg_type == 100 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.sequence_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Alert Message
  if msg_type == 323 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.market_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if msg_type == 330 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if msg_type == 331 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if msg_type == 332 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Clear Message
  if msg_type == 335 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.orderbook_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if msg_type == 336 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Definition Message
  if msg_type == 301 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.commodity_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Class Definition Message
  if msg_type == 302 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.class_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Definition Base Message
  if msg_type == 303 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_base_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Definition Extended Message
  if msg_type == 304 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_definition_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Definition Message
  if msg_type == 305 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.combination_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Message
  if msg_type == 320 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Status Message
  if msg_type == 321 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.series_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Status Message
  if msg_type == 322 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.commodity_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 350 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amendment Message
  if msg_type == 356 then
    return hkex_hkexderivatives_fulltick_omd_v1_49.trade_amendment_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexderivatives_fulltick_omd_v1_49.msg_header = {}

-- Size: Msg Header
hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.size

-- Display: Msg Header
hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexderivatives_fulltick_omd_v1_49.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, msg_type = hkex_hkexderivatives_fulltick_omd_v1_49.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexderivatives_fulltick_omd_v1_49.message = {}

-- Display: Message
hkex_hkexderivatives_fulltick_omd_v1_49.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexderivatives_fulltick_omd_v1_49.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexderivatives_fulltick_omd_v1_49.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 19 branches
  index = hkex_hkexderivatives_fulltick_omd_v1_49.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexderivatives_fulltick_omd_v1_49.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.message, buffer(offset, 0))
    local current = hkex_hkexderivatives_fulltick_omd_v1_49.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexderivatives_fulltick_omd_v1_49.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexderivatives_fulltick_omd_v1_49.packet_header = {}

-- Size: Packet Header
hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.size =
  hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.size + 
  hkex_hkexderivatives_fulltick_omd_v1_49.send_time.size

-- Display: Packet Header
hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexderivatives_fulltick_omd_v1_49.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexderivatives_fulltick_omd_v1_49.msg_count.dissect(buffer, index, packet, parent)

  -- Compression Mode: 1 Byte Unsigned Fixed Width Integer
  index, compression_mode = hkex_hkexderivatives_fulltick_omd_v1_49.compression_mode.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexderivatives_fulltick_omd_v1_49.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexderivatives_fulltick_omd_v1_49.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexderivatives_fulltick_omd_v1_49.packet = {}

-- Verify required size of Udp packet
hkex_hkexderivatives_fulltick_omd_v1_49.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.size
end

-- Dissect Packet
hkex_hkexderivatives_fulltick_omd_v1_49.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexderivatives_fulltick_omd_v1_49.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Compression Mode
  local compression_mode = buffer(index - 13, 1):uint()

  local message_conversion = compression_mode == 1

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexderivatives_fulltick_omd_v1_49.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexderivatives_fulltick_omd_v1_49.init()
end

-- Dissector for Hkex HkexDerivatives FullTick Omd 1.49
function omi_hkex_hkexderivatives_fulltick_omd_v1_49.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexderivatives_fulltick_omd_v1_49.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_hkexderivatives_fulltick_omd_v1_49, buffer(), omi_hkex_hkexderivatives_fulltick_omd_v1_49.description, "("..buffer:len().." Bytes)")
  return hkex_hkexderivatives_fulltick_omd_v1_49.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexDerivatives FullTick Omd 1.49 (Udp)
local function omi_hkex_hkexderivatives_fulltick_omd_v1_49_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexderivatives_fulltick_omd_v1_49.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexderivatives_fulltick_omd_v1_49
  omi_hkex_hkexderivatives_fulltick_omd_v1_49.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexDerivatives FullTick Omd 1.49
omi_hkex_hkexderivatives_fulltick_omd_v1_49:register_heuristic("udp", omi_hkex_hkexderivatives_fulltick_omd_v1_49_udp_heuristic)

-- Register Hkex HkexDerivatives FullTick Omd 1.49 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_hkex_hkexderivatives_fulltick_omd_v1_49)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.49
--   Date: Thursday, June 18, 2026
--   Specification: HKEX_OMD_Derivatives_Binary_Interface_Specifications_v1 47.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
