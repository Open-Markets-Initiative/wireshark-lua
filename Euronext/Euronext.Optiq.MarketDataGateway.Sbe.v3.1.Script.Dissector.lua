-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 3.1 Protocol
local euronext_optiq_marketdatagateway_sbe_v3_1 = Proto("Euronext.Optiq.MarketDataGateway.Sbe.v3.1.Lua", "Euronext Optiq MarketDataGateway Sbe 3.1")

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

-- Euronext Optiq MarketDataGateway Sbe 3.1 Fields
euronext_optiq_marketdatagateway_sbe_v3_1.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.marketdatagateway.sbe.v3.1.actiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.marketdatagateway.sbe.v3.1.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.amount_decimals = ProtoField.new("Amount Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.amountdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_full_trade_information_message = ProtoField.new("Apa Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v3.1.apafulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_quotes_message = ProtoField.new("Apa Quotes Message", "euronext.optiq.marketdatagateway.sbe.v3.1.apaquotesmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_standing_data_message = ProtoField.new("Apa Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v3.1.apastandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_length_uint_16 = ProtoField.new("Block Length uint 16", "euronext.optiq.marketdatagateway.sbe.v3.1.blocklengthuint16", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "euronext.optiq.marketdatagateway.sbe.v3.1.blocklengthuint8", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_trade_code = ProtoField.new("Block Trade Code", "euronext.optiq.marketdatagateway.sbe.v3.1.blocktradecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.book_state = ProtoField.new("Book State", "euronext.optiq.marketdatagateway.sbe.v3.1.bookstate", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.box = ProtoField.new("Box", "euronext.optiq.marketdatagateway.sbe.v3.1.box", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000200000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.bundle = ProtoField.new("Bundle", "euronext.optiq.marketdatagateway.sbe.v3.1.bundle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000400000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.butterfly = ProtoField.new("Butterfly", "euronext.optiq.marketdatagateway.sbe.v3.1.butterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000002")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.butterfly_versus_underlying = ProtoField.new("Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.butterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000002000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.buy_write = ProtoField.new("Buy Write", "euronext.optiq.marketdatagateway.sbe.v3.1.buywrite", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000040000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.calendar_spread = ProtoField.new("Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.calendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000010")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_bbo_only = ProtoField.new("Call Bbo Only", "euronext.optiq.marketdatagateway.sbe.v3.1.callbboonly", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_cabinet = ProtoField.new("Call Or Put Cabinet", "euronext.optiq.marketdatagateway.sbe.v3.1.callorputcabinet", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000004")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_calendar_spread_versus_underlying = ProtoField.new("Call Or Put Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.callorputcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000010000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_spread_versus_underlying = ProtoField.new("Call Or Put Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.callorputspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000008000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_put_diagonal_calendar_spread_versus_underlying = ProtoField.new("Call Put Diagonal Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.callputdiagonalcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000020000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_spread_versus_put_versus_underlying = ProtoField.new("Call Spread Versus Put Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.callspreadversusputversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000004000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_spread_versus_sell_a_put = ProtoField.new("Call Spread Versus Sell A Put", "euronext.optiq.marketdatagateway.sbe.v3.1.callspreadversussellaput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000200000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.cfi = ProtoField.new("Cfi", "euronext.optiq.marketdatagateway.sbe.v3.1.cfi", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.change_type = ProtoField.new("Change Type", "euronext.optiq.marketdatagateway.sbe.v3.1.changetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.channel_id = ProtoField.new("Channel Id", "euronext.optiq.marketdatagateway.sbe.v3.1.channelid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.closing_reference_level = ProtoField.new("Closing Reference Level", "euronext.optiq.marketdatagateway.sbe.v3.1.closingreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.closing_reference_time = ProtoField.new("Closing Reference Time", "euronext.optiq.marketdatagateway.sbe.v3.1.closingreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_expansion_factor = ProtoField.new("Collar Expansion Factor", "euronext.optiq.marketdatagateway.sbe.v3.1.collarexpansionfactor", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_max_unhalt_nb = ProtoField.new("Collar Max Unhalt Nb", "euronext.optiq.marketdatagateway.sbe.v3.1.collarmaxunhaltnb", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_unhalt_delay = ProtoField.new("Collar Unhalt Delay", "euronext.optiq.marketdatagateway.sbe.v3.1.collarunhaltdelay", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.combo = ProtoField.new("Combo", "euronext.optiq.marketdatagateway.sbe.v3.1.combo", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000200")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.combo_versus_underlying = ProtoField.new("Combo Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.comboversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000200000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.compression = ProtoField.new("Compression", "euronext.optiq.marketdatagateway.sbe.v3.1.compression", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.condor = ProtoField.new("Condor", "euronext.optiq.marketdatagateway.sbe.v3.1.condor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000100000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.condor_versus_underlying = ProtoField.new("Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.condorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000020000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.confirmed_reference_level = ProtoField.new("Confirmed Reference Level", "euronext.optiq.marketdatagateway.sbe.v3.1.confirmedreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.confirmed_reference_time = ProtoField.new("Confirmed Reference Time", "euronext.optiq.marketdatagateway.sbe.v3.1.confirmedreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_em_m_properties_group = ProtoField.new("Contract Em M Properties Group", "euronext.optiq.marketdatagateway.sbe.v3.1.contractemmpropertiesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_em_m_properties_groups = ProtoField.new("Contract Em M Properties Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.contractemmpropertiesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_event_date = ProtoField.new("Contract Event Date", "euronext.optiq.marketdatagateway.sbe.v3.1.contracteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_name = ProtoField.new("Contract Name", "euronext.optiq.marketdatagateway.sbe.v3.1.contractname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_standing_data_message = ProtoField.new("Contract Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v3.1.contractstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.marketdatagateway.sbe.v3.1.contractsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_trading_type = ProtoField.new("Contract Trading Type", "euronext.optiq.marketdatagateway.sbe.v3.1.contracttradingtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_type = ProtoField.new("Contract Type", "euronext.optiq.marketdatagateway.sbe.v3.1.contracttype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.conversion_reversal = ProtoField.new("Conversion Reversal", "euronext.optiq.marketdatagateway.sbe.v3.1.conversionreversal", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000020000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.country_of_exchange = ProtoField.new("Country Of Exchange", "euronext.optiq.marketdatagateway.sbe.v3.1.countryofexchange", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.currency = ProtoField.new("Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.currency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.currency_coefficient = ProtoField.new("Currency Coefficient", "euronext.optiq.marketdatagateway.sbe.v3.1.currencycoefficient", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_eligibility = ProtoField.new("Dark Eligibility", "euronext.optiq.marketdatagateway.sbe.v3.1.darkeligibility", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_lis_threshold = ProtoField.new("Dark Lis Threshold", "euronext.optiq.marketdatagateway.sbe.v3.1.darklisthreshold", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_min_quantity = ProtoField.new("Dark Min Quantity", "euronext.optiq.marketdatagateway.sbe.v3.1.darkminquantity", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "euronext.optiq.marketdatagateway.sbe.v3.1.dateoflasttrade", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.days_to_expiry = ProtoField.new("Days To Expiry", "euronext.optiq.marketdatagateway.sbe.v3.1.daystoexpiry", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.marketdatagateway.sbe.v3.1.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.delta = ProtoField.new("Delta", "euronext.optiq.marketdatagateway.sbe.v3.1.delta", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.depositary_list = ProtoField.new("Depositary List", "euronext.optiq.marketdatagateway.sbe.v3.1.depositarylist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_instrument_trading_code = ProtoField.new("Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v3.1.derivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_instrument_type = ProtoField.new("Derivatives Instrument Type", "euronext.optiq.marketdatagateway.sbe.v3.1.derivativesinstrumenttype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_market_model = ProtoField.new("Derivatives Market Model", "euronext.optiq.marketdatagateway.sbe.v3.1.derivativesmarketmodel", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_calendar_spread = ProtoField.new("Diagonal Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.diagonalcalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000020")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_straddle_calendar_spread = ProtoField.new("Diagonal Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.diagonalstraddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000008000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_straddle_calendar_spread_versus_underlying = ProtoField.new("Diagonal Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.diagonalstraddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000004000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.dynamic_collar_logic = ProtoField.new("Dynamic Collar Logic", "euronext.optiq.marketdatagateway.sbe.v3.1.dynamiccollarlogic", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.edsp_tick_size = ProtoField.new("Edsp Tick Size", "euronext.optiq.marketdatagateway.sbe.v3.1.edspticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.effective_date_indicator = ProtoField.new("Effective Date Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.effectivedateindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_agency_cross_trade_indicator = ProtoField.new("Efficient Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_algorithmic_indicator = ProtoField.new("Efficient Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_benchmark_indicator = ProtoField.new("Efficient Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_contributionto_price = ProtoField.new("Efficient Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_duplicative_indicator = ProtoField.new("Efficient Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_market_mechanism = ProtoField.new("Efficient Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_modification_indicator = ProtoField.new("Efficient Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_negotiation_indicator = ProtoField.new("Efficient Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_off_book_automated_indicator = ProtoField.new("Efficient Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_post_trade_deferral = ProtoField.new("Efficient Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_publication_mode = ProtoField.new("Efficient Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_special_dividend_indicator = ProtoField.new("Efficient Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_trading_mode = ProtoField.new("Efficient Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_transaction_category = ProtoField.new("Efficient Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v3.1.efficientmmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.em_m_pattern_rep_group = ProtoField.new("Em M Pattern Rep Group", "euronext.optiq.marketdatagateway.sbe.v3.1.emmpatternrepgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.em_m_pattern_rep_groups = ProtoField.new("Em M Pattern Rep Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.emmpatternrepgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.emm = ProtoField.new("Emm", "euronext.optiq.marketdatagateway.sbe.v3.1.emm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_of_day_message = ProtoField.new("End Of Day Message", "euronext.optiq.marketdatagateway.sbe.v3.1.endofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v3.1.endofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.marketdatagateway.sbe.v3.1.endtimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.marketdatagateway.sbe.v3.1.evaluatedprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.event_time = ProtoField.new("Event Time", "euronext.optiq.marketdatagateway.sbe.v3.1.eventtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.exchange_code = ProtoField.new("Exchange Code", "euronext.optiq.marketdatagateway.sbe.v3.1.exchangecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.exchange_for_physical = ProtoField.new("Exchange For Physical", "euronext.optiq.marketdatagateway.sbe.v3.1.exchangeforphysical", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000800000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.exer_style = ProtoField.new("Exer Style", "euronext.optiq.marketdatagateway.sbe.v3.1.exerstyle", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.expiry_cycle_type = ProtoField.new("Expiry Cycle Type", "euronext.optiq.marketdatagateway.sbe.v3.1.expirycycletype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.expiry_date = ProtoField.new("Expiry Date", "euronext.optiq.marketdatagateway.sbe.v3.1.expirydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.first_settlement_date = ProtoField.new("First Settlement Date", "euronext.optiq.marketdatagateway.sbe.v3.1.firstsettlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.marketdatagateway.sbe.v3.1.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.frame = ProtoField.new("Frame", "euronext.optiq.marketdatagateway.sbe.v3.1.frame", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.full_instrument_name = ProtoField.new("Full Instrument Name", "euronext.optiq.marketdatagateway.sbe.v3.1.fullinstrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.full_trade_information_message = ProtoField.new("Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v3.1.fulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.marketdatagateway.sbe.v3.1.groupsizeencoding", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.guarantee_indicator = ProtoField.new("Guarantee Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.guaranteeindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.guts = ProtoField.new("Guts", "euronext.optiq.marketdatagateway.sbe.v3.1.guts", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000040")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.guts_versus_underlying = ProtoField.new("Guts Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.gutsversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000040000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_end_of_day_snapshot = ProtoField.new("Has End Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v3.1.hasendofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0100")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_start_of_day_snapshot = ProtoField.new("Has Start Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v3.1.hasstartofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0080")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_status_message = ProtoField.new("Has Status Message", "euronext.optiq.marketdatagateway.sbe.v3.1.hasstatusmessage", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0200")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.health_status_message = ProtoField.new("Health Status Message", "euronext.optiq.marketdatagateway.sbe.v3.1.healthstatusmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.high_level = ProtoField.new("High Level", "euronext.optiq.marketdatagateway.sbe.v3.1.highlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.high_time = ProtoField.new("High Time", "euronext.optiq.marketdatagateway.sbe.v3.1.hightime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.icb = ProtoField.new("Icb", "euronext.optiq.marketdatagateway.sbe.v3.1.icb", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.icb_code = ProtoField.new("Icb Code", "euronext.optiq.marketdatagateway.sbe.v3.1.icbcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "euronext.optiq.marketdatagateway.sbe.v3.1.imbalanceqty", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "euronext.optiq.marketdatagateway.sbe.v3.1.imbalanceqtyside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_level = ProtoField.new("Index Level", "euronext.optiq.marketdatagateway.sbe.v3.1.indexlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_level_type = ProtoField.new("Index Level Type", "euronext.optiq.marketdatagateway.sbe.v3.1.indexleveltype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_price_code = ProtoField.new("Index Price Code", "euronext.optiq.marketdatagateway.sbe.v3.1.indexpricecode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_summary_message = ProtoField.new("Index Summary Message", "euronext.optiq.marketdatagateway.sbe.v3.1.indexsummarymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.inst_unit_exp = ProtoField.new("Inst Unit Exp", "euronext.optiq.marketdatagateway.sbe.v3.1.instunitexp", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_event_date = ProtoField.new("Instrument Event Date", "euronext.optiq.marketdatagateway.sbe.v3.1.instrumenteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.marketdatagateway.sbe.v3.1.instrumentgroupcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_name = ProtoField.new("Instrument Name", "euronext.optiq.marketdatagateway.sbe.v3.1.instrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_state = ProtoField.new("Instrument State", "euronext.optiq.marketdatagateway.sbe.v3.1.instrumentstate", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_trading_code = ProtoField.new("Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v3.1.instrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_butterfly = ProtoField.new("Iron Butterfly", "euronext.optiq.marketdatagateway.sbe.v3.1.ironbutterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000100")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_butterfly_versus_underlying = ProtoField.new("Iron Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.ironbutterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000100000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_condor = ProtoField.new("Iron Condor", "euronext.optiq.marketdatagateway.sbe.v3.1.ironcondor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000100000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_condor_versus_underlying = ProtoField.new("Iron Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.ironcondorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000080000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.isin_code = ProtoField.new("Isin Code", "euronext.optiq.marketdatagateway.sbe.v3.1.isincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.issue_price = ProtoField.new("Issue Price", "euronext.optiq.marketdatagateway.sbe.v3.1.issueprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.issue_price_decimals = ProtoField.new("Issue Price Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.issuepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.issuing_country = ProtoField.new("Issuing Country", "euronext.optiq.marketdatagateway.sbe.v3.1.issuingcountry", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.jelly_roll = ProtoField.new("Jelly Roll", "euronext.optiq.marketdatagateway.sbe.v3.1.jellyroll", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000001")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.ladder = ProtoField.new("Ladder", "euronext.optiq.marketdatagateway.sbe.v3.1.ladder", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000800")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.ladder_versus_underlying = ProtoField.new("Ladder Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.ladderversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000001000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_adjusted_closing_price = ProtoField.new("Last Adjusted Closing Price", "euronext.optiq.marketdatagateway.sbe.v3.1.lastadjustedclosingprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_md_seq_num = ProtoField.new("Last Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v3.1.lastmdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_trading_date = ProtoField.new("Last Trading Date", "euronext.optiq.marketdatagateway.sbe.v3.1.lasttradingdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "euronext.optiq.marketdatagateway.sbe.v3.1.legbuysell", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.marketdatagateway.sbe.v3.1.legprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.marketdatagateway.sbe.v3.1.legratio", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.marketdatagateway.sbe.v3.1.legsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.lei_code = ProtoField.new("Lei Code", "euronext.optiq.marketdatagateway.sbe.v3.1.leicode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.limit = ProtoField.new("Limit", "euronext.optiq.marketdatagateway.sbe.v3.1.limit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquid_instrument_indicator = ProtoField.new("Liquid Instrument Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.liquidinstrumentindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquidation_level = ProtoField.new("Liquidation Level", "euronext.optiq.marketdatagateway.sbe.v3.1.liquidationlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquidation_time = ProtoField.new("Liquidation Time", "euronext.optiq.marketdatagateway.sbe.v3.1.liquidationtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.lis_package_structure_message = ProtoField.new("Lis Package Structure Message", "euronext.optiq.marketdatagateway.sbe.v3.1.lispackagestructuremessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.lot_size = ProtoField.new("Lot Size", "euronext.optiq.marketdatagateway.sbe.v3.1.lotsize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.low_level = ProtoField.new("Low Level", "euronext.optiq.marketdatagateway.sbe.v3.1.lowlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.low_time = ProtoField.new("Low Time", "euronext.optiq.marketdatagateway.sbe.v3.1.lowtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.main_depositary = ProtoField.new("Main Depositary", "euronext.optiq.marketdatagateway.sbe.v3.1.maindepositary", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market = ProtoField.new("Market", "euronext.optiq.marketdatagateway.sbe.v3.1.market", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "euronext.optiq.marketdatagateway.sbe.v3.1.marketdatapacketheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_model = ProtoField.new("Market Model", "euronext.optiq.marketdatagateway.sbe.v3.1.marketmodel", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_of_reference_mic = ProtoField.new("Market Of Reference Mic", "euronext.optiq.marketdatagateway.sbe.v3.1.marketofreferencemic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_on_open_moo = ProtoField.new("Market On Open Moo", "euronext.optiq.marketdatagateway.sbe.v3.1.marketonopenmoo", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0010")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_states_group = ProtoField.new("Market States Group", "euronext.optiq.marketdatagateway.sbe.v3.1.marketstatesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_states_groups = ProtoField.new("Market States Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.marketstatesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_status_change_message = ProtoField.new("Market Status Change Message", "euronext.optiq.marketdatagateway.sbe.v3.1.marketstatuschangemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_update_message = ProtoField.new("Market Update Message", "euronext.optiq.marketdatagateway.sbe.v3.1.marketupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.maturity_date = ProtoField.new("Maturity Date", "euronext.optiq.marketdatagateway.sbe.v3.1.maturitydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.maximum_decimals_in_quantity = ProtoField.new("Maximum Decimals In Quantity", "euronext.optiq.marketdatagateway.sbe.v3.1.maximumdecimalsinquantity", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.md_seq_num = ProtoField.new("Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v3.1.mdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mdg_restart_count = ProtoField.new("Mdg Restart Count", "euronext.optiq.marketdatagateway.sbe.v3.1.mdgrestartcount", ftypes.UINT16, nil, base.DEC, "0x000E")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.message = ProtoField.new("Message", "euronext.optiq.marketdatagateway.sbe.v3.1.message", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.marketdatagateway.sbe.v3.1.messageheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.marketdatagateway.sbe.v3.1.messagepricenotation", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_clearing_flag = ProtoField.new("Mi Fid Clearing Flag", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidclearingflag", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_emission_allowance_type = ProtoField.new("Mi Fid Emission Allowance Type", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidemissionallowancetype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_notional_amount = ProtoField.new("Mi Fid Notional Amount", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidnotionalamount", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_qtyin_msrmt_unit_notation = ProtoField.new("Mi Fid Qtyin Msrmt Unit Notation", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidqtyinmsrmtunitnotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_transaction_id = ProtoField.new("Mi Fid Transaction Id", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidtransactionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mic = ProtoField.new("Mic", "euronext.optiq.marketdatagateway.sbe.v3.1.mic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mic_list = ProtoField.new("Mic List", "euronext.optiq.marketdatagateway.sbe.v3.1.miclist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_currency = ProtoField.new("Mifid Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_execution_id = ProtoField.new("Mifid Execution Id", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidexecutionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_instrument_id = ProtoField.new("Mifid Instrument Id", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidinstrumentid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_instrument_id_type = ProtoField.new("Mifid Instrument Id Type", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidinstrumentidtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_price = ProtoField.new("Mifid Price", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_price_notation = ProtoField.new("Mifid Price Notation", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidpricenotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_quantity = ProtoField.new("Mifid Quantity", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidquantity", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_quantity_measurement_unit = ProtoField.new("Mifid Quantity Measurement Unit", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidquantitymeasurementunit", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifidii_liquid_flag = ProtoField.new("Mifidii Liquid Flag", "euronext.optiq.marketdatagateway.sbe.v3.1.mifidiiliquidflag", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mm_protections = ProtoField.new("Mm Protections", "euronext.optiq.marketdatagateway.sbe.v3.1.mmprotections", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_agency_cross_trade_indicator = ProtoField.new("Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_benchmark_indicator = ProtoField.new("Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_contributionto_price = ProtoField.new("Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_duplicative_indicator = ProtoField.new("Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_off_book_automated_indicator = ProtoField.new("Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_post_trade_deferral = ProtoField.new("Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_publication_mode = ProtoField.new("Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.mmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v3.1.mmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v3.1.mmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mnemonic = ProtoField.new("Mnemonic", "euronext.optiq.marketdatagateway.sbe.v3.1.mnemonic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.mother_stock_isin = ProtoField.new("Mother Stock Isin", "euronext.optiq.marketdatagateway.sbe.v3.1.motherstockisin", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.marketdatagateway.sbe.v3.1.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.new_stats_group = ProtoField.new("New Stats Group", "euronext.optiq.marketdatagateway.sbe.v3.1.newstatsgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.new_stats_groups = ProtoField.new("New Stats Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.newstatsgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.no_qualifier = ProtoField.new("No Qualifier", "euronext.optiq.marketdatagateway.sbe.v3.1.noqualifier", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.nominal_currency = ProtoField.new("Nominal Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.nominalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.notusedgroup1groups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.notional_currency = ProtoField.new("Notional Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.notionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.marketdatagateway.sbe.v3.1.numingroup", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.num_traded_instruments = ProtoField.new("Num Traded Instruments", "euronext.optiq.marketdatagateway.sbe.v3.1.numtradedinstruments", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.number_instrument_circulating = ProtoField.new("Number Instrument Circulating", "euronext.optiq.marketdatagateway.sbe.v3.1.numberinstrumentcirculating", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "euronext.optiq.marketdatagateway.sbe.v3.1.numberoforders", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.opening_level = ProtoField.new("Opening Level", "euronext.optiq.marketdatagateway.sbe.v3.1.openinglevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.opening_time = ProtoField.new("Opening Time", "euronext.optiq.marketdatagateway.sbe.v3.1.openingtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.marketdatagateway.sbe.v3.1.optiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.optiq_segment = ProtoField.new("Optiq Segment", "euronext.optiq.marketdatagateway.sbe.v3.1.optiqsegment", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_entry_qualifier = ProtoField.new("Order Entry Qualifier", "euronext.optiq.marketdatagateway.sbe.v3.1.orderentryqualifier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.marketdatagateway.sbe.v3.1.orderpriority", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.marketdatagateway.sbe.v3.1.orderpx", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_quantity = ProtoField.new("Order Quantity", "euronext.optiq.marketdatagateway.sbe.v3.1.orderquantity", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_side = ProtoField.new("Order Side", "euronext.optiq.marketdatagateway.sbe.v3.1.orderside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.marketdatagateway.sbe.v3.1.ordertype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_type_rules = ProtoField.new("Order Type Rules", "euronext.optiq.marketdatagateway.sbe.v3.1.ordertyperules", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_update_message = ProtoField.new("Order Update Message", "euronext.optiq.marketdatagateway.sbe.v3.1.orderupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.orders_group = ProtoField.new("Orders Group", "euronext.optiq.marketdatagateway.sbe.v3.1.ordersgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.orders_groups = ProtoField.new("Orders Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.ordersgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.original_report_timestamp = ProtoField.new("Original Report Timestamp", "euronext.optiq.marketdatagateway.sbe.v3.1.originalreporttimestamp", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_rep_group = ProtoField.new("Outright Rep Group", "euronext.optiq.marketdatagateway.sbe.v3.1.outrightrepgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_rep_groups = ProtoField.new("Outright Rep Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.outrightrepgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_standing_data_message = ProtoField.new("Outright Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v3.1.outrightstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.pack = ProtoField.new("Pack", "euronext.optiq.marketdatagateway.sbe.v3.1.pack", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000004000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.package_components_group = ProtoField.new("Package Components Group", "euronext.optiq.marketdatagateway.sbe.v3.1.packagecomponentsgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.package_components_groups = ProtoField.new("Package Components Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.packagecomponentsgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet = ProtoField.new("Packet", "euronext.optiq.marketdatagateway.sbe.v3.1.packet", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_flags = ProtoField.new("Packet Flags", "euronext.optiq.marketdatagateway.sbe.v3.1.packetflags", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "euronext.optiq.marketdatagateway.sbe.v3.1.packetsequencenumber", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_time = ProtoField.new("Packet Time", "euronext.optiq.marketdatagateway.sbe.v3.1.packettime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.par_value = ProtoField.new("Par Value", "euronext.optiq.marketdatagateway.sbe.v3.1.parvalue", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.partition_id = ProtoField.new("Partition Id", "euronext.optiq.marketdatagateway.sbe.v3.1.partitionid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.marketdatagateway.sbe.v3.1.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.pattern_id = ProtoField.new("Pattern Id", "euronext.optiq.marketdatagateway.sbe.v3.1.patternid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.payload = ProtoField.new("Payload", "euronext.optiq.marketdatagateway.sbe.v3.1.payload", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.pctg_of_capitalization = ProtoField.new("Pctg Of Capitalization", "euronext.optiq.marketdatagateway.sbe.v3.1.pctgofcapitalization", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.marketdatagateway.sbe.v3.1.pegoffset", ftypes.INT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_id = ProtoField.new("Phase Id", "euronext.optiq.marketdatagateway.sbe.v3.1.phaseid", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_qualifier = ProtoField.new("Phase Qualifier", "euronext.optiq.marketdatagateway.sbe.v3.1.phasequalifier", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_time = ProtoField.new("Phase Time", "euronext.optiq.marketdatagateway.sbe.v3.1.phasetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.prct_varfrom_prev_close = ProtoField.new("Prct Varfrom Prev Close", "euronext.optiq.marketdatagateway.sbe.v3.1.prctvarfromprevclose", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.previous_priority = ProtoField.new("Previous Priority", "euronext.optiq.marketdatagateway.sbe.v3.1.previouspriority", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price = ProtoField.new("Price", "euronext.optiq.marketdatagateway.sbe.v3.1.price", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_decimals = ProtoField.new("Price Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.pricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_limits = ProtoField.new("Price Limits", "euronext.optiq.marketdatagateway.sbe.v3.1.pricelimits", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_multiplier = ProtoField.new("Price Multiplier", "euronext.optiq.marketdatagateway.sbe.v3.1.pricemultiplier", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_multiplier_decimals = ProtoField.new("Price Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.pricemultiplierdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_type = ProtoField.new("Price Type", "euronext.optiq.marketdatagateway.sbe.v3.1.pricetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_update_message = ProtoField.new("Price Update Message", "euronext.optiq.marketdatagateway.sbe.v3.1.priceupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.prices_group = ProtoField.new("Prices Group", "euronext.optiq.marketdatagateway.sbe.v3.1.pricesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.prices_groups = ProtoField.new("Prices Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.pricesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.pricing_algorithm = ProtoField.new("Pricing Algorithm", "euronext.optiq.marketdatagateway.sbe.v3.1.pricingalgorithm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.product_code = ProtoField.new("Product Code", "euronext.optiq.marketdatagateway.sbe.v3.1.productcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.psn_high_weight = ProtoField.new("Psn High Weight", "euronext.optiq.marketdatagateway.sbe.v3.1.psnhighweight", ftypes.UINT16, nil, base.DEC, "0x0070")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.publication_date_time = ProtoField.new("Publication Date Time", "euronext.optiq.marketdatagateway.sbe.v3.1.publicationdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_spread_versus_call_versus_underlying = ProtoField.new("Put Spread Versus Call Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.putspreadversuscallversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000002000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_spread_versus_sell_a_call = ProtoField.new("Put Spread Versus Sell A Call", "euronext.optiq.marketdatagateway.sbe.v3.1.putspreadversussellacall", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000400000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_straddle_versus_sell_a_call_or_a_put = ProtoField.new("Put Straddle Versus Sell A Call Or A Put", "euronext.optiq.marketdatagateway.sbe.v3.1.putstraddleversussellacalloraput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000800000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.marketdatagateway.sbe.v3.1.quantity", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.quantitydecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity_notation = ProtoField.new("Quantity Notation", "euronext.optiq.marketdatagateway.sbe.v3.1.quantitynotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.quote_spread_multiplier = ProtoField.new("Quote Spread Multiplier", "euronext.optiq.marketdatagateway.sbe.v3.1.quotespreadmultiplier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.quote_update_type = ProtoField.new("Quote Update Type", "euronext.optiq.marketdatagateway.sbe.v3.1.quoteupdatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.random_uncrossing = ProtoField.new("Random Uncrossing", "euronext.optiq.marketdatagateway.sbe.v3.1.randomuncrossing", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0008")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.ratio_decimals = ProtoField.new("Ratio Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.ratiodecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "euronext.optiq.marketdatagateway.sbe.v3.1.realtimeindexmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.rebroadcast_indicator = ProtoField.new("Rebroadcast Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.rebroadcastindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reduced_tick_spread = ProtoField.new("Reduced Tick Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.reducedtickspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000800000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_continuous = ProtoField.new("Reference Price Origin In Continuous", "euronext.optiq.marketdatagateway.sbe.v3.1.referencepriceoriginincontinuous", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_opening_call = ProtoField.new("Reference Price Origin In Opening Call", "euronext.optiq.marketdatagateway.sbe.v3.1.referencepriceorigininopeningcall", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_trading_interruption = ProtoField.new("Reference Price Origin In Trading Interruption", "euronext.optiq.marketdatagateway.sbe.v3.1.referencepriceoriginintradinginterruption", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_spread_table_id = ProtoField.new("Reference Spread Table Id", "euronext.optiq.marketdatagateway.sbe.v3.1.referencespreadtableid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.repo_indicator = ProtoField.new("Repo Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.repoindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_10 = ProtoField.new("Reserved 10", "euronext.optiq.marketdatagateway.sbe.v3.1.reserved10", ftypes.UINT16, nil, base.DEC, "0xFFC0")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_16 = ProtoField.new("Reserved 16", "euronext.optiq.marketdatagateway.sbe.v3.1.reserved16", ftypes.UINT64, nil, base.DEC, "0xFFFF000000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.marketdatagateway.sbe.v3.1.reserved6", ftypes.UINT8, nil, base.DEC, "0xFC")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_bits = ProtoField.new("Reserved Bits", "euronext.optiq.marketdatagateway.sbe.v3.1.reservedbits", ftypes.UINT16, nil, base.DEC, "0xFC00")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.retransmission_end_time = ProtoField.new("Retransmission End Time", "euronext.optiq.marketdatagateway.sbe.v3.1.retransmissionendtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.retransmission_start_time = ProtoField.new("Retransmission Start Time", "euronext.optiq.marketdatagateway.sbe.v3.1.retransmissionstarttime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.scheduled_event = ProtoField.new("Scheduled Event", "euronext.optiq.marketdatagateway.sbe.v3.1.scheduledevent", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.scheduled_event_time = ProtoField.new("Scheduled Event Time", "euronext.optiq.marketdatagateway.sbe.v3.1.scheduledeventtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.marketdatagateway.sbe.v3.1.schemaid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.second_notional_currency = ProtoField.new("Second Notional Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.secondnotionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.session = ProtoField.new("Session", "euronext.optiq.marketdatagateway.sbe.v3.1.session", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.session_trading_day = ProtoField.new("Session Trading Day", "euronext.optiq.marketdatagateway.sbe.v3.1.sessiontradingday", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_delay = ProtoField.new("Settlement Delay", "euronext.optiq.marketdatagateway.sbe.v3.1.settlementdelay", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_method = ProtoField.new("Settlement Method", "euronext.optiq.marketdatagateway.sbe.v3.1.settlementmethod", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_tick_size = ProtoField.new("Settlement Tick Size", "euronext.optiq.marketdatagateway.sbe.v3.1.settlementticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.simple_inter_commodity_spread = ProtoField.new("Simple Inter Commodity Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.simpleintercommodityspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000010000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.snapshot_time = ProtoField.new("Snapshot Time", "euronext.optiq.marketdatagateway.sbe.v3.1.snapshottime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.spread = ProtoField.new("Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.spread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000008")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.standing_data_message = ProtoField.new("Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v3.1.standingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "euronext.optiq.marketdatagateway.sbe.v3.1.startofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_of_snapshot_message = ProtoField.new("Start Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v3.1.startofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.marketdatagateway.sbe.v3.1.starttimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.statistics_message = ProtoField.new("Statistics Message", "euronext.optiq.marketdatagateway.sbe.v3.1.statisticsmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.stats_update_type = ProtoField.new("Stats Update Type", "euronext.optiq.marketdatagateway.sbe.v3.1.statsupdatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.stats_update_value = ProtoField.new("Stats Update Value", "euronext.optiq.marketdatagateway.sbe.v3.1.statsupdatevalue", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.status_reason = ProtoField.new("Status Reason", "euronext.optiq.marketdatagateway.sbe.v3.1.statusreason", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.stop_limit = ProtoField.new("Stop Limit", "euronext.optiq.marketdatagateway.sbe.v3.1.stoplimit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0008")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.stop_stop_loss = ProtoField.new("Stop Stop Loss", "euronext.optiq.marketdatagateway.sbe.v3.1.stopstoploss", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle = ProtoField.new("Straddle", "euronext.optiq.marketdatagateway.sbe.v3.1.straddle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000040000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_calendar_spread = ProtoField.new("Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.straddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000002000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_calendar_spread_versus_underlying = ProtoField.new("Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.straddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000001000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_versus_underlying = ProtoField.new("Straddle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.straddleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000010000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strangle = ProtoField.new("Strangle", "euronext.optiq.marketdatagateway.sbe.v3.1.strangle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000400")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strangle_versus_underlying = ProtoField.new("Strangle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.strangleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000400000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_authorized = ProtoField.new("Strategy Authorized", "euronext.optiq.marketdatagateway.sbe.v3.1.strategyauthorized", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.marketdatagateway.sbe.v3.1.strategycode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_data_message = ProtoField.new("Strategy Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v3.1.strategystandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_datarep_1_group = ProtoField.new("Strategy Standing Datarep 1 Group", "euronext.optiq.marketdatagateway.sbe.v3.1.strategystandingdatarep1group", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_datarep_1_groups = ProtoField.new("Strategy Standing Datarep 1 Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.strategystandingdatarep1groups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_currency = ProtoField.new("Strike Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.strikecurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.strikecurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price = ProtoField.new("Strike Price", "euronext.optiq.marketdatagateway.sbe.v3.1.strikeprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price_decimals = ProtoField.new("Strike Price Decimals", "euronext.optiq.marketdatagateway.sbe.v3.1.strikepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price_decimals_ratio = ProtoField.new("Strike Price Decimals Ratio", "euronext.optiq.marketdatagateway.sbe.v3.1.strikepricedecimalsratio", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.strip = ProtoField.new("Strip", "euronext.optiq.marketdatagateway.sbe.v3.1.strip", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000001000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.suspended = ProtoField.new("Suspended", "euronext.optiq.marketdatagateway.sbe.v3.1.suspended", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0010")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.marketdatagateway.sbe.v3.1.symbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.synthetic = ProtoField.new("Synthetic", "euronext.optiq.marketdatagateway.sbe.v3.1.synthetic", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000008000000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.tax_code = ProtoField.new("Tax Code", "euronext.optiq.marketdatagateway.sbe.v3.1.taxcode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.technical_notification_message = ProtoField.new("Technical Notification Message", "euronext.optiq.marketdatagateway.sbe.v3.1.technicalnotificationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.technical_notification_type = ProtoField.new("Technical Notification Type", "euronext.optiq.marketdatagateway.sbe.v3.1.technicalnotificationtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.marketdatagateway.sbe.v3.1.templateid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_120mn = ProtoField.new("Threshold Lis Post Trade 120mn", "euronext.optiq.marketdatagateway.sbe.v3.1.thresholdlisposttrade120mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_60mn = ProtoField.new("Threshold Lis Post Trade 60mn", "euronext.optiq.marketdatagateway.sbe.v3.1.thresholdlisposttrade60mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_eod = ProtoField.new("Threshold Lis Post Trade Eod", "euronext.optiq.marketdatagateway.sbe.v3.1.thresholdlisposttradeeod", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.tick_size_index_id = ProtoField.new("Tick Size Index Id", "euronext.optiq.marketdatagateway.sbe.v3.1.ticksizeindexid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetable_message = ProtoField.new("Timetable Message", "euronext.optiq.marketdatagateway.sbe.v3.1.timetablemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetables_group = ProtoField.new("Timetables Group", "euronext.optiq.marketdatagateway.sbe.v3.1.timetablesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetables_groups = ProtoField.new("Timetables Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.timetablesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_at_settlement = ProtoField.new("Trade At Settlement", "euronext.optiq.marketdatagateway.sbe.v3.1.tradeatsettlement", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0020")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.marketdatagateway.sbe.v3.1.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.marketdatagateway.sbe.v3.1.tradequalifier", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_reference = ProtoField.new("Trade Reference", "euronext.optiq.marketdatagateway.sbe.v3.1.tradereference", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.marketdatagateway.sbe.v3.1.tradetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_at_last = ProtoField.new("Trading At Last", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingatlast", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_currency = ProtoField.new("Trading Currency", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingcurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_date_time = ProtoField.new("Trading Date Time", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_period = ProtoField.new("Trading Period", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingperiod", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_policy = ProtoField.new("Trading Policy", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingpolicy", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_side = ProtoField.new("Trading Side", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_unit = ProtoField.new("Trading Unit", "euronext.optiq.marketdatagateway.sbe.v3.1.tradingunit", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.transaction_type = ProtoField.new("Transaction Type", "euronext.optiq.marketdatagateway.sbe.v3.1.transactiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.transparency_indicator = ProtoField.new("Transparency Indicator", "euronext.optiq.marketdatagateway.sbe.v3.1.transparencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.two_by_one_call_or_put_ratio_spread_versus_underlying = ProtoField.new("Two By One Call Or Put Ratio Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v3.1.twobyonecallorputratiospreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000080000000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.two_by_one_ratio_spread = ProtoField.new("Two By One Ratio Spread", "euronext.optiq.marketdatagateway.sbe.v3.1.twobyoneratiospread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000000080")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "euronext.optiq.marketdatagateway.sbe.v3.1.typeofcorporateevent", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "euronext.optiq.marketdatagateway.sbe.v3.1.typeofmarketadmission", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.marketdatagateway.sbe.v3.1.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_derivatives_instrument_trading_code = ProtoField.new("Underlying Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingderivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_expiry = ProtoField.new("Underlying Expiry", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingexpiry", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_index_name = ProtoField.new("Underlying Index Name", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingindexname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_index_term = ProtoField.new("Underlying Index Term", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingindexterm", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_isin_code = ProtoField.new("Underlying Isin Code", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingisincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_mic = ProtoField.new("Underlying Mic", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingmic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_subtype = ProtoField.new("Underlying Subtype", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingsubtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_symbol_index = ProtoField.new("Underlying Symbol Index", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_type = ProtoField.new("Underlying Type", "euronext.optiq.marketdatagateway.sbe.v3.1.underlyingtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.update_type = ProtoField.new("Update Type", "euronext.optiq.marketdatagateway.sbe.v3.1.updatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.updates_group = ProtoField.new("Updates Group", "euronext.optiq.marketdatagateway.sbe.v3.1.updatesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.updates_groups = ProtoField.new("Updates Groups", "euronext.optiq.marketdatagateway.sbe.v3.1.updatesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.venue = ProtoField.new("Venue", "euronext.optiq.marketdatagateway.sbe.v3.1.venue", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.version = ProtoField.new("Version", "euronext.optiq.marketdatagateway.sbe.v3.1.version", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v3_1.fields.volatility_trade = ProtoField.new("Volatility Trade", "euronext.optiq.marketdatagateway.sbe.v3.1.volatilitytrade", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x0000000000080000")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.volume = ProtoField.new("Volume", "euronext.optiq.marketdatagateway.sbe.v3.1.volume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_marketdatagateway_sbe_v3_1.fields.wholesale_allowed = ProtoField.new("Wholesale Allowed", "euronext.optiq.marketdatagateway.sbe.v3.1.wholesaleallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0020")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 3.1 Element Dissection Options
show.apa_full_trade_information_message = true
show.apa_quotes_message = true
show.apa_standing_data_message = true
show.contract_em_m_properties_group = true
show.contract_em_m_properties_groups = true
show.contract_standing_data_message = true
show.em_m_pattern_rep_group = true
show.em_m_pattern_rep_groups = true
show.end_of_day_message = true
show.end_of_snapshot_message = true
show.full_trade_information_message = true
show.group_size_encoding = true
show.health_status_message = true
show.index_summary_message = true
show.lis_package_structure_message = true
show.market_data_packet_header = true
show.market_states_group = true
show.market_states_groups = true
show.market_status_change_message = true
show.market_update_message = true
show.message = true
show.message_header = true
show.mm_protections = true
show.new_stats_group = true
show.new_stats_groups = true
show.not_used_group_1_groups = true
show.order_type_rules = true
show.order_update_message = true
show.orders_group = true
show.orders_groups = true
show.outright_rep_group = true
show.outright_rep_groups = true
show.outright_standing_data_message = true
show.package_components_group = true
show.package_components_groups = true
show.packet = true
show.packet_flags = true
show.phase_qualifier = true
show.price_update_message = true
show.prices_group = true
show.prices_groups = true
show.real_time_index_message = true
show.standing_data_message = true
show.start_of_day_message = true
show.start_of_snapshot_message = true
show.statistics_message = true
show.strategy_authorized = true
show.strategy_standing_data_message = true
show.strategy_standing_datarep_1_group = true
show.strategy_standing_datarep_1_groups = true
show.technical_notification_message = true
show.timetable_message = true
show.timetables_group = true
show.timetables_groups = true
show.trade_qualifier = true
show.updates_group = true
show.updates_groups = true
show.payload = false

-- Register Euronext Optiq MarketDataGateway Sbe 3.1 Show Options
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_full_trade_information_message = Pref.bool("Show Apa Full Trade Information Message", show.apa_full_trade_information_message, "Parse and add Apa Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_quotes_message = Pref.bool("Show Apa Quotes Message", show.apa_quotes_message, "Parse and add Apa Quotes Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_standing_data_message = Pref.bool("Show Apa Standing Data Message", show.apa_standing_data_message, "Parse and add Apa Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_group = Pref.bool("Show Contract Em M Properties Group", show.contract_em_m_properties_group, "Parse and add Contract Em M Properties Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_groups = Pref.bool("Show Contract Em M Properties Groups", show.contract_em_m_properties_groups, "Parse and add Contract Em M Properties Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_standing_data_message = Pref.bool("Show Contract Standing Data Message", show.contract_standing_data_message, "Parse and add Contract Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_group = Pref.bool("Show Em M Pattern Rep Group", show.em_m_pattern_rep_group, "Parse and add Em M Pattern Rep Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_groups = Pref.bool("Show Em M Pattern Rep Groups", show.em_m_pattern_rep_groups, "Parse and add Em M Pattern Rep Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_full_trade_information_message = Pref.bool("Show Full Trade Information Message", show.full_trade_information_message, "Parse and add Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_health_status_message = Pref.bool("Show Health Status Message", show.health_status_message, "Parse and add Health Status Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_index_summary_message = Pref.bool("Show Index Summary Message", show.index_summary_message, "Parse and add Index Summary Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_lis_package_structure_message = Pref.bool("Show Lis Package Structure Message", show.lis_package_structure_message, "Parse and add Lis Package Structure Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_data_packet_header = Pref.bool("Show Market Data Packet Header", show.market_data_packet_header, "Parse and add Market Data Packet Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_group = Pref.bool("Show Market States Group", show.market_states_group, "Parse and add Market States Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_groups = Pref.bool("Show Market States Groups", show.market_states_groups, "Parse and add Market States Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_status_change_message = Pref.bool("Show Market Status Change Message", show.market_status_change_message, "Parse and add Market Status Change Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_update_message = Pref.bool("Show Market Update Message", show.market_update_message, "Parse and add Market Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_mm_protections = Pref.bool("Show Mm Protections", show.mm_protections, "Parse and add Mm Protections to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_group = Pref.bool("Show New Stats Group", show.new_stats_group, "Parse and add New Stats Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_groups = Pref.bool("Show New Stats Groups", show.new_stats_groups, "Parse and add New Stats Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_type_rules = Pref.bool("Show Order Type Rules", show.order_type_rules, "Parse and add Order Type Rules to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_update_message = Pref.bool("Show Order Update Message", show.order_update_message, "Parse and add Order Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_group = Pref.bool("Show Orders Group", show.orders_group, "Parse and add Orders Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_groups = Pref.bool("Show Orders Groups", show.orders_groups, "Parse and add Orders Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_group = Pref.bool("Show Outright Rep Group", show.outright_rep_group, "Parse and add Outright Rep Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_groups = Pref.bool("Show Outright Rep Groups", show.outright_rep_groups, "Parse and add Outright Rep Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_standing_data_message = Pref.bool("Show Outright Standing Data Message", show.outright_standing_data_message, "Parse and add Outright Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_group = Pref.bool("Show Package Components Group", show.package_components_group, "Parse and add Package Components Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_groups = Pref.bool("Show Package Components Groups", show.package_components_groups, "Parse and add Package Components Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_phase_qualifier = Pref.bool("Show Phase Qualifier", show.phase_qualifier, "Parse and add Phase Qualifier to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_price_update_message = Pref.bool("Show Price Update Message", show.price_update_message, "Parse and add Price Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_group = Pref.bool("Show Prices Group", show.prices_group, "Parse and add Prices Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_groups = Pref.bool("Show Prices Groups", show.prices_groups, "Parse and add Prices Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_real_time_index_message = Pref.bool("Show Real Time Index Message", show.real_time_index_message, "Parse and add Real Time Index Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_standing_data_message = Pref.bool("Show Standing Data Message", show.standing_data_message, "Parse and add Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_snapshot_message = Pref.bool("Show Start Of Snapshot Message", show.start_of_snapshot_message, "Parse and add Start Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_authorized = Pref.bool("Show Strategy Authorized", show.strategy_authorized, "Parse and add Strategy Authorized to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_data_message = Pref.bool("Show Strategy Standing Data Message", show.strategy_standing_data_message, "Parse and add Strategy Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_group = Pref.bool("Show Strategy Standing Datarep 1 Group", show.strategy_standing_datarep_1_group, "Parse and add Strategy Standing Datarep 1 Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_groups = Pref.bool("Show Strategy Standing Datarep 1 Groups", show.strategy_standing_datarep_1_groups, "Parse and add Strategy Standing Datarep 1 Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_technical_notification_message = Pref.bool("Show Technical Notification Message", show.technical_notification_message, "Parse and add Technical Notification Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetable_message = Pref.bool("Show Timetable Message", show.timetable_message, "Parse and add Timetable Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_group = Pref.bool("Show Timetables Group", show.timetables_group, "Parse and add Timetables Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_groups = Pref.bool("Show Timetables Groups", show.timetables_groups, "Parse and add Timetables Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_group = Pref.bool("Show Updates Group", show.updates_group, "Parse and add Updates Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_groups = Pref.bool("Show Updates Groups", show.updates_groups, "Parse and add Updates Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function euronext_optiq_marketdatagateway_sbe_v3_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.apa_full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_full_trade_information_message then
    show.apa_full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_full_trade_information_message
    changed = true
  end
  if show.apa_quotes_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_quotes_message then
    show.apa_quotes_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_quotes_message
    changed = true
  end
  if show.apa_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_standing_data_message then
    show.apa_standing_data_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_apa_standing_data_message
    changed = true
  end
  if show.contract_em_m_properties_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_group then
    show.contract_em_m_properties_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_group
    changed = true
  end
  if show.contract_em_m_properties_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_groups then
    show.contract_em_m_properties_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_em_m_properties_groups
    changed = true
  end
  if show.contract_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_standing_data_message then
    show.contract_standing_data_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_contract_standing_data_message
    changed = true
  end
  if show.em_m_pattern_rep_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_group then
    show.em_m_pattern_rep_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_group
    changed = true
  end
  if show.em_m_pattern_rep_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_groups then
    show.em_m_pattern_rep_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_em_m_pattern_rep_groups
    changed = true
  end
  if show.end_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_day_message then
    show.end_of_day_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_full_trade_information_message then
    show.full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_full_trade_information_message
    changed = true
  end
  if show.group_size_encoding ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_group_size_encoding then
    show.group_size_encoding = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_group_size_encoding
    changed = true
  end
  if show.health_status_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_health_status_message then
    show.health_status_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_health_status_message
    changed = true
  end
  if show.index_summary_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_index_summary_message then
    show.index_summary_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_index_summary_message
    changed = true
  end
  if show.lis_package_structure_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_lis_package_structure_message then
    show.lis_package_structure_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_lis_package_structure_message
    changed = true
  end
  if show.market_data_packet_header ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_data_packet_header then
    show.market_data_packet_header = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_data_packet_header
    changed = true
  end
  if show.market_states_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_group then
    show.market_states_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_group
    changed = true
  end
  if show.market_states_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_groups then
    show.market_states_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_states_groups
    changed = true
  end
  if show.market_status_change_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_status_change_message then
    show.market_status_change_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_status_change_message
    changed = true
  end
  if show.market_update_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_update_message then
    show.market_update_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_market_update_message
    changed = true
  end
  if show.message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message then
    show.message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message_header then
    show.message_header = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_message_header
    changed = true
  end
  if show.mm_protections ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_mm_protections then
    show.mm_protections = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_mm_protections
    changed = true
  end
  if show.new_stats_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_group then
    show.new_stats_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_group
    changed = true
  end
  if show.new_stats_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_groups then
    show.new_stats_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_new_stats_groups
    changed = true
  end
  if show.not_used_group_1_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.order_type_rules ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_type_rules then
    show.order_type_rules = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_type_rules
    changed = true
  end
  if show.order_update_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_update_message then
    show.order_update_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_order_update_message
    changed = true
  end
  if show.orders_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_group then
    show.orders_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_group
    changed = true
  end
  if show.orders_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_groups then
    show.orders_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_orders_groups
    changed = true
  end
  if show.outright_rep_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_group then
    show.outright_rep_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_group
    changed = true
  end
  if show.outright_rep_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_groups then
    show.outright_rep_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_rep_groups
    changed = true
  end
  if show.outright_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_standing_data_message then
    show.outright_standing_data_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_outright_standing_data_message
    changed = true
  end
  if show.package_components_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_group then
    show.package_components_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_group
    changed = true
  end
  if show.package_components_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_groups then
    show.package_components_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_package_components_groups
    changed = true
  end
  if show.packet ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet then
    show.packet = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet_flags then
    show.packet_flags = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_packet_flags
    changed = true
  end
  if show.phase_qualifier ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_phase_qualifier then
    show.phase_qualifier = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_phase_qualifier
    changed = true
  end
  if show.price_update_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_price_update_message then
    show.price_update_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_price_update_message
    changed = true
  end
  if show.prices_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_group then
    show.prices_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_group
    changed = true
  end
  if show.prices_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_groups then
    show.prices_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_prices_groups
    changed = true
  end
  if show.real_time_index_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_real_time_index_message then
    show.real_time_index_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_real_time_index_message
    changed = true
  end
  if show.standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_standing_data_message then
    show.standing_data_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_standing_data_message
    changed = true
  end
  if show.start_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_day_message then
    show.start_of_day_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_snapshot_message then
    show.start_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_start_of_snapshot_message
    changed = true
  end
  if show.statistics_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_statistics_message then
    show.statistics_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_statistics_message
    changed = true
  end
  if show.strategy_authorized ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_authorized then
    show.strategy_authorized = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_authorized
    changed = true
  end
  if show.strategy_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_data_message then
    show.strategy_standing_data_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_data_message
    changed = true
  end
  if show.strategy_standing_datarep_1_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_group then
    show.strategy_standing_datarep_1_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_group
    changed = true
  end
  if show.strategy_standing_datarep_1_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_groups then
    show.strategy_standing_datarep_1_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_strategy_standing_datarep_1_groups
    changed = true
  end
  if show.technical_notification_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_technical_notification_message then
    show.technical_notification_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_technical_notification_message
    changed = true
  end
  if show.timetable_message ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetable_message then
    show.timetable_message = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetable_message
    changed = true
  end
  if show.timetables_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_group then
    show.timetables_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_group
    changed = true
  end
  if show.timetables_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_groups then
    show.timetables_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_timetables_groups
    changed = true
  end
  if show.trade_qualifier ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_trade_qualifier then
    show.trade_qualifier = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_trade_qualifier
    changed = true
  end
  if show.updates_group ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_group then
    show.updates_group = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_group
    changed = true
  end
  if show.updates_groups ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_groups then
    show.updates_groups = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_updates_groups
    changed = true
  end
  if show.payload ~= euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_payload then
    show.payload = euronext_optiq_marketdatagateway_sbe_v3_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq MarketDataGateway Sbe 3.1
-----------------------------------------------------------------------

-- Size: Snapshot Time
size_of.snapshot_time = 8

-- Display: Snapshot Time
display.snapshot_time = function(value)
  return "Snapshot Time: "..value
end

-- Dissect: Snapshot Time
dissect.snapshot_time = function(buffer, offset, packet, parent)
  local length = size_of.snapshot_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.snapshot_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.snapshot_time, range, value, display)

  return offset + length, value
end

-- Size: Last Md Seq Num
size_of.last_md_seq_num = 8

-- Display: Last Md Seq Num
display.last_md_seq_num = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Md Seq Num: No Value"
  end

  return "Last Md Seq Num: "..value
end

-- Dissect: Last Md Seq Num
dissect.last_md_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.last_md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_md_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Snapshot Message
size_of.end_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.last_md_seq_num

  index = index + size_of.snapshot_time

  return index
end

-- Display: End Of Snapshot Message
display.end_of_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
dissect.end_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = dissect.last_md_seq_num(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = dissect.snapshot_time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
dissect.end_of_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_snapshot_message then
    local length = size_of.end_of_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_snapshot_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_of_snapshot_message, range, display)
  end

  return dissect.end_of_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Start Of Snapshot Message
size_of.start_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + size_of.last_md_seq_num

  index = index + size_of.snapshot_time

  return index
end

-- Display: Start Of Snapshot Message
display.start_of_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Snapshot Message
dissect.start_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = dissect.last_md_seq_num(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = dissect.snapshot_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Snapshot Message
dissect.start_of_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_snapshot_message then
    local length = size_of.start_of_snapshot_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_snapshot_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_of_snapshot_message, range, display)
  end

  return dissect.start_of_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Mi Fid Emission Allowance Type
size_of.mi_fid_emission_allowance_type = 4

-- Display: Mi Fid Emission Allowance Type
display.mi_fid_emission_allowance_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Fid Emission Allowance Type: No Value"
  end

  return "Mi Fid Emission Allowance Type: "..value
end

-- Dissect: Mi Fid Emission Allowance Type
dissect.mi_fid_emission_allowance_type = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_emission_allowance_type
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

  local display = display.mi_fid_emission_allowance_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Size: Venue
size_of.venue = 11

-- Display: Venue
display.venue = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Venue: No Value"
  end

  return "Venue: "..value
end

-- Dissect: Venue
dissect.venue = function(buffer, offset, packet, parent)
  local length = size_of.venue
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

  local display = display.venue(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.venue, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier Decimals
size_of.price_multiplier_decimals = 1

-- Display: Price Multiplier Decimals
display.price_multiplier_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Multiplier Decimals: No Value"
  end

  return "Price Multiplier Decimals: "..value
end

-- Dissect: Price Multiplier Decimals
dissect.price_multiplier_decimals = function(buffer, offset, packet, parent)
  local length = size_of.price_multiplier_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_multiplier_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier
size_of.price_multiplier = 4

-- Display: Price Multiplier
display.price_multiplier = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Price Multiplier: No Value"
  end

  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
dissect.price_multiplier = function(buffer, offset, packet, parent)
  local length = size_of.price_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Original Report Timestamp
size_of.original_report_timestamp = 8

-- Display: Original Report Timestamp
display.original_report_timestamp = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Original Report Timestamp: No Value"
  end

  return "Original Report Timestamp: "..value
end

-- Dissect: Original Report Timestamp
dissect.original_report_timestamp = function(buffer, offset, packet, parent)
  local length = size_of.original_report_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.original_report_timestamp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.original_report_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trade Reference
size_of.trade_reference = 30

-- Display: Trade Reference
display.trade_reference = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Reference: No Value"
  end

  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
dissect.trade_reference = function(buffer, offset, packet, parent)
  local length = size_of.trade_reference
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

  local display = display.trade_reference(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Duplicative Indicator
size_of.efficient_mmt_duplicative_indicator = 1

-- Display: Efficient Mmt Duplicative Indicator
display.efficient_mmt_duplicative_indicator = function(value)
  if value == "1" then
    return "Efficient Mmt Duplicative Indicator: Dupl (1)"
  end
  if value == "-" then
    return "Efficient Mmt Duplicative Indicator: Unique Trade Report (-)"
  end
  if value == 0 then
    return "Efficient Mmt Duplicative Indicator: No Value"
  end

  return "Efficient Mmt Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Duplicative Indicator
dissect.efficient_mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_duplicative_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Post Trade Deferral
size_of.efficient_mmt_post_trade_deferral = 1

-- Display: Efficient Mmt Post Trade Deferral
display.efficient_mmt_post_trade_deferral = function(value)
  if value == "1" then
    return "Efficient Mmt Post Trade Deferral: Lmtf (1)"
  end
  if value == "2" then
    return "Efficient Mmt Post Trade Deferral: Datf (2)"
  end
  if value == "3" then
    return "Efficient Mmt Post Trade Deferral: Volo (3)"
  end
  if value == "4" then
    return "Efficient Mmt Post Trade Deferral: Fwaf (4)"
  end
  if value == "5" then
    return "Efficient Mmt Post Trade Deferral: Idaf (5)"
  end
  if value == "6" then
    return "Efficient Mmt Post Trade Deferral: Volw (6)"
  end
  if value == "7" then
    return "Efficient Mmt Post Trade Deferral: Fulf (7)"
  end
  if value == "8" then
    return "Efficient Mmt Post Trade Deferral: Fula (8)"
  end
  if value == "9" then
    return "Efficient Mmt Post Trade Deferral: Fulv (9)"
  end
  if value == "V" then
    return "Efficient Mmt Post Trade Deferral: Fulj (V)"
  end
  if value == "W" then
    return "Efficient Mmt Post Trade Deferral: Coaf (W)"
  end
  if value == "-" then
    return "Efficient Mmt Post Trade Deferral: Not Applicable (-)"
  end
  if value == 0 then
    return "Efficient Mmt Post Trade Deferral: No Value"
  end

  return "Efficient Mmt Post Trade Deferral: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Post Trade Deferral
dissect.efficient_mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_post_trade_deferral
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Publication Mode
size_of.efficient_mmt_publication_mode = 1

-- Display: Efficient Mmt Publication Mode
display.efficient_mmt_publication_mode = function(value)
  if value == "1" then
    return "Efficient Mmt Publication Mode: Non Immediate Publication (1)"
  end
  if value == "2" then
    return "Efficient Mmt Publication Mode: Lrgs (2)"
  end
  if value == "3" then
    return "Efficient Mmt Publication Mode: Ilqd (3)"
  end
  if value == "4" then
    return "Efficient Mmt Publication Mode: Size (4)"
  end
  if value == "5" then
    return "Efficient Mmt Publication Mode: Ilqdsize (5)"
  end
  if value == "6" then
    return "Efficient Mmt Publication Mode: Ilqdlrgs (6)"
  end
  if value == "-" then
    return "Efficient Mmt Publication Mode: Immediate Publication (-)"
  end
  if value == 0 then
    return "Efficient Mmt Publication Mode: No Value"
  end

  return "Efficient Mmt Publication Mode: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Publication Mode
dissect.efficient_mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_publication_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Algorithmic Indicator
size_of.efficient_mmt_algorithmic_indicator = 1

-- Display: Efficient Mmt Algorithmic Indicator
display.efficient_mmt_algorithmic_indicator = function(value)
  if value == "H" then
    return "Efficient Mmt Algorithmic Indicator: Algo (H)"
  end
  if value == "-" then
    return "Efficient Mmt Algorithmic Indicator: No Algorithmic Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Algorithmic Indicator: No Value"
  end

  return "Efficient Mmt Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Algorithmic Indicator
dissect.efficient_mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_algorithmic_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Contributionto Price
size_of.efficient_mmt_contributionto_price = 1

-- Display: Efficient Mmt Contributionto Price
display.efficient_mmt_contributionto_price = function(value)
  if value == "J" then
    return "Efficient Mmt Contributionto Price: Tncp (J)"
  end
  if value == "N" then
    return "Efficient Mmt Contributionto Price: Pndg (N)"
  end
  if value == "P" then
    return "Efficient Mmt Contributionto Price: Plain Vanilla Trade (P)"
  end
  if value == "T" then
    return "Efficient Mmt Contributionto Price: Npft (T)"
  end
  if value == 0 then
    return "Efficient Mmt Contributionto Price: No Value"
  end

  return "Efficient Mmt Contributionto Price: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Contributionto Price
dissect.efficient_mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_contributionto_price
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Off Book Automated Indicator
size_of.efficient_mmt_off_book_automated_indicator = 1

-- Display: Efficient Mmt Off Book Automated Indicator
display.efficient_mmt_off_book_automated_indicator = function(value)
  if value == "M" then
    return "Efficient Mmt Off Book Automated Indicator: Off Book Non Automated (M)"
  end
  if value == "Q" then
    return "Efficient Mmt Off Book Automated Indicator: Off Book Automated (Q)"
  end
  if value == "-" then
    return "Efficient Mmt Off Book Automated Indicator: Unspecifiedordoesnotapply (-)"
  end
  if value == 0 then
    return "Efficient Mmt Off Book Automated Indicator: No Value"
  end

  return "Efficient Mmt Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Off Book Automated Indicator
dissect.efficient_mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_off_book_automated_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Special Dividend Indicator
size_of.efficient_mmt_special_dividend_indicator = 1

-- Display: Efficient Mmt Special Dividend Indicator
display.efficient_mmt_special_dividend_indicator = function(value)
  if value == "E" then
    return "Efficient Mmt Special Dividend Indicator: Sdiv (E)"
  end
  if value == "-" then
    return "Efficient Mmt Special Dividend Indicator: No Special Dividend Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Special Dividend Indicator: No Value"
  end

  return "Efficient Mmt Special Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Special Dividend Indicator
dissect.efficient_mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_special_dividend_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Benchmark Indicator
size_of.efficient_mmt_benchmark_indicator = 1

-- Display: Efficient Mmt Benchmark Indicator
display.efficient_mmt_benchmark_indicator = function(value)
  if value == "B" then
    return "Efficient Mmt Benchmark Indicator: Benc (B)"
  end
  if value == "S" then
    return "Efficient Mmt Benchmark Indicator: Rfpt (S)"
  end
  if value == "-" then
    return "Efficient Mmt Benchmark Indicator: No Benchmarkor Reference Price Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Benchmark Indicator: No Value"
  end

  return "Efficient Mmt Benchmark Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Benchmark Indicator
dissect.efficient_mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_benchmark_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Modification Indicator
size_of.efficient_mmt_modification_indicator = 1

-- Display: Efficient Mmt Modification Indicator
display.efficient_mmt_modification_indicator = function(value)
  if value == "A" then
    return "Efficient Mmt Modification Indicator: Amnd (A)"
  end
  if value == "C" then
    return "Efficient Mmt Modification Indicator: Canc (C)"
  end
  if value == "-" then
    return "Efficient Mmt Modification Indicator: New Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Modification Indicator: No Value"
  end

  return "Efficient Mmt Modification Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Modification Indicator
dissect.efficient_mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_modification_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Agency Cross Trade Indicator
size_of.efficient_mmt_agency_cross_trade_indicator = 1

-- Display: Efficient Mmt Agency Cross Trade Indicator
display.efficient_mmt_agency_cross_trade_indicator = function(value)
  if value == "X" then
    return "Efficient Mmt Agency Cross Trade Indicator: Actx (X)"
  end
  if value == "-" then
    return "Efficient Mmt Agency Cross Trade Indicator: No Agency Cross Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Agency Cross Trade Indicator: No Value"
  end

  return "Efficient Mmt Agency Cross Trade Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Agency Cross Trade Indicator
dissect.efficient_mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_agency_cross_trade_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Negotiation Indicator
size_of.efficient_mmt_negotiation_indicator = 1

-- Display: Efficient Mmt Negotiation Indicator
display.efficient_mmt_negotiation_indicator = function(value)
  if value == "1" then
    return "Efficient Mmt Negotiation Indicator: Nliq (1)"
  end
  if value == "2" then
    return "Efficient Mmt Negotiation Indicator: Oilq (2)"
  end
  if value == "3" then
    return "Efficient Mmt Negotiation Indicator: Pric (3)"
  end
  if value == "4" then
    return "Efficient Mmt Negotiation Indicator: Ilqd (4)"
  end
  if value == "5" then
    return "Efficient Mmt Negotiation Indicator: Size (5)"
  end
  if value == "6" then
    return "Efficient Mmt Negotiation Indicator: Ilqdsize (6)"
  end
  if value == "N" then
    return "Efficient Mmt Negotiation Indicator: Negotiated Trade (N)"
  end
  if value == "-" then
    return "Efficient Mmt Negotiation Indicator: No Negotiated Trade (-)"
  end
  if value == 0 then
    return "Efficient Mmt Negotiation Indicator: No Value"
  end

  return "Efficient Mmt Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Negotiation Indicator
dissect.efficient_mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_negotiation_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Transaction Category
size_of.efficient_mmt_transaction_category = 1

-- Display: Efficient Mmt Transaction Category
display.efficient_mmt_transaction_category = function(value)
  if value == "D" then
    return "Efficient Mmt Transaction Category: Dark Trade (D)"
  end
  if value == "R" then
    return "Efficient Mmt Transaction Category: Rpri (R)"
  end
  if value == "Y" then
    return "Efficient Mmt Transaction Category: Xfph (Y)"
  end
  if value == "Z" then
    return "Efficient Mmt Transaction Category: Tpac (Z)"
  end
  if value == "-" then
    return "Efficient Mmt Transaction Category: Noneapply (-)"
  end
  if value == 0 then
    return "Efficient Mmt Transaction Category: No Value"
  end

  return "Efficient Mmt Transaction Category: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Transaction Category
dissect.efficient_mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_transaction_category
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Trading Mode
size_of.efficient_mmt_trading_mode = 1

-- Display: Efficient Mmt Trading Mode
display.efficient_mmt_trading_mode = function(value)
  if value == "1" then
    return "Efficient Mmt Trading Mode: Undefined Auctionequal Uncrossing (1)"
  end
  if value == "2" then
    return "Efficient Mmt Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Efficient Mmt Trading Mode: At Market Close Trading (3)"
  end
  if value == "4" then
    return "Efficient Mmt Trading Mode: Outof Main Session Trading (4)"
  end
  if value == "5" then
    return "Efficient Mmt Trading Mode: Trade Reporting On Exchange (5)"
  end
  if value == "6" then
    return "Efficient Mmt Trading Mode: Trade Reporting Off Exchange (6)"
  end
  if value == "7" then
    return "Efficient Mmt Trading Mode: Trade Reporting Systematic Internaliser (7)"
  end
  if value == "I" then
    return "Efficient Mmt Trading Mode: Scheduled Intraday Auctionequal Uncrossing (I)"
  end
  if value == "K" then
    return "Efficient Mmt Trading Mode: Scheduled Closing Auctionequal Uncrossing (K)"
  end
  if value == "O" then
    return "Efficient Mmt Trading Mode: Scheduled Opening Auctionequal Uncrossing (O)"
  end
  if value == "U" then
    return "Efficient Mmt Trading Mode: Unscheduled Auctionequal Uncrossing (U)"
  end
  if value == 0 then
    return "Efficient Mmt Trading Mode: No Value"
  end

  return "Efficient Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Trading Mode
dissect.efficient_mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_trading_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.efficient_mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Market Mechanism
size_of.efficient_mmt_market_mechanism = 1

-- Display: Efficient Mmt Market Mechanism
display.efficient_mmt_market_mechanism = function(value)
  if value == 1 then
    return "Efficient Mmt Market Mechanism: Central Limit Order Book (1)"
  end
  if value == 2 then
    return "Efficient Mmt Market Mechanism: Quote Driven Market (2)"
  end
  if value == 3 then
    return "Efficient Mmt Market Mechanism: Dark Order Book (3)"
  end
  if value == 4 then
    return "Efficient Mmt Market Mechanism: Off Bookincluding Voiceor Messaging Trading (4)"
  end
  if value == 5 then
    return "Efficient Mmt Market Mechanism: Periodic Auctionequal Uncrossing (5)"
  end
  if value == 6 then
    return "Efficient Mmt Market Mechanism: Requestfor Quotes (6)"
  end
  if value == 7 then
    return "Efficient Mmt Market Mechanism: Other (7)"
  end
  if value == 255 then
    return "Efficient Mmt Market Mechanism: No Value"
  end

  return "Efficient Mmt Market Mechanism: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Market Mechanism
dissect.efficient_mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.efficient_mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.efficient_mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Clearing Flag
size_of.mi_fid_clearing_flag = 5

-- Display: Mi Fid Clearing Flag
display.mi_fid_clearing_flag = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Fid Clearing Flag: No Value"
  end

  return "Mi Fid Clearing Flag: "..value
end

-- Dissect: Mi Fid Clearing Flag
dissect.mi_fid_clearing_flag = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_clearing_flag
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

  local display = display.mi_fid_clearing_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_clearing_flag, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
size_of.notional_currency = 3

-- Display: Notional Currency
display.notional_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Notional Currency: No Value"
  end

  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = size_of.notional_currency
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

  local display = display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Notional Amount
size_of.mi_fid_notional_amount = 20

-- Display: Mi Fid Notional Amount
display.mi_fid_notional_amount = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Fid Notional Amount: No Value"
  end

  return "Mi Fid Notional Amount: "..value
end

-- Dissect: Mi Fid Notional Amount
dissect.mi_fid_notional_amount = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_notional_amount
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

  local display = display.mi_fid_notional_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity Measurement Unit
size_of.mifid_quantity_measurement_unit = 20

-- Display: Mifid Quantity Measurement Unit
display.mifid_quantity_measurement_unit = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity Measurement Unit: No Value"
  end

  return "Mifid Quantity Measurement Unit: "..value
end

-- Dissect: Mifid Quantity Measurement Unit
dissect.mifid_quantity_measurement_unit = function(buffer, offset, packet, parent)
  local length = size_of.mifid_quantity_measurement_unit
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

  local display = display.mifid_quantity_measurement_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_quantity_measurement_unit, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Qtyin Msrmt Unit Notation
size_of.mi_fid_qtyin_msrmt_unit_notation = 25

-- Display: Mi Fid Qtyin Msrmt Unit Notation
display.mi_fid_qtyin_msrmt_unit_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Fid Qtyin Msrmt Unit Notation: No Value"
  end

  return "Mi Fid Qtyin Msrmt Unit Notation: "..value
end

-- Dissect: Mi Fid Qtyin Msrmt Unit Notation
dissect.mi_fid_qtyin_msrmt_unit_notation = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_qtyin_msrmt_unit_notation
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

  local display = display.mi_fid_qtyin_msrmt_unit_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_qtyin_msrmt_unit_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Currency
size_of.mifid_currency = 3

-- Display: Mifid Currency
display.mifid_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Currency: No Value"
  end

  return "Mifid Currency: "..value
end

-- Dissect: Mifid Currency
dissect.mifid_currency = function(buffer, offset, packet, parent)
  local length = size_of.mifid_currency
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

  local display = display.mifid_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_currency, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price Notation
size_of.mifid_price_notation = 4

-- Display: Mifid Price Notation
display.mifid_price_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price Notation: No Value"
  end

  return "Mifid Price Notation: "..value
end

-- Dissect: Mifid Price Notation
dissect.mifid_price_notation = function(buffer, offset, packet, parent)
  local length = size_of.mifid_price_notation
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

  local display = display.mifid_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity
size_of.mifid_quantity = 20

-- Display: Mifid Quantity
display.mifid_quantity = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity: No Value"
  end

  return "Mifid Quantity: "..value
end

-- Dissect: Mifid Quantity
dissect.mifid_quantity = function(buffer, offset, packet, parent)
  local length = size_of.mifid_quantity
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

  local display = display.mifid_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price
size_of.mifid_price = 20

-- Display: Mifid Price
display.mifid_price = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price: No Value"
  end

  return "Mifid Price: "..value
end

-- Dissect: Mifid Price
dissect.mifid_price = function(buffer, offset, packet, parent)
  local length = size_of.mifid_price
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

  local display = display.mifid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_price, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Transaction Id
size_of.mi_fid_transaction_id = 52

-- Display: Mi Fid Transaction Id
display.mi_fid_transaction_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Fid Transaction Id: No Value"
  end

  return "Mi Fid Transaction Id: "..value
end

-- Dissect: Mi Fid Transaction Id
dissect.mi_fid_transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_transaction_id
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

  local display = display.mi_fid_transaction_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mi_fid_transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id
size_of.mifid_instrument_id = 12

-- Display: Mifid Instrument Id
display.mifid_instrument_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id: No Value"
  end

  return "Mifid Instrument Id: "..value
end

-- Dissect: Mifid Instrument Id
dissect.mifid_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.mifid_instrument_id
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

  local display = display.mifid_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id Type
size_of.mifid_instrument_id_type = 4

-- Display: Mifid Instrument Id Type
display.mifid_instrument_id_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Type: No Value"
  end

  return "Mifid Instrument Id Type: "..value
end

-- Dissect: Mifid Instrument Id Type
dissect.mifid_instrument_id_type = function(buffer, offset, packet, parent)
  local length = size_of.mifid_instrument_id_type
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

  local display = display.mifid_instrument_id_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_instrument_id_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
size_of.trade_type = 1

-- Display: Trade Type
display.trade_type = function(value)
  if value == 1 then
    return "Trade Type: Conventional Trade (1)"
  end
  if value == 2 then
    return "Trade Type: Largein Scale Li S Trade (2)"
  end
  if value == 3 then
    return "Trade Type: Basis Trade (3)"
  end
  if value == 4 then
    return "Trade Type: Largein Scale Li S Package Trade (4)"
  end
  if value == 5 then
    return "Trade Type: Guaranteed Cross Trade (5)"
  end
  if value == 6 then
    return "Trade Type: Against Actual Trade (6)"
  end
  if value == 7 then
    return "Trade Type: Asset Allocation Trade (7)"
  end
  if value == 9 then
    return "Trade Type: Exchangefor Swap Trade (9)"
  end
  if value == 10 then
    return "Trade Type: Exchangefor Physical Trade Cash Leg (10)"
  end
  if value == 11 then
    return "Trade Type: Strategy Leg Conventional Trade (11)"
  end
  if value == 12 then
    return "Trade Type: Strategy Leg Largein Scale Li S Trade (12)"
  end
  if value == 13 then
    return "Trade Type: Strategy Leg Basis Trade (13)"
  end
  if value == 14 then
    return "Trade Type: Strategy Leg Guaranteed Cross Trade (14)"
  end
  if value == 15 then
    return "Trade Type: Strategy Leg Against Actual Trade (15)"
  end
  if value == 16 then
    return "Trade Type: Strategy Leg Asset Allocation Trade (16)"
  end
  if value == 18 then
    return "Trade Type: Strategy Leg Exchange For Swap Trade (18)"
  end
  if value == 19 then
    return "Trade Type: Strategy Leg Exchange For Physical Trade (19)"
  end
  if value == 20 then
    return "Trade Type: Bo B Trade (20)"
  end
  if value == 22 then
    return "Trade Type: Atom X Trade (22)"
  end
  if value == 24 then
    return "Trade Type: Trade Cancellation (24)"
  end
  if value == 25 then
    return "Trade Type: Outof Market Trade (25)"
  end
  if value == 26 then
    return "Trade Type: Delta Neutral Trade Underlying Cash Leg (26)"
  end
  if value == 27 then
    return "Trade Type: Market Vwap Operation Trade (27)"
  end
  if value == 28 then
    return "Trade Type: Euronext Fund Service Trade (28)"
  end
  if value == 29 then
    return "Trade Type: Secondary Listing Trade (29)"
  end
  if value == 30 then
    return "Trade Type: Requestfor Cross Trade (30)"
  end
  if value == 31 then
    return "Trade Type: Requestforcrossstrategy Leg Trade (31)"
  end
  if value == 32 then
    return "Trade Type: Trade Publication (32)"
  end
  if value == 33 then
    return "Trade Type: Dark Trade (33)"
  end
  if value == 34 then
    return "Trade Type: Delta Neutral Trade Underlying Future Leg (34)"
  end
  if value == 36 then
    return "Trade Type: Total Traded Volume (36)"
  end
  if value == 37 then
    return "Trade Type: Etfmtfnav Tradepriceinbp (37)"
  end
  if value == 38 then
    return "Trade Type: Etfmtfnav Dark Tradepriceinbp (38)"
  end
  if value == 39 then
    return "Trade Type: Guaranteed Cross Negotiateddeal Nliq (39)"
  end
  if value == 40 then
    return "Trade Type: Guaranteed Cross Negotiateddeal Oilq (40)"
  end
  if value == 41 then
    return "Trade Type: Largein Scale Trade (41)"
  end
  if value == 42 then
    return "Trade Type: Largein Scale Tradeinbasispoints (42)"
  end
  if value == 43 then
    return "Trade Type: Largein Scale Package Tradeinbasispoints (43)"
  end
  if value == 44 then
    return "Trade Type: Strategy Leg Largein Scale Tradeinbasispoints (44)"
  end
  if value == 45 then
    return "Trade Type: Trade Reversal (45)"
  end
  if value == 100 then
    return "Trade Type: Conventional Trade Provisionalprice (100)"
  end
  if value == 101 then
    return "Trade Type: Largein Scale Li S Trade Provisionalprice (101)"
  end
  if value == 102 then
    return "Trade Type: Largein Scale Li S Package Trade Provisionalprice (102)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
dissect.trade_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Size: Publication Date Time
size_of.publication_date_time = 27

-- Display: Publication Date Time
display.publication_date_time = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Publication Date Time: No Value"
  end

  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
dissect.publication_date_time = function(buffer, offset, packet, parent)
  local length = size_of.publication_date_time
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

  local display = display.publication_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Size: Trading Date Time
size_of.trading_date_time = 27

-- Display: Trading Date Time
display.trading_date_time = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Date Time: No Value"
  end

  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
dissect.trading_date_time = function(buffer, offset, packet, parent)
  local length = size_of.trading_date_time
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

  local display = display.trading_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Size: Event Time
size_of.event_time = 8

-- Display: Event Time
display.event_time = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
dissect.event_time = function(buffer, offset, packet, parent)
  local length = size_of.event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.event_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Emm
size_of.emm = 1

-- Display: Emm
display.emm = function(value)
  if value == 1 then
    return "Emm: Cashand Derivative Central Order Book (1)"
  end
  if value == 2 then
    return "Emm: Nav Trading Facility (2)"
  end
  if value == 4 then
    return "Emm: Derivatives Wholesales (4)"
  end
  if value == 5 then
    return "Emm: Cash On Exchange Offbook (5)"
  end
  if value == 6 then
    return "Emm: Euronextoffexchangetradereports (6)"
  end
  if value == 7 then
    return "Emm: Derivatives On Exchange Offbook (7)"
  end
  if value == 8 then
    return "Emm: Etfmtfnav Central Order Book (8)"
  end
  if value == 9 then
    return "Emm: Listednottraded (9)"
  end
  if value == 15 then
    return "Emm: Delta Neutral Contingency Leg (15)"
  end
  if value == 99 then
    return "Emm: Not Applicable (99)"
  end
  if value == 255 then
    return "Emm: No Value"
  end

  return "Emm: Unknown("..value..")"
end

-- Dissect: Emm
dissect.emm = function(buffer, offset, packet, parent)
  local length = size_of.emm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.emm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.emm, range, value, display)

  return offset + length, value
end

-- Size: Rebroadcast Indicator
size_of.rebroadcast_indicator = 1

-- Display: Rebroadcast Indicator
display.rebroadcast_indicator = function(value)
  return "Rebroadcast Indicator: "..value
end

-- Dissect: Rebroadcast Indicator
dissect.rebroadcast_indicator = function(buffer, offset, packet, parent)
  local length = size_of.rebroadcast_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rebroadcast_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.rebroadcast_indicator, range, value, display)

  return offset + length, value
end

-- Size: Md Seq Num
size_of.md_seq_num = 8

-- Display: Md Seq Num
display.md_seq_num = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Seq Num: No Value"
  end

  return "Md Seq Num: "..value
end

-- Dissect: Md Seq Num
dissect.md_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.md_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Full Trade Information Message
size_of.apa_full_trade_information_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.trading_date_time

  index = index + size_of.publication_date_time

  index = index + size_of.trade_type

  index = index + size_of.mifid_instrument_id_type

  index = index + size_of.mifid_instrument_id

  index = index + size_of.mi_fid_transaction_id

  index = index + size_of.mifid_price

  index = index + size_of.mifid_quantity

  index = index + size_of.mifid_price_notation

  index = index + size_of.mifid_currency

  index = index + size_of.mi_fid_qtyin_msrmt_unit_notation

  index = index + size_of.mifid_quantity_measurement_unit

  index = index + size_of.mi_fid_notional_amount

  index = index + size_of.notional_currency

  index = index + size_of.mi_fid_clearing_flag

  index = index + size_of.efficient_mmt_market_mechanism

  index = index + size_of.efficient_mmt_trading_mode

  index = index + size_of.efficient_mmt_transaction_category

  index = index + size_of.efficient_mmt_negotiation_indicator

  index = index + size_of.efficient_mmt_agency_cross_trade_indicator

  index = index + size_of.efficient_mmt_modification_indicator

  index = index + size_of.efficient_mmt_benchmark_indicator

  index = index + size_of.efficient_mmt_special_dividend_indicator

  index = index + size_of.efficient_mmt_off_book_automated_indicator

  index = index + size_of.efficient_mmt_contributionto_price

  index = index + size_of.efficient_mmt_algorithmic_indicator

  index = index + size_of.efficient_mmt_publication_mode

  index = index + size_of.efficient_mmt_post_trade_deferral

  index = index + size_of.efficient_mmt_duplicative_indicator

  index = index + size_of.trade_reference

  index = index + size_of.original_report_timestamp

  index = index + size_of.price_multiplier

  index = index + size_of.price_multiplier_decimals

  index = index + size_of.venue

  index = index + size_of.mi_fid_emission_allowance_type

  return index
end

-- Display: Apa Full Trade Information Message
display.apa_full_trade_information_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Apa Full Trade Information Message
dissect.apa_full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 43 values
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String Nullable
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mi Fid Transaction Id: 52 Byte Ascii String
  index, mi_fid_transaction_id = dissect.mi_fid_transaction_id(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String Nullable
  index, mifid_price = dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = dissect.mifid_currency(buffer, index, packet, parent)

  -- Mi Fid Qtyin Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mi_fid_qtyin_msrmt_unit_notation = dissect.mi_fid_qtyin_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mi Fid Notional Amount: 20 Byte Ascii String Nullable
  index, mi_fid_notional_amount = dissect.mi_fid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Mi Fid Clearing Flag: 5 Byte Ascii String Nullable
  index, mi_fid_clearing_flag = dissect.mi_fid_clearing_flag(buffer, index, packet, parent)

  -- Efficient Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, efficient_mmt_market_mechanism = dissect.efficient_mmt_market_mechanism(buffer, index, packet, parent)

  -- Efficient Mmt Trading Mode: 1 Byte Ascii String Enum with 12 values
  index, efficient_mmt_trading_mode = dissect.efficient_mmt_trading_mode(buffer, index, packet, parent)

  -- Efficient Mmt Transaction Category: 1 Byte Ascii String Enum with 6 values
  index, efficient_mmt_transaction_category = dissect.efficient_mmt_transaction_category(buffer, index, packet, parent)

  -- Efficient Mmt Negotiation Indicator: 1 Byte Ascii String Enum with 9 values
  index, efficient_mmt_negotiation_indicator = dissect.efficient_mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Agency Cross Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_agency_cross_trade_indicator = dissect.efficient_mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Modification Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_modification_indicator = dissect.efficient_mmt_modification_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Benchmark Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_benchmark_indicator = dissect.efficient_mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Special Dividend Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_special_dividend_indicator = dissect.efficient_mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_off_book_automated_indicator = dissect.efficient_mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Contributionto Price: 1 Byte Ascii String Enum with 5 values
  index, efficient_mmt_contributionto_price = dissect.efficient_mmt_contributionto_price(buffer, index, packet, parent)

  -- Efficient Mmt Algorithmic Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_algorithmic_indicator = dissect.efficient_mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Publication Mode: 1 Byte Ascii String Enum with 8 values
  index, efficient_mmt_publication_mode = dissect.efficient_mmt_publication_mode(buffer, index, packet, parent)

  -- Efficient Mmt Post Trade Deferral: 1 Byte Ascii String Enum with 13 values
  index, efficient_mmt_post_trade_deferral = dissect.efficient_mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Efficient Mmt Duplicative Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_duplicative_indicator = dissect.efficient_mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = dissect.venue(buffer, index, packet, parent)

  -- Mi Fid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mi_fid_emission_allowance_type = dissect.mi_fid_emission_allowance_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Full Trade Information Message
dissect.apa_full_trade_information_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.apa_full_trade_information_message then
    local length = size_of.apa_full_trade_information_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.apa_full_trade_information_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_full_trade_information_message, range, display)
  end

  return dissect.apa_full_trade_information_message_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Method
size_of.settlement_method = 1

-- Display: Settlement Method
display.settlement_method = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Method: No Value"
  end

  return "Settlement Method: "..value
end

-- Dissect: Settlement Method
dissect.settlement_method = function(buffer, offset, packet, parent)
  local length = size_of.settlement_method
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.settlement_method(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_method, range, value, display)

  return offset + length, value
end

-- Size: Expiry Date
size_of.expiry_date = 8

-- Display: Expiry Date
display.expiry_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expiry Date: No Value"
  end

  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
dissect.expiry_date = function(buffer, offset, packet, parent)
  local length = size_of.expiry_date
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

  local display = display.expiry_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
size_of.maturity_date = 8

-- Display: Maturity Date
display.maturity_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date
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

  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Exer Style
size_of.exer_style = 1

-- Display: Exer Style
display.exer_style = function(value)
  if value == 0 then
    return "Exer Style: European (0)"
  end
  if value == 1 then
    return "Exer Style: American (1)"
  end
  if value == 2 then
    return "Exer Style: Asian (2)"
  end
  if value == 3 then
    return "Exer Style: Bermudan (3)"
  end
  if value == 4 then
    return "Exer Style: Other (4)"
  end
  if value == 255 then
    return "Exer Style: No Value"
  end

  return "Exer Style: Unknown("..value..")"
end

-- Dissect: Exer Style
dissect.exer_style = function(buffer, offset, packet, parent)
  local length = size_of.exer_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exer_style(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.exer_style, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimals
size_of.strike_price_decimals = 1

-- Display: Strike Price Decimals
display.strike_price_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals: No Value"
  end

  return "Strike Price Decimals: "..value
end

-- Dissect: Strike Price Decimals
dissect.strike_price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == 1 then
    return "Option Type: Call (1)"
  end
  if value == 2 then
    return "Option Type: Put (2)"
  end
  if value == 255 then
    return "Option Type: No Value"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Term
size_of.underlying_index_term = 8

-- Display: Underlying Index Term
display.underlying_index_term = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Term: No Value"
  end

  return "Underlying Index Term: "..value
end

-- Dissect: Underlying Index Term
dissect.underlying_index_term = function(buffer, offset, packet, parent)
  local length = size_of.underlying_index_term
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

  local display = display.underlying_index_term(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_index_term, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Name
size_of.underlying_index_name = 25

-- Display: Underlying Index Name
display.underlying_index_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Name: No Value"
  end

  return "Underlying Index Name: "..value
end

-- Dissect: Underlying Index Name
dissect.underlying_index_name = function(buffer, offset, packet, parent)
  local length = size_of.underlying_index_name
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

  local display = display.underlying_index_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_index_name, range, value, display)

  return offset + length, value
end

-- Size: Underlying Isin Code
size_of.underlying_isin_code = 12

-- Display: Underlying Isin Code
display.underlying_isin_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin Code: No Value"
  end

  return "Underlying Isin Code: "..value
end

-- Dissect: Underlying Isin Code
dissect.underlying_isin_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_isin_code
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

  local display = display.underlying_isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_isin_code, range, value, display)

  return offset + length, value
end

-- Size: Second Notional Currency
size_of.second_notional_currency = 3

-- Display: Second Notional Currency
display.second_notional_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Second Notional Currency: No Value"
  end

  return "Second Notional Currency: "..value
end

-- Dissect: Second Notional Currency
dissect.second_notional_currency = function(buffer, offset, packet, parent)
  local length = size_of.second_notional_currency
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

  local display = display.second_notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.second_notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Cfi
size_of.cfi = 6

-- Display: Cfi
display.cfi = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi: No Value"
  end

  return "Cfi: "..value
end

-- Dissect: Cfi
dissect.cfi = function(buffer, offset, packet, parent)
  local length = size_of.cfi
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

  local display = display.cfi(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.cfi, range, value, display)

  return offset + length, value
end

-- Size: Full Instrument Name
size_of.full_instrument_name = 102

-- Display: Full Instrument Name
display.full_instrument_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Full Instrument Name: No Value"
  end

  return "Full Instrument Name: "..value
end

-- Dissect: Full Instrument Name
dissect.full_instrument_name = function(buffer, offset, packet, parent)
  local length = size_of.full_instrument_name
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

  local display = display.full_instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.full_instrument_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Standing Data Message
size_of.apa_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.mifid_instrument_id_type

  index = index + size_of.mifid_instrument_id

  index = index + size_of.full_instrument_name

  index = index + size_of.cfi

  index = index + size_of.notional_currency

  index = index + size_of.second_notional_currency

  index = index + size_of.price_multiplier

  index = index + size_of.price_multiplier_decimals

  index = index + size_of.underlying_isin_code

  index = index + size_of.underlying_index_name

  index = index + size_of.underlying_index_term

  index = index + size_of.option_type

  index = index + size_of.strike_price

  index = index + size_of.strike_price_decimals

  index = index + size_of.exer_style

  index = index + size_of.maturity_date

  index = index + size_of.expiry_date

  index = index + size_of.settlement_method

  return index
end

-- Display: Apa Standing Data Message
display.apa_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Apa Standing Data Message
dissect.apa_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String Nullable
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = dissect.full_instrument_name(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String Nullable
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Second Notional Currency: 3 Byte Ascii String Nullable
  index, second_notional_currency = dissect.second_notional_currency(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Index Name: 25 Byte Ascii String Nullable
  index, underlying_index_name = dissect.underlying_index_name(buffer, index, packet, parent)

  -- Underlying Index Term: 8 Byte Ascii String Nullable
  index, underlying_index_term = dissect.underlying_index_term(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exer_style = dissect.exer_style(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Expiry Date: 8 Byte Ascii String Nullable
  index, expiry_date = dissect.expiry_date(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = dissect.settlement_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Standing Data Message
dissect.apa_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.apa_standing_data_message then
    local length = size_of.apa_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.apa_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_standing_data_message, range, display)
  end

  return dissect.apa_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Update Type
size_of.quote_update_type = 1

-- Display: Quote Update Type
display.quote_update_type = function(value)
  if value == 1 then
    return "Quote Update Type: Best Bid (1)"
  end
  if value == 2 then
    return "Quote Update Type: Best Offer (2)"
  end
  if value == 5 then
    return "Quote Update Type: Cancel Bid (5)"
  end
  if value == 6 then
    return "Quote Update Type: Cancel Offer (6)"
  end

  return "Quote Update Type: Unknown("..value..")"
end

-- Dissect: Quote Update Type
dissect.quote_update_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.quote_update_type, range, value, display)

  return offset + length, value
end

-- Size: Lei Code
size_of.lei_code = 20

-- Display: Lei Code
display.lei_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lei Code: No Value"
  end

  return "Lei Code: "..value
end

-- Dissect: Lei Code
dissect.lei_code = function(buffer, offset, packet, parent)
  local length = size_of.lei_code
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

  local display = display.lei_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.lei_code, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Mic
size_of.mic = 4

-- Display: Mic
display.mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
dissect.mic = function(buffer, offset, packet, parent)
  local length = size_of.mic
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

  local display = display.mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mic, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Quotes Message
size_of.apa_quotes_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.mifid_instrument_id_type

  index = index + size_of.mifid_instrument_id

  index = index + size_of.mic

  index = index + size_of.currency

  index = index + size_of.lei_code

  index = index + size_of.event_time

  index = index + size_of.quote_update_type

  index = index + size_of.mifid_price

  index = index + size_of.mifid_quantity

  return index
end

-- Display: Apa Quotes Message
display.apa_quotes_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Apa Quotes Message
dissect.apa_quotes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String Nullable
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Lei Code: 20 Byte Ascii String
  index, lei_code = dissect.lei_code(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Quote Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_update_type = dissect.quote_update_type(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String Nullable
  index, mifid_price = dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = dissect.mifid_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Quotes Message
dissect.apa_quotes_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.apa_quotes_message then
    local length = size_of.apa_quotes_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.apa_quotes_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.apa_quotes_message, range, display)
  end

  return dissect.apa_quotes_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Ratio
size_of.leg_ratio = 4

-- Display: Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol Index
size_of.leg_symbol_index = 4

-- Display: Leg Symbol Index
display.leg_symbol_index = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
dissect.leg_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Package Components Group
size_of.package_components_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol_index

  index = index + size_of.leg_ratio

  return index
end

-- Display: Package Components Group
display.package_components_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Package Components Group
dissect.package_components_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Package Components Group
dissect.package_components_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.package_components_group then
    local length = size_of.package_components_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.package_components_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.package_components_group, range, display)
  end

  return dissect.package_components_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length uint 8
size_of.block_length_uint_8 = 1

-- Display: Block Length uint 8
display.block_length_uint_8 = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
dissect.block_length_uint_8 = function(buffer, offset, packet, parent)
  local length = size_of.block_length_uint_8
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length_uint_8(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length_uint_8

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: 1 Byte Unsigned Fixed Width Integer
  index, block_length_uint_8 = dissect.block_length_uint_8(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local length = size_of.group_size_encoding(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.group_size_encoding, range, display)
  end

  return dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Package Components Groups
size_of.package_components_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local package_components_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + package_components_group_count * 8

  return index
end

-- Display: Package Components Groups
display.package_components_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Package Components Groups
dissect.package_components_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Package Components Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.package_components_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Package Components Groups
dissect.package_components_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.package_components_groups then
    local length = size_of.package_components_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.package_components_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.package_components_groups, range, display)
  end

  return dissect.package_components_groups_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Code
size_of.strategy_code = 1

-- Display: Strategy Code
display.strategy_code = function(value)
  if value == "A" then
    return "Strategy Code: Jelly Roll (A)"
  end
  if value == "B" then
    return "Strategy Code: Butterfly (B)"
  end
  if value == "C" then
    return "Strategy Code: Callor Put Cabinet (C)"
  end
  if value == "D" then
    return "Strategy Code: Spread (D)"
  end
  if value == "E" then
    return "Strategy Code: Calendar Spread (E)"
  end
  if value == "F" then
    return "Strategy Code: Diagonal Calendar Spread (F)"
  end
  if value == "G" then
    return "Strategy Code: Guts (G)"
  end
  if value == "H" then
    return "Strategy Code: Twoby One Ratio Spread (H)"
  end
  if value == "I" then
    return "Strategy Code: Iron Butterfly (I)"
  end
  if value == "J" then
    return "Strategy Code: Combo (J)"
  end
  if value == "K" then
    return "Strategy Code: Strangle (K)"
  end
  if value == "L" then
    return "Strategy Code: Ladder (L)"
  end
  if value == "M" then
    return "Strategy Code: Strip (M)"
  end
  if value == "N" then
    return "Strategy Code: Straddle Calendar Spread (N)"
  end
  if value == "O" then
    return "Strategy Code: Pack (O)"
  end
  if value == "P" then
    return "Strategy Code: Diagonal Straddle Calendar Spread (P)"
  end
  if value == "Q" then
    return "Strategy Code: Simple Inter Commodity Spread (Q)"
  end
  if value == "R" then
    return "Strategy Code: Conversion Reversal (R)"
  end
  if value == "S" then
    return "Strategy Code: Straddle (S)"
  end
  if value == "V" then
    return "Strategy Code: Volatility Trade (V)"
  end
  if value == "W" then
    return "Strategy Code: Condor (W)"
  end
  if value == "X" then
    return "Strategy Code: Box (X)"
  end
  if value == "Y" then
    return "Strategy Code: Bundle (Y)"
  end
  if value == "Z" then
    return "Strategy Code: Reduced Tick Spread (Z)"
  end
  if value == "a" then
    return "Strategy Code: Ladderversus Underlying (a)"
  end
  if value == "b" then
    return "Strategy Code: Butterflyversus Underlying (b)"
  end
  if value == "c" then
    return "Strategy Code: Call Spreadversus Putversus Underlying (c)"
  end
  if value == "d" then
    return "Strategy Code: Callor Put Spreadversus Underlying (d)"
  end
  if value == "e" then
    return "Strategy Code: Callor Put Calendar Spreadversus Underlying (e)"
  end
  if value == "f" then
    return "Strategy Code: Call Put Diagonal Calendar Spreadversus Underlying (f)"
  end
  if value == "g" then
    return "Strategy Code: Gutsversus Underlying (g)"
  end
  if value == "h" then
    return "Strategy Code: Twoby One Callor Put Ratio Spreadversus Underlying (h)"
  end
  if value == "i" then
    return "Strategy Code: Iron Butterflyversus Underlying (i)"
  end
  if value == "j" then
    return "Strategy Code: Comboversus Underlying (j)"
  end
  if value == "k" then
    return "Strategy Code: Strangleversus Underlying (k)"
  end
  if value == "m" then
    return "Strategy Code: Exchangefor Physical (m)"
  end
  if value == "n" then
    return "Strategy Code: Straddle Calendar Spreadversus Underlying (n)"
  end
  if value == "p" then
    return "Strategy Code: Put Spreadversus Callversus Underlying (p)"
  end
  if value == "q" then
    return "Strategy Code: Diagonal Straddle Calendar Spreadversus Underlying (q)"
  end
  if value == "r" then
    return "Strategy Code: Synthetic (r)"
  end
  if value == "s" then
    return "Strategy Code: Straddleversus Underlying (s)"
  end
  if value == "t" then
    return "Strategy Code: Condorversus Underlying (t)"
  end
  if value == "u" then
    return "Strategy Code: Buy Write (u)"
  end
  if value == "v" then
    return "Strategy Code: Iron Condorversus Underlying (v)"
  end
  if value == "w" then
    return "Strategy Code: Iron Condor (w)"
  end
  if value == "x" then
    return "Strategy Code: Call Spreadversus Sella Put (x)"
  end
  if value == "y" then
    return "Strategy Code: Put Spreadversus Sella Call (y)"
  end
  if value == "z" then
    return "Strategy Code: Put Straddleversus Sella Callora Put (z)"
  end

  return "Strategy Code: Unknown("..value..")"
end

-- Dissect: Strategy Code
dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = size_of.strategy_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Mifid Execution Id
size_of.mifid_execution_id = 52

-- Display: Mifid Execution Id
display.mifid_execution_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Execution Id: No Value"
  end

  return "Mifid Execution Id: "..value
end

-- Dissect: Mifid Execution Id
dissect.mifid_execution_id = function(buffer, offset, packet, parent)
  local length = size_of.mifid_execution_id
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

  local display = display.mifid_execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifid_execution_id, range, value, display)

  return offset + length, value
end

-- Size: Contract Symbol Index
size_of.contract_symbol_index = 4

-- Display: Contract Symbol Index
display.contract_symbol_index = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
dissect.contract_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.contract_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Lis Package Structure Message
size_of.lis_package_structure_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.contract_symbol_index

  index = index + size_of.mifid_execution_id

  index = index + size_of.strategy_code

  index = index + size_of.package_components_groups(buffer, offset + index)

  return index
end

-- Display: Lis Package Structure Message
display.lis_package_structure_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lis Package Structure Message
dissect.lis_package_structure_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Package Components Groups: Struct of 2 fields
  index, package_components_groups = dissect.package_components_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Lis Package Structure Message
dissect.lis_package_structure_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lis_package_structure_message then
    local length = size_of.lis_package_structure_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.lis_package_structure_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.lis_package_structure_message, range, display)
  end

  return dissect.lis_package_structure_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Outright Rep Group
size_of.outright_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.emm

  return index
end

-- Display: Outright Rep Group
display.outright_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Rep Group
dissect.outright_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Rep Group
dissect.outright_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_rep_group then
    local length = size_of.outright_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.outright_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_rep_group, range, display)
  end

  return dissect.outright_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Outright Rep Groups
size_of.outright_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local outright_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + outright_rep_group_count * 1

  return index
end

-- Display: Outright Rep Groups
display.outright_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Rep Groups
dissect.outright_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Outright Rep Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = dissect.outright_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Outright Rep Groups
dissect.outright_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_rep_groups then
    local length = size_of.outright_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.outright_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_rep_groups, range, display)
  end

  return dissect.outright_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Trading Unit
size_of.trading_unit = 8

-- Display: Trading Unit
display.trading_unit = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trading Unit: No Value"
  end

  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
dissect.trading_unit = function(buffer, offset, packet, parent)
  local length = size_of.trading_unit
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trading_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Index
size_of.underlying_symbol_index = 4

-- Display: Underlying Symbol Index
display.underlying_symbol_index = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Symbol Index: No Value"
  end

  return "Underlying Symbol Index: "..value
end

-- Dissect: Underlying Symbol Index
dissect.underlying_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Underlying Derivatives Instrument Trading Code
size_of.underlying_derivatives_instrument_trading_code = 18

-- Display: Underlying Derivatives Instrument Trading Code
display.underlying_derivatives_instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Derivatives Instrument Trading Code: No Value"
  end

  return "Underlying Derivatives Instrument Trading Code: "..value
end

-- Dissect: Underlying Derivatives Instrument Trading Code
dissect.underlying_derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_derivatives_instrument_trading_code
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

  local display = display.underlying_derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Expiry Cycle Type
size_of.expiry_cycle_type = 1

-- Display: Expiry Cycle Type
display.expiry_cycle_type = function(value)
  if value == 1 then
    return "Expiry Cycle Type: Daily (1)"
  end
  if value == 2 then
    return "Expiry Cycle Type: Weekly (2)"
  end
  if value == 3 then
    return "Expiry Cycle Type: Monthly (3)"
  end
  if value == 255 then
    return "Expiry Cycle Type: No Value"
  end

  return "Expiry Cycle Type: Unknown("..value..")"
end

-- Dissect: Expiry Cycle Type
dissect.expiry_cycle_type = function(buffer, offset, packet, parent)
  local length = size_of.expiry_cycle_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expiry_cycle_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.expiry_cycle_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Type
size_of.derivatives_instrument_type = 1

-- Display: Derivatives Instrument Type
display.derivatives_instrument_type = function(value)
  if value == 0 then
    return "Derivatives Instrument Type: Call Option (0)"
  end
  if value == 1 then
    return "Derivatives Instrument Type: Put Option (1)"
  end
  if value == 2 then
    return "Derivatives Instrument Type: Strategy (2)"
  end
  if value == 3 then
    return "Derivatives Instrument Type: Individual Future (3)"
  end
  if value == 4 then
    return "Derivatives Instrument Type: Underlying (4)"
  end
  if value == 255 then
    return "Derivatives Instrument Type: No Value"
  end

  return "Derivatives Instrument Type: Unknown("..value..")"
end

-- Dissect: Derivatives Instrument Type
dissect.derivatives_instrument_type = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_instrument_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.derivatives_instrument_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Trading Code
size_of.derivatives_instrument_trading_code = 18

-- Display: Derivatives Instrument Trading Code
display.derivatives_instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Derivatives Instrument Trading Code: No Value"
  end

  return "Derivatives Instrument Trading Code: "..value
end

-- Dissect: Derivatives Instrument Trading Code
dissect.derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_instrument_trading_code
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

  local display = display.derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Days To Expiry
size_of.days_to_expiry = 2

-- Display: Days To Expiry
display.days_to_expiry = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Days To Expiry: No Value"
  end

  return "Days To Expiry: "..value
end

-- Dissect: Days To Expiry
dissect.days_to_expiry = function(buffer, offset, packet, parent)
  local length = size_of.days_to_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.days_to_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.days_to_expiry, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Date
size_of.last_trading_date = 2

-- Display: Last Trading Date
display.last_trading_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Last Trading Date: No Value"
  end

  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
dissect.last_trading_date = function(buffer, offset, packet, parent)
  local length = size_of.last_trading_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
size_of.lot_size = 8

-- Display: Lot Size
display.lot_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lot Size: No Value"
  end

  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local length = size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Isin Code
size_of.isin_code = 12

-- Display: Isin Code
display.isin_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code: No Value"
  end

  return "Isin Code: "..value
end

-- Dissect: Isin Code
dissect.isin_code = function(buffer, offset, packet, parent)
  local length = size_of.isin_code
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

  local display = display.isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Event Date
size_of.instrument_event_date = 2

-- Display: Instrument Event Date
display.instrument_event_date = function(value)
  return "Instrument Event Date: "..value
end

-- Dissect: Instrument Event Date
dissect.instrument_event_date = function(buffer, offset, packet, parent)
  local length = size_of.instrument_event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instrument_event_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_event_date, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index: No Value"
  end

  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Standing Data Message
size_of.outright_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.contract_symbol_index

  index = index + size_of.instrument_event_date

  index = index + size_of.isin_code

  index = index + size_of.cfi

  index = index + size_of.maturity_date

  index = index + size_of.lot_size

  index = index + size_of.strike_price

  index = index + size_of.last_trading_date

  index = index + size_of.days_to_expiry

  index = index + size_of.derivatives_instrument_trading_code

  index = index + size_of.derivatives_instrument_type

  index = index + size_of.expiry_cycle_type

  index = index + size_of.underlying_derivatives_instrument_trading_code

  index = index + size_of.underlying_symbol_index

  index = index + size_of.trading_unit

  index = index + size_of.outright_rep_groups(buffer, offset + index)

  return index
end

-- Display: Outright Standing Data Message
display.outright_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Standing Data Message
dissect.outright_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = dissect.instrument_event_date(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = dissect.isin_code(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String Nullable
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Last Trading Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, last_trading_date = dissect.last_trading_date(buffer, index, packet, parent)

  -- Days To Expiry: 2 Byte Unsigned Fixed Width Integer Nullable
  index, days_to_expiry = dissect.days_to_expiry(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String Nullable
  index, derivatives_instrument_trading_code = dissect.derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Derivatives Instrument Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, derivatives_instrument_type = dissect.derivatives_instrument_type(buffer, index, packet, parent)

  -- Expiry Cycle Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, expiry_cycle_type = dissect.expiry_cycle_type(buffer, index, packet, parent)

  -- Underlying Derivatives Instrument Trading Code: 18 Byte Ascii String Nullable
  index, underlying_derivatives_instrument_trading_code = dissect.underlying_derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = dissect.trading_unit(buffer, index, packet, parent)

  -- Outright Rep Groups: Struct of 2 fields
  index, outright_rep_groups = dissect.outright_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Standing Data Message
dissect.outright_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_standing_data_message then
    local length = size_of.outright_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.outright_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.outright_standing_data_message, range, display)
  end

  return dissect.outright_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Collar Unhalt Delay
size_of.collar_unhalt_delay = 4

-- Display: Collar Unhalt Delay
display.collar_unhalt_delay = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Collar Unhalt Delay: No Value"
  end

  return "Collar Unhalt Delay: "..value
end

-- Dissect: Collar Unhalt Delay
dissect.collar_unhalt_delay = function(buffer, offset, packet, parent)
  local length = size_of.collar_unhalt_delay
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.collar_unhalt_delay(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_unhalt_delay, range, value, display)

  return offset + length, value
end

-- Size: Collar Max Unhalt Nb
size_of.collar_max_unhalt_nb = 1

-- Display: Collar Max Unhalt Nb
display.collar_max_unhalt_nb = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Max Unhalt Nb: No Value"
  end

  return "Collar Max Unhalt Nb: "..value
end

-- Dissect: Collar Max Unhalt Nb
dissect.collar_max_unhalt_nb = function(buffer, offset, packet, parent)
  local length = size_of.collar_max_unhalt_nb
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.collar_max_unhalt_nb(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_max_unhalt_nb, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Collar Logic
size_of.dynamic_collar_logic = 1

-- Display: Dynamic Collar Logic
display.dynamic_collar_logic = function(value)
  if value == 0 then
    return "Dynamic Collar Logic: Not Active (0)"
  end
  if value == 2 then
    return "Dynamic Collar Logic: No Haltwith Reject (2)"
  end
  if value == 3 then
    return "Dynamic Collar Logic: Haltwith Acceptation (3)"
  end
  if value == 255 then
    return "Dynamic Collar Logic: No Value"
  end

  return "Dynamic Collar Logic: Unknown("..value..")"
end

-- Dissect: Dynamic Collar Logic
dissect.dynamic_collar_logic = function(buffer, offset, packet, parent)
  local length = size_of.dynamic_collar_logic
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dynamic_collar_logic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.dynamic_collar_logic, range, value, display)

  return offset + length, value
end

-- Size: Strategy Authorized
size_of.strategy_authorized = 8

-- Display: Strategy Authorized
display.strategy_authorized = function(buffer, packet, parent)
  local display = ""

  -- Is Put Straddle Versus Sell A Call Or A Put flag set?
  if buffer:bitfield(16) > 0 then
    display = display.."Put Straddle Versus Sell A Call Or A Put|"
  end
  -- Is Put Spread Versus Sell A Call flag set?
  if buffer:bitfield(17) > 0 then
    display = display.."Put Spread Versus Sell A Call|"
  end
  -- Is Call Spread Versus Sell A Put flag set?
  if buffer:bitfield(18) > 0 then
    display = display.."Call Spread Versus Sell A Put|"
  end
  -- Is Iron Condor flag set?
  if buffer:bitfield(19) > 0 then
    display = display.."Iron Condor|"
  end
  -- Is Iron Condor Versus Underlying flag set?
  if buffer:bitfield(20) > 0 then
    display = display.."Iron Condor Versus Underlying|"
  end
  -- Is Buy Write flag set?
  if buffer:bitfield(21) > 0 then
    display = display.."Buy Write|"
  end
  -- Is Condor Versus Underlying flag set?
  if buffer:bitfield(22) > 0 then
    display = display.."Condor Versus Underlying|"
  end
  -- Is Straddle Versus Underlying flag set?
  if buffer:bitfield(23) > 0 then
    display = display.."Straddle Versus Underlying|"
  end
  -- Is Synthetic flag set?
  if buffer:bitfield(24) > 0 then
    display = display.."Synthetic|"
  end
  -- Is Diagonal Straddle Calendar Spread Versus Underlying flag set?
  if buffer:bitfield(25) > 0 then
    display = display.."Diagonal Straddle Calendar Spread Versus Underlying|"
  end
  -- Is Put Spread Versus Call Versus Underlying flag set?
  if buffer:bitfield(26) > 0 then
    display = display.."Put Spread Versus Call Versus Underlying|"
  end
  -- Is Straddle Calendar Spread Versus Underlying flag set?
  if buffer:bitfield(27) > 0 then
    display = display.."Straddle Calendar Spread Versus Underlying|"
  end
  -- Is Exchange For Physical flag set?
  if buffer:bitfield(28) > 0 then
    display = display.."Exchange For Physical|"
  end
  -- Is Strangle Versus Underlying flag set?
  if buffer:bitfield(29) > 0 then
    display = display.."Strangle Versus Underlying|"
  end
  -- Is Combo Versus Underlying flag set?
  if buffer:bitfield(30) > 0 then
    display = display.."Combo Versus Underlying|"
  end
  -- Is Iron Butterfly Versus Underlying flag set?
  if buffer:bitfield(31) > 0 then
    display = display.."Iron Butterfly Versus Underlying|"
  end
  -- Is Two By One Call Or Put Ratio Spread Versus Underlying flag set?
  if buffer:bitfield(32) > 0 then
    display = display.."Two By One Call Or Put Ratio Spread Versus Underlying|"
  end
  -- Is Guts Versus Underlying flag set?
  if buffer:bitfield(33) > 0 then
    display = display.."Guts Versus Underlying|"
  end
  -- Is Call Put Diagonal Calendar Spread Versus Underlying flag set?
  if buffer:bitfield(34) > 0 then
    display = display.."Call Put Diagonal Calendar Spread Versus Underlying|"
  end
  -- Is Call Or Put Calendar Spread Versus Underlying flag set?
  if buffer:bitfield(35) > 0 then
    display = display.."Call Or Put Calendar Spread Versus Underlying|"
  end
  -- Is Call Or Put Spread Versus Underlying flag set?
  if buffer:bitfield(36) > 0 then
    display = display.."Call Or Put Spread Versus Underlying|"
  end
  -- Is Call Spread Versus Put Versus Underlying flag set?
  if buffer:bitfield(37) > 0 then
    display = display.."Call Spread Versus Put Versus Underlying|"
  end
  -- Is Butterfly Versus Underlying flag set?
  if buffer:bitfield(38) > 0 then
    display = display.."Butterfly Versus Underlying|"
  end
  -- Is Ladder Versus Underlying flag set?
  if buffer:bitfield(39) > 0 then
    display = display.."Ladder Versus Underlying|"
  end
  -- Is Reduced Tick Spread flag set?
  if buffer:bitfield(40) > 0 then
    display = display.."Reduced Tick Spread|"
  end
  -- Is Bundle flag set?
  if buffer:bitfield(41) > 0 then
    display = display.."Bundle|"
  end
  -- Is Box flag set?
  if buffer:bitfield(42) > 0 then
    display = display.."Box|"
  end
  -- Is Condor flag set?
  if buffer:bitfield(43) > 0 then
    display = display.."Condor|"
  end
  -- Is Volatility Trade flag set?
  if buffer:bitfield(44) > 0 then
    display = display.."Volatility Trade|"
  end
  -- Is Straddle flag set?
  if buffer:bitfield(45) > 0 then
    display = display.."Straddle|"
  end
  -- Is Conversion Reversal flag set?
  if buffer:bitfield(46) > 0 then
    display = display.."Conversion Reversal|"
  end
  -- Is Simple Inter Commodity Spread flag set?
  if buffer:bitfield(47) > 0 then
    display = display.."Simple Inter Commodity Spread|"
  end
  -- Is Diagonal Straddle Calendar Spread flag set?
  if buffer:bitfield(48) > 0 then
    display = display.."Diagonal Straddle Calendar Spread|"
  end
  -- Is Pack flag set?
  if buffer:bitfield(49) > 0 then
    display = display.."Pack|"
  end
  -- Is Straddle Calendar Spread flag set?
  if buffer:bitfield(50) > 0 then
    display = display.."Straddle Calendar Spread|"
  end
  -- Is Strip flag set?
  if buffer:bitfield(51) > 0 then
    display = display.."Strip|"
  end
  -- Is Ladder flag set?
  if buffer:bitfield(52) > 0 then
    display = display.."Ladder|"
  end
  -- Is Strangle flag set?
  if buffer:bitfield(53) > 0 then
    display = display.."Strangle|"
  end
  -- Is Combo flag set?
  if buffer:bitfield(54) > 0 then
    display = display.."Combo|"
  end
  -- Is Iron Butterfly flag set?
  if buffer:bitfield(55) > 0 then
    display = display.."Iron Butterfly|"
  end
  -- Is Two By One Ratio Spread flag set?
  if buffer:bitfield(56) > 0 then
    display = display.."Two By One Ratio Spread|"
  end
  -- Is Guts flag set?
  if buffer:bitfield(57) > 0 then
    display = display.."Guts|"
  end
  -- Is Diagonal Calendar Spread flag set?
  if buffer:bitfield(58) > 0 then
    display = display.."Diagonal Calendar Spread|"
  end
  -- Is Calendar Spread flag set?
  if buffer:bitfield(59) > 0 then
    display = display.."Calendar Spread|"
  end
  -- Is Spread flag set?
  if buffer:bitfield(60) > 0 then
    display = display.."Spread|"
  end
  -- Is Call Or Put Cabinet flag set?
  if buffer:bitfield(61) > 0 then
    display = display.."Call Or Put Cabinet|"
  end
  -- Is Butterfly flag set?
  if buffer:bitfield(62) > 0 then
    display = display.."Butterfly|"
  end
  -- Is Jelly Roll flag set?
  if buffer:bitfield(63) > 0 then
    display = display.."Jelly Roll|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Strategy Authorized
dissect.strategy_authorized_bits = function(buffer, offset, packet, parent)

  -- Reserved 16: 16 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_16, buffer(offset, 8))

  -- Put Straddle Versus Sell A Call Or A Put: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_straddle_versus_sell_a_call_or_a_put, buffer(offset, 8))

  -- Put Spread Versus Sell A Call: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_spread_versus_sell_a_call, buffer(offset, 8))

  -- Call Spread Versus Sell A Put: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_spread_versus_sell_a_put, buffer(offset, 8))

  -- Iron Condor: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_condor, buffer(offset, 8))

  -- Iron Condor Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_condor_versus_underlying, buffer(offset, 8))

  -- Buy Write: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.buy_write, buffer(offset, 8))

  -- Condor Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.condor_versus_underlying, buffer(offset, 8))

  -- Straddle Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_versus_underlying, buffer(offset, 8))

  -- Synthetic: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.synthetic, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Put Spread Versus Call Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.put_spread_versus_call_versus_underlying, buffer(offset, 8))

  -- Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Exchange For Physical: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.exchange_for_physical, buffer(offset, 8))

  -- Strangle Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strangle_versus_underlying, buffer(offset, 8))

  -- Combo Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.combo_versus_underlying, buffer(offset, 8))

  -- Iron Butterfly Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_butterfly_versus_underlying, buffer(offset, 8))

  -- Two By One Call Or Put Ratio Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.two_by_one_call_or_put_ratio_spread_versus_underlying, buffer(offset, 8))

  -- Guts Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.guts_versus_underlying, buffer(offset, 8))

  -- Call Put Diagonal Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_put_diagonal_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_spread_versus_underlying, buffer(offset, 8))

  -- Call Spread Versus Put Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_spread_versus_put_versus_underlying, buffer(offset, 8))

  -- Butterfly Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.butterfly_versus_underlying, buffer(offset, 8))

  -- Ladder Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.ladder_versus_underlying, buffer(offset, 8))

  -- Reduced Tick Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reduced_tick_spread, buffer(offset, 8))

  -- Bundle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.bundle, buffer(offset, 8))

  -- Box: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.box, buffer(offset, 8))

  -- Condor: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.condor, buffer(offset, 8))

  -- Volatility Trade: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.volatility_trade, buffer(offset, 8))

  -- Straddle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle, buffer(offset, 8))

  -- Conversion Reversal: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.conversion_reversal, buffer(offset, 8))

  -- Simple Inter Commodity Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.simple_inter_commodity_spread, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_straddle_calendar_spread, buffer(offset, 8))

  -- Pack: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.pack, buffer(offset, 8))

  -- Straddle Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.straddle_calendar_spread, buffer(offset, 8))

  -- Strip: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strip, buffer(offset, 8))

  -- Ladder: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.ladder, buffer(offset, 8))

  -- Strangle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strangle, buffer(offset, 8))

  -- Combo: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.combo, buffer(offset, 8))

  -- Iron Butterfly: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.iron_butterfly, buffer(offset, 8))

  -- Two By One Ratio Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.two_by_one_ratio_spread, buffer(offset, 8))

  -- Guts: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.guts, buffer(offset, 8))

  -- Diagonal Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.diagonal_calendar_spread, buffer(offset, 8))

  -- Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.calendar_spread, buffer(offset, 8))

  -- Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.spread, buffer(offset, 8))

  -- Call Or Put Cabinet: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_or_put_cabinet, buffer(offset, 8))

  -- Butterfly: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.butterfly, buffer(offset, 8))

  -- Jelly Roll: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.jelly_roll, buffer(offset, 8))
end

-- Dissect: Strategy Authorized
dissect.strategy_authorized = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local display = display.strategy_authorized(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_authorized, range, display)

  if show.strategy_authorized then
    dissect.strategy_authorized_bits(buffer, offset, packet, element)
  end

  return offset + 8, range
end

-- Size: Pattern Id
size_of.pattern_id = 2

-- Display: Pattern Id
display.pattern_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Pattern Id: No Value"
  end

  return "Pattern Id: "..value
end

-- Dissect: Pattern Id
dissect.pattern_id = function(buffer, offset, packet, parent)
  local length = size_of.pattern_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.pattern_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.pattern_id, range, value, display)

  return offset + length, value
end

-- Size: Tick Size Index Id
size_of.tick_size_index_id = 2

-- Display: Tick Size Index Id
display.tick_size_index_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Tick Size Index Id: No Value"
  end

  return "Tick Size Index Id: "..value
end

-- Dissect: Tick Size Index Id
dissect.tick_size_index_id = function(buffer, offset, packet, parent)
  local length = size_of.tick_size_index_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tick_size_index_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.tick_size_index_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Contract Em M Properties Group
size_of.contract_em_m_properties_group = function(buffer, offset)
  local index = 0

  index = index + size_of.emm

  index = index + size_of.tick_size_index_id

  index = index + size_of.pattern_id

  index = index + size_of.lot_size

  index = index + size_of.strategy_authorized

  index = index + size_of.dynamic_collar_logic

  index = index + size_of.collar_max_unhalt_nb

  index = index + size_of.collar_unhalt_delay

  return index
end

-- Display: Contract Em M Properties Group
display.contract_em_m_properties_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contract Em M Properties Group
dissect.contract_em_m_properties_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = dissect.tick_size_index_id(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = dissect.pattern_id(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Strategy Authorized: Struct of 49 fields
  index, strategy_authorized = dissect.strategy_authorized(buffer, index, packet, parent)

  -- Dynamic Collar Logic: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, dynamic_collar_logic = dissect.dynamic_collar_logic(buffer, index, packet, parent)

  -- Collar Max Unhalt Nb: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_max_unhalt_nb = dissect.collar_max_unhalt_nb(buffer, index, packet, parent)

  -- Collar Unhalt Delay: 4 Byte Unsigned Fixed Width Integer Nullable
  index, collar_unhalt_delay = dissect.collar_unhalt_delay(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Em M Properties Group
dissect.contract_em_m_properties_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.contract_em_m_properties_group then
    local length = size_of.contract_em_m_properties_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contract_em_m_properties_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_em_m_properties_group, range, display)
  end

  return dissect.contract_em_m_properties_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Contract Em M Properties Groups
size_of.contract_em_m_properties_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local contract_em_m_properties_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + contract_em_m_properties_group_count * 27

  return index
end

-- Display: Contract Em M Properties Groups
display.contract_em_m_properties_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contract Em M Properties Groups
dissect.contract_em_m_properties_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Contract Em M Properties Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.contract_em_m_properties_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Contract Em M Properties Groups
dissect.contract_em_m_properties_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_em_m_properties_groups then
    local length = size_of.contract_em_m_properties_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contract_em_m_properties_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_em_m_properties_groups, range, display)
  end

  return dissect.contract_em_m_properties_groups_fields(buffer, offset, packet, parent)
end

-- Size: Pricing Algorithm
size_of.pricing_algorithm = 1

-- Display: Pricing Algorithm
display.pricing_algorithm = function(value)
  if value == 0 then
    return "Pricing Algorithm: Standard (0)"
  end
  if value == 1 then
    return "Pricing Algorithm: Total Return Future (1)"
  end
  if value == 2 then
    return "Pricing Algorithm: Market On Close (2)"
  end

  return "Pricing Algorithm: Unknown("..value..")"
end

-- Dissect: Pricing Algorithm
dissect.pricing_algorithm = function(buffer, offset, packet, parent)
  local length = size_of.pricing_algorithm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.pricing_algorithm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.pricing_algorithm, range, value, display)

  return offset + length, value
end

-- Size: Mifidii Liquid Flag
size_of.mifidii_liquid_flag = 1

-- Display: Mifidii Liquid Flag
display.mifidii_liquid_flag = function(value)
  return "Mifidii Liquid Flag: "..value
end

-- Dissect: Mifidii Liquid Flag
dissect.mifidii_liquid_flag = function(buffer, offset, packet, parent)
  local length = size_of.mifidii_liquid_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mifidii_liquid_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mifidii_liquid_flag, range, value, display)

  return offset + length, value
end

-- Size: Collar Expansion Factor
size_of.collar_expansion_factor = 1

-- Display: Collar Expansion Factor
display.collar_expansion_factor = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Expansion Factor: No Value"
  end

  return "Collar Expansion Factor: "..value
end

-- Dissect: Collar Expansion Factor
dissect.collar_expansion_factor = function(buffer, offset, packet, parent)
  local length = size_of.collar_expansion_factor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.collar_expansion_factor(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.collar_expansion_factor, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Trading Interruption
size_of.reference_price_origin_in_trading_interruption = 1

-- Display: Reference Price Origin In Trading Interruption
display.reference_price_origin_in_trading_interruption = function(value)
  if value == 1 then
    return "Reference Price Origin In Trading Interruption: Internal (1)"
  end
  if value == 2 then
    return "Reference Price Origin In Trading Interruption: External (2)"
  end
  if value == 3 then
    return "Reference Price Origin In Trading Interruption: External Bbo (3)"
  end
  if value == 4 then
    return "Reference Price Origin In Trading Interruption: Opening Call Price (4)"
  end
  if value == 5 then
    return "Reference Price Origin In Trading Interruption: Mid Bb Oor Fair Value (5)"
  end
  if value == 6 then
    return "Reference Price Origin In Trading Interruption: Fair Value (6)"
  end
  if value == 7 then
    return "Reference Price Origin In Trading Interruption: Future Market Price (7)"
  end
  if value == 255 then
    return "Reference Price Origin In Trading Interruption: No Value"
  end

  return "Reference Price Origin In Trading Interruption: Unknown("..value..")"
end

-- Dissect: Reference Price Origin In Trading Interruption
dissect.reference_price_origin_in_trading_interruption = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_trading_interruption
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_trading_interruption(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_trading_interruption, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Continuous
size_of.reference_price_origin_in_continuous = 1

-- Display: Reference Price Origin In Continuous
display.reference_price_origin_in_continuous = function(value)
  if value == 1 then
    return "Reference Price Origin In Continuous: Internal (1)"
  end
  if value == 2 then
    return "Reference Price Origin In Continuous: External (2)"
  end
  if value == 3 then
    return "Reference Price Origin In Continuous: External Bbo (3)"
  end
  if value == 4 then
    return "Reference Price Origin In Continuous: Opening Call Price (4)"
  end
  if value == 5 then
    return "Reference Price Origin In Continuous: Mid Bb Oor Fair Value (5)"
  end
  if value == 6 then
    return "Reference Price Origin In Continuous: Fair Value (6)"
  end
  if value == 7 then
    return "Reference Price Origin In Continuous: Future Market Price (7)"
  end
  if value == 255 then
    return "Reference Price Origin In Continuous: No Value"
  end

  return "Reference Price Origin In Continuous: Unknown("..value..")"
end

-- Dissect: Reference Price Origin In Continuous
dissect.reference_price_origin_in_continuous = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_continuous
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_continuous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_continuous, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Opening Call
size_of.reference_price_origin_in_opening_call = 1

-- Display: Reference Price Origin In Opening Call
display.reference_price_origin_in_opening_call = function(value)
  if value == 1 then
    return "Reference Price Origin In Opening Call: Internal (1)"
  end
  if value == 2 then
    return "Reference Price Origin In Opening Call: External (2)"
  end
  if value == 3 then
    return "Reference Price Origin In Opening Call: External Bbo (3)"
  end
  if value == 4 then
    return "Reference Price Origin In Opening Call: Opening Call Price (4)"
  end
  if value == 5 then
    return "Reference Price Origin In Opening Call: Mid Bb Oor Fair Value (5)"
  end
  if value == 6 then
    return "Reference Price Origin In Opening Call: Fair Value (6)"
  end
  if value == 7 then
    return "Reference Price Origin In Opening Call: Future Market Price (7)"
  end
  if value == 255 then
    return "Reference Price Origin In Opening Call: No Value"
  end

  return "Reference Price Origin In Opening Call: Unknown("..value..")"
end

-- Dissect: Reference Price Origin In Opening Call
dissect.reference_price_origin_in_opening_call = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_opening_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_opening_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_price_origin_in_opening_call, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Market Model
size_of.derivatives_market_model = 1

-- Display: Derivatives Market Model
display.derivatives_market_model = function(value)
  if value == 0 then
    return "Derivatives Market Model: No Synthetic Quote (0)"
  end
  if value == 1 then
    return "Derivatives Market Model: Spontaneous Implied Matching (1)"
  end
  if value == 2 then
    return "Derivatives Market Model: Event Driven Implied Matching (2)"
  end
  if value == 255 then
    return "Derivatives Market Model: No Value"
  end

  return "Derivatives Market Model: Unknown("..value..")"
end

-- Dissect: Derivatives Market Model
dissect.derivatives_market_model = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_market_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.derivatives_market_model(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.derivatives_market_model, range, value, display)

  return offset + length, value
end

-- Size: Reference Spread Table Id
size_of.reference_spread_table_id = 2

-- Display: Reference Spread Table Id
display.reference_spread_table_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Reference Spread Table Id: No Value"
  end

  return "Reference Spread Table Id: "..value
end

-- Dissect: Reference Spread Table Id
dissect.reference_spread_table_id = function(buffer, offset, packet, parent)
  local length = size_of.reference_spread_table_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_spread_table_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reference_spread_table_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Policy
size_of.trading_policy = 1

-- Display: Trading Policy
display.trading_policy = function(value)
  if value == 1 then
    return "Trading Policy: Price Explicit Time (1)"
  end
  if value == 2 then
    return "Trading Policy: Price Pro Rata (2)"
  end
  if value == 255 then
    return "Trading Policy: No Value"
  end

  return "Trading Policy: Unknown("..value..")"
end

-- Dissect: Trading Policy
dissect.trading_policy = function(buffer, offset, packet, parent)
  local length = size_of.trading_policy
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_policy(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_policy, range, value, display)

  return offset + length, value
end

-- Size: Edsp Tick Size
size_of.edsp_tick_size = 8

-- Display: Edsp Tick Size
display.edsp_tick_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Edsp Tick Size: No Value"
  end

  return "Edsp Tick Size: "..value
end

-- Dissect: Edsp Tick Size
dissect.edsp_tick_size = function(buffer, offset, packet, parent)
  local length = size_of.edsp_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.edsp_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.edsp_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Settlement Tick Size
size_of.settlement_tick_size = 8

-- Display: Settlement Tick Size
display.settlement_tick_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Settlement Tick Size: No Value"
  end

  return "Settlement Tick Size: "..value
end

-- Dissect: Settlement Tick Size
dissect.settlement_tick_size = function(buffer, offset, packet, parent)
  local length = size_of.settlement_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.settlement_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Mother Stock Isin
size_of.mother_stock_isin = 12

-- Display: Mother Stock Isin
display.mother_stock_isin = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mother Stock Isin: No Value"
  end

  return "Mother Stock Isin: "..value
end

-- Dissect: Mother Stock Isin
dissect.mother_stock_isin = function(buffer, offset, packet, parent)
  local length = size_of.mother_stock_isin
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

  local display = display.mother_stock_isin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mother_stock_isin, range, value, display)

  return offset + length, value
end

-- Size: Underlying Subtype
size_of.underlying_subtype = 1

-- Display: Underlying Subtype
display.underlying_subtype = function(value)
  if value == 0 then
    return "Underlying Subtype: Basket (0)"
  end
  if value == 1 then
    return "Underlying Subtype: Dividend (1)"
  end
  if value == 2 then
    return "Underlying Subtype: Etf (2)"
  end
  if value == 3 then
    return "Underlying Subtype: Share (3)"
  end
  if value == 4 then
    return "Underlying Subtype: Dividend Index (4)"
  end
  if value == 5 then
    return "Underlying Subtype: Equity Index (5)"
  end
  if value == 6 then
    return "Underlying Subtype: Trf Index (6)"
  end
  if value == 7 then
    return "Underlying Subtype: Volatility Index (7)"
  end
  if value == 8 then
    return "Underlying Subtype: Future On Commodities (8)"
  end
  if value == 9 then
    return "Underlying Subtype: Fx Cross Rates (9)"
  end
  if value == 10 then
    return "Underlying Subtype: Fx Emerging Markets (10)"
  end
  if value == 11 then
    return "Underlying Subtype: Fx Majors (11)"
  end
  if value == 12 then
    return "Underlying Subtype: Agricultural (12)"
  end
  if value == 13 then
    return "Underlying Subtype: Environmental (13)"
  end
  if value == 14 then
    return "Underlying Subtype: Freight (14)"
  end
  if value == 15 then
    return "Underlying Subtype: Fertilizer (15)"
  end
  if value == 16 then
    return "Underlying Subtype: Industrialproducts (16)"
  end
  if value == 17 then
    return "Underlying Subtype: Inflation (17)"
  end
  if value == 18 then
    return "Underlying Subtype: Multi Commodity Exotic (18)"
  end
  if value == 19 then
    return "Underlying Subtype: Metals (19)"
  end
  if value == 20 then
    return "Underlying Subtype: Energy (20)"
  end
  if value == 21 then
    return "Underlying Subtype: Officialeconomicstatistics (21)"
  end
  if value == 22 then
    return "Underlying Subtype: Other C 10 (22)"
  end
  if value == 23 then
    return "Underlying Subtype: Other (23)"
  end
  if value == 24 then
    return "Underlying Subtype: Paper (24)"
  end
  if value == 25 then
    return "Underlying Subtype: Polypropylene (25)"
  end
  if value == 255 then
    return "Underlying Subtype: No Value"
  end

  return "Underlying Subtype: Unknown("..value..")"
end

-- Dissect: Underlying Subtype
dissect.underlying_subtype = function(buffer, offset, packet, parent)
  local length = size_of.underlying_subtype
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_subtype(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_subtype, range, value, display)

  return offset + length, value
end

-- Size: Inst Unit Exp
size_of.inst_unit_exp = 1

-- Display: Inst Unit Exp
display.inst_unit_exp = function(value)
  if value == 1 then
    return "Inst Unit Exp: Units (1)"
  end
  if value == 2 then
    return "Inst Unit Exp: Percentageof Nominal Excluding Accrued Interest Clean (2)"
  end
  if value == 3 then
    return "Inst Unit Exp: Basis Points (3)"
  end
  if value == 5 then
    return "Inst Unit Exp: Percentageof Nominal Including Accrued Interest Dirty (5)"
  end
  if value == 8 then
    return "Inst Unit Exp: Kilograms (8)"
  end
  if value == 9 then
    return "Inst Unit Exp: Ounces (9)"
  end
  if value == 255 then
    return "Inst Unit Exp: No Value"
  end

  return "Inst Unit Exp: Unknown("..value..")"
end

-- Dissect: Inst Unit Exp
dissect.inst_unit_exp = function(buffer, offset, packet, parent)
  local length = size_of.inst_unit_exp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.inst_unit_exp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.inst_unit_exp, range, value, display)

  return offset + length, value
end

-- Size: Contract Trading Type
size_of.contract_trading_type = 1

-- Display: Contract Trading Type
display.contract_trading_type = function(value)
  if value == 1 then
    return "Contract Trading Type: Tradedasanoutright (1)"
  end
  if value == 2 then
    return "Contract Trading Type: Nottradedbutlistedincontractdata Tradersmaysubscribeto (2)"
  end
  if value == 3 then
    return "Contract Trading Type: Tradedasasimpleintercommodityspread (3)"
  end
  if value == 4 then
    return "Contract Trading Type: Tradedasanintercommodityspread (4)"
  end

  return "Contract Trading Type: Unknown("..value..")"
end

-- Dissect: Contract Trading Type
dissect.contract_trading_type = function(buffer, offset, packet, parent)
  local length = size_of.contract_trading_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_trading_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_trading_type, range, value, display)

  return offset + length, value
end

-- Size: Mm Protections
size_of.mm_protections = 1

-- Display: Mm Protections
display.mm_protections = function(buffer, packet, parent)
  local display = ""

  -- Is Volume flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Volume|"
  end
  -- Is Delta flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Delta|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Mm Protections
dissect.mm_protections_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_6, buffer(offset, 1))

  -- Volume: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.volume, buffer(offset, 1))

  -- Delta: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.delta, buffer(offset, 1))
end

-- Dissect: Mm Protections
dissect.mm_protections = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.mm_protections(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mm_protections, range, display)

  if show.mm_protections then
    dissect.mm_protections_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Strike Price Decimals Ratio
size_of.strike_price_decimals_ratio = 1

-- Display: Strike Price Decimals Ratio
display.strike_price_decimals_ratio = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals Ratio: No Value"
  end

  return "Strike Price Decimals Ratio: "..value
end

-- Dissect: Strike Price Decimals Ratio
dissect.strike_price_decimals_ratio = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_decimals_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price_decimals_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_price_decimals_ratio, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency
size_of.trading_currency = 3

-- Display: Trading Currency
display.trading_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency: No Value"
  end

  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
dissect.trading_currency = function(buffer, offset, packet, parent)
  local length = size_of.trading_currency
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

  local display = display.trading_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Size: Order Type Rules
size_of.order_type_rules = 2

-- Display: Order Type Rules
display.order_type_rules = function(buffer, packet, parent)
  local display = ""

  -- Is Trade At Settlement flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Trade At Settlement|"
  end
  -- Is Market On Open Moo flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Market On Open Moo|"
  end
  -- Is Stop Limit flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Stop Limit|"
  end
  -- Is Stop Stop Loss flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Stop Stop Loss|"
  end
  -- Is Limit flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Limit|"
  end
  -- Is Market flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Market|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Type Rules
dissect.order_type_rules_bits = function(buffer, offset, packet, parent)

  -- Reserved 10: 10 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_10, buffer(offset, 2))

  -- Trade At Settlement: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_at_settlement, buffer(offset, 2))

  -- Market On Open Moo: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_on_open_moo, buffer(offset, 2))

  -- Stop Limit: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.stop_limit, buffer(offset, 2))

  -- Stop Stop Loss: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.stop_stop_loss, buffer(offset, 2))

  -- Limit: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.limit, buffer(offset, 2))

  -- Market: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market, buffer(offset, 2))
end

-- Dissect: Order Type Rules
dissect.order_type_rules = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.order_type_rules(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_type_rules, range, display)

  if show.order_type_rules then
    dissect.order_type_rules_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Underlying Expiry
size_of.underlying_expiry = 4

-- Display: Underlying Expiry
display.underlying_expiry = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Expiry: No Value"
  end

  return "Underlying Expiry: "..value
end

-- Dissect: Underlying Expiry
dissect.underlying_expiry = function(buffer, offset, packet, parent)
  local length = size_of.underlying_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_expiry, range, value, display)

  return offset + length, value
end

-- Size: Underlying Mic
size_of.underlying_mic = 4

-- Display: Underlying Mic
display.underlying_mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Mic: No Value"
  end

  return "Underlying Mic: "..value
end

-- Dissect: Underlying Mic
dissect.underlying_mic = function(buffer, offset, packet, parent)
  local length = size_of.underlying_mic
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

  local display = display.underlying_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_mic, range, value, display)

  return offset + length, value
end

-- Size: Product Code
size_of.product_code = 4

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.product_code, range, value, display)

  return offset + length, value
end

-- Size: Country Of Exchange
size_of.country_of_exchange = 3

-- Display: Country Of Exchange
display.country_of_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Exchange: No Value"
  end

  return "Country Of Exchange: "..value
end

-- Dissect: Country Of Exchange
dissect.country_of_exchange = function(buffer, offset, packet, parent)
  local length = size_of.country_of_exchange
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

  local display = display.country_of_exchange(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.country_of_exchange, range, value, display)

  return offset + length, value
end

-- Size: Main Depositary
size_of.main_depositary = 5

-- Display: Main Depositary
display.main_depositary = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Main Depositary: No Value"
  end

  return "Main Depositary: "..value
end

-- Dissect: Main Depositary
dissect.main_depositary = function(buffer, offset, packet, parent)
  local length = size_of.main_depositary
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

  local display = display.main_depositary(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Size: Ratio Decimals
size_of.ratio_decimals = 1

-- Display: Ratio Decimals
display.ratio_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Ratio Decimals: No Value"
  end

  return "Ratio Decimals: "..value
end

-- Dissect: Ratio Decimals
dissect.ratio_decimals = function(buffer, offset, packet, parent)
  local length = size_of.ratio_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ratio_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.ratio_decimals, range, value, display)

  return offset + length, value
end

-- Size: Amount Decimals
size_of.amount_decimals = 1

-- Display: Amount Decimals
display.amount_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Amount Decimals: No Value"
  end

  return "Amount Decimals: "..value
end

-- Dissect: Amount Decimals
dissect.amount_decimals = function(buffer, offset, packet, parent)
  local length = size_of.amount_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.amount_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.amount_decimals, range, value, display)

  return offset + length, value
end

-- Size: Quantity Decimals
size_of.quantity_decimals = 1

-- Display: Quantity Decimals
display.quantity_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Quantity Decimals: No Value"
  end

  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
dissect.quantity_decimals = function(buffer, offset, packet, parent)
  local length = size_of.quantity_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quantity_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Decimals
size_of.price_decimals = 1

-- Display: Price Decimals
display.price_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Decimals: No Value"
  end

  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
dissect.price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Underlying Type
size_of.underlying_type = 1

-- Display: Underlying Type
display.underlying_type = function(value)
  if value == "C" then
    return "Underlying Type: Commodity (C)"
  end
  if value == "F" then
    return "Underlying Type: Future (F)"
  end
  if value == "I" then
    return "Underlying Type: Index (I)"
  end
  if value == "S" then
    return "Underlying Type: Stock (S)"
  end
  if value == "X" then
    return "Underlying Type: Exchange Rate (X)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
dissect.underlying_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.underlying_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Type
size_of.contract_type = 1

-- Display: Contract Type
display.contract_type = function(value)
  if value == "F" then
    return "Contract Type: Future (F)"
  end
  if value == "O" then
    return "Contract Type: Option (O)"
  end
  if value == "U" then
    return "Contract Type: Underlying (U)"
  end
  if value == 0 then
    return "Contract Type: No Value"
  end

  return "Contract Type: Unknown("..value..")"
end

-- Dissect: Contract Type
dissect.contract_type = function(buffer, offset, packet, parent)
  local length = size_of.contract_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.contract_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Name
size_of.contract_name = 60

-- Display: Contract Name
display.contract_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contract Name: No Value"
  end

  return "Contract Name: "..value
end

-- Dissect: Contract Name
dissect.contract_name = function(buffer, offset, packet, parent)
  local length = size_of.contract_name
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

  local display = display.contract_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_name, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
  if value == "A" then
    return "Exchange Code: Amsterdam Equity Derivatives (A)"
  end
  if value == "B" then
    return "Exchange Code: Brussels Equity Derivatives (B)"
  end
  if value == "C" then
    return "Exchange Code: Paris Equity Underlyings (C)"
  end
  if value == "D" then
    return "Exchange Code: Brussels Cash Underlyings (D)"
  end
  if value == "F" then
    return "Exchange Code: Brussels Index Derivatives (F)"
  end
  if value == "G" then
    return "Exchange Code: Amsterdam Cash Underlyings (G)"
  end
  if value == "H" then
    return "Exchange Code: Lisbon Cash Underlyings (H)"
  end
  if value == "J" then
    return "Exchange Code: Paris Index Derivatives (J)"
  end
  if value == "K" then
    return "Exchange Code: Amsterdam Index Derivatives (K)"
  end
  if value == "M" then
    return "Exchange Code: Lisbon Index Derivatives (M)"
  end
  if value == "P" then
    return "Exchange Code: Paris Equity Derivatives (P)"
  end
  if value == "R" then
    return "Exchange Code: Amsterdam Commodities Derivatives (R)"
  end
  if value == "S" then
    return "Exchange Code: Lisbon Equity Derivatives (S)"
  end
  if value == "Y" then
    return "Exchange Code: Paris Commodities Derivatives (Y)"
  end
  if value == "Z" then
    return "Exchange Code: Amsterdam Currency Derivatives (Z)"
  end
  if value == "N" then
    return "Exchange Code: Oslo Index Derivatives (N)"
  end
  if value == "O" then
    return "Exchange Code: Oslo Equity Derivatives (O)"
  end
  if value == "L" then
    return "Exchange Code: Oslo Cash Underlying (L)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = size_of.exchange_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: Contract Event Date
size_of.contract_event_date = 2

-- Display: Contract Event Date
display.contract_event_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Contract Event Date: No Value"
  end

  return "Contract Event Date: "..value
end

-- Dissect: Contract Event Date
dissect.contract_event_date = function(buffer, offset, packet, parent)
  local length = size_of.contract_event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_event_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_event_date, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
size_of.partition_id = 2

-- Display: Partition Id
display.partition_id = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
dissect.partition_id = function(buffer, offset, packet, parent)
  local length = size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.partition_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Optiq Segment
size_of.optiq_segment = 1

-- Display: Optiq Segment
display.optiq_segment = function(value)
  if value == 1 then
    return "Optiq Segment: Equities (1)"
  end
  if value == 2 then
    return "Optiq Segment: Funds (2)"
  end
  if value == 3 then
    return "Optiq Segment: Fixed Income (3)"
  end
  if value == 4 then
    return "Optiq Segment: Warrantsand Certificates (4)"
  end
  if value == 5 then
    return "Optiq Segment: Boursede Luxembourg (5)"
  end
  if value == 6 then
    return "Optiq Segment: Options (6)"
  end
  if value == 7 then
    return "Optiq Segment: Futures (7)"
  end
  if value == 8 then
    return "Optiq Segment: Commodities (8)"
  end
  if value == 9 then
    return "Optiq Segment: Indices (9)"
  end
  if value == 10 then
    return "Optiq Segment: Trade Reportingand Publication (10)"
  end
  if value == 14 then
    return "Optiq Segment: Block (14)"
  end
  if value == 11 then
    return "Optiq Segment: Index Derivatives (11)"
  end
  if value == 12 then
    return "Optiq Segment: Equity Derivatives (12)"
  end
  if value == 13 then
    return "Optiq Segment: Financial Derivatives (13)"
  end
  if value == 15 then
    return "Optiq Segment: Forex (15)"
  end

  return "Optiq Segment: Unknown("..value..")"
end

-- Dissect: Optiq Segment
dissect.optiq_segment = function(buffer, offset, packet, parent)
  local length = size_of.optiq_segment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.optiq_segment(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.optiq_segment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Contract Standing Data Message
size_of.contract_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.optiq_segment

  index = index + size_of.partition_id

  index = index + size_of.contract_event_date

  index = index + size_of.exchange_code

  index = index + size_of.exer_style

  index = index + size_of.contract_name

  index = index + size_of.contract_type

  index = index + size_of.underlying_type

  index = index + size_of.price_decimals

  index = index + size_of.quantity_decimals

  index = index + size_of.amount_decimals

  index = index + size_of.ratio_decimals

  index = index + size_of.main_depositary

  index = index + size_of.mic

  index = index + size_of.country_of_exchange

  index = index + size_of.product_code

  index = index + size_of.underlying_mic

  index = index + size_of.underlying_isin_code

  index = index + size_of.underlying_expiry

  index = index + size_of.order_type_rules

  index = index + size_of.settlement_method

  index = index + size_of.trading_currency

  index = index + size_of.strike_price_decimals_ratio

  index = index + size_of.mm_protections

  index = index + size_of.contract_trading_type

  index = index + size_of.inst_unit_exp

  index = index + size_of.underlying_subtype

  index = index + size_of.mother_stock_isin

  index = index + size_of.settlement_tick_size

  index = index + size_of.edsp_tick_size

  index = index + size_of.underlying_symbol_index

  index = index + size_of.trading_policy

  index = index + size_of.reference_spread_table_id

  index = index + size_of.derivatives_market_model

  index = index + size_of.trading_unit

  index = index + size_of.reference_price_origin_in_opening_call

  index = index + size_of.reference_price_origin_in_continuous

  index = index + size_of.reference_price_origin_in_trading_interruption

  index = index + size_of.collar_expansion_factor

  index = index + size_of.mifidii_liquid_flag

  index = index + size_of.pricing_algorithm

  index = index + size_of.contract_em_m_properties_groups(buffer, offset + index)

  return index
end

-- Display: Contract Standing Data Message
display.contract_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contract Standing Data Message
dissect.contract_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, optiq_segment = dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Contract Event Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, contract_event_date = dissect.contract_event_date(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 18 values
  index, exchange_code = dissect.exchange_code(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exer_style = dissect.exer_style(buffer, index, packet, parent)

  -- Contract Name: 60 Byte Ascii String
  index, contract_name = dissect.contract_name(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 4 values
  index, contract_type = dissect.contract_type(buffer, index, packet, parent)

  -- Underlying Type: 1 Byte Ascii String Enum with 5 values
  index, underlying_type = dissect.underlying_type(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_decimals = dissect.price_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_decimals = dissect.ratio_decimals(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = dissect.main_depositary(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String Nullable
  index, country_of_exchange = dissect.country_of_exchange(buffer, index, packet, parent)

  -- Product Code: 4 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Expiry: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_expiry = dissect.underlying_expiry(buffer, index, packet, parent)

  -- Order Type Rules: Struct of 7 fields
  index, order_type_rules = dissect.order_type_rules(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = dissect.settlement_method(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String Nullable
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Strike Price Decimals Ratio: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals_ratio = dissect.strike_price_decimals_ratio(buffer, index, packet, parent)

  -- Mm Protections: Struct of 3 fields
  index, mm_protections = dissect.mm_protections(buffer, index, packet, parent)

  -- Contract Trading Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, contract_trading_type = dissect.contract_trading_type(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, inst_unit_exp = dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Underlying Subtype: 1 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, underlying_subtype = dissect.underlying_subtype(buffer, index, packet, parent)

  -- Mother Stock Isin: 12 Byte Ascii String Nullable
  index, mother_stock_isin = dissect.mother_stock_isin(buffer, index, packet, parent)

  -- Settlement Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_tick_size = dissect.settlement_tick_size(buffer, index, packet, parent)

  -- Edsp Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, edsp_tick_size = dissect.edsp_tick_size(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Policy: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_policy = dissect.trading_policy(buffer, index, packet, parent)

  -- Reference Spread Table Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, reference_spread_table_id = dissect.reference_spread_table_id(buffer, index, packet, parent)

  -- Derivatives Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, derivatives_market_model = dissect.derivatives_market_model(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = dissect.trading_unit(buffer, index, packet, parent)

  -- Reference Price Origin In Opening Call: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_opening_call = dissect.reference_price_origin_in_opening_call(buffer, index, packet, parent)

  -- Reference Price Origin In Continuous: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_continuous = dissect.reference_price_origin_in_continuous(buffer, index, packet, parent)

  -- Reference Price Origin In Trading Interruption: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_trading_interruption = dissect.reference_price_origin_in_trading_interruption(buffer, index, packet, parent)

  -- Collar Expansion Factor: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_expansion_factor = dissect.collar_expansion_factor(buffer, index, packet, parent)

  -- Mifidii Liquid Flag: 1 Byte Unsigned Fixed Width Integer
  index, mifidii_liquid_flag = dissect.mifidii_liquid_flag(buffer, index, packet, parent)

  -- Pricing Algorithm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pricing_algorithm = dissect.pricing_algorithm(buffer, index, packet, parent)

  -- Contract Em M Properties Groups: Struct of 2 fields
  index, contract_em_m_properties_groups = dissect.contract_em_m_properties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Standing Data Message
dissect.contract_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_standing_data_message then
    local length = size_of.contract_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contract_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.contract_standing_data_message, range, display)
  end

  return dissect.contract_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Buy Sell
size_of.leg_buy_sell = 1

-- Display: Leg Buy Sell
display.leg_buy_sell = function(value)
  if value == "B" then
    return "Leg Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Leg Buy Sell: Sell (S)"
  end

  return "Leg Buy Sell: Unknown("..value..")"
end

-- Dissect: Leg Buy Sell
dissect.leg_buy_sell = function(buffer, offset, packet, parent)
  local length = size_of.leg_buy_sell
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.leg_buy_sell(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
size_of.leg_price = 8

-- Display: Leg Price
display.leg_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
dissect.leg_price = function(buffer, offset, packet, parent)
  local length = size_of.leg_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Standing Datarep 1 Group
size_of.strategy_standing_datarep_1_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol_index

  index = index + size_of.leg_price

  index = index + size_of.leg_ratio

  index = index + size_of.leg_buy_sell

  return index
end

-- Display: Strategy Standing Datarep 1 Group
display.strategy_standing_datarep_1_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Group
dissect.strategy_standing_datarep_1_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Buy Sell: 1 Byte Ascii String Enum with 2 values
  index, leg_buy_sell = dissect.leg_buy_sell(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Datarep 1 Group
dissect.strategy_standing_datarep_1_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_standing_datarep_1_group then
    local length = size_of.strategy_standing_datarep_1_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_standing_datarep_1_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_datarep_1_group, range, display)
  end

  return dissect.strategy_standing_datarep_1_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Standing Datarep 1 Groups
size_of.strategy_standing_datarep_1_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_standing_datarep_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_standing_datarep_1_group_count * 17

  return index
end

-- Display: Strategy Standing Datarep 1 Groups
display.strategy_standing_datarep_1_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Groups
dissect.strategy_standing_datarep_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Strategy Standing Datarep 1 Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = dissect.strategy_standing_datarep_1_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Standing Datarep 1 Groups
dissect.strategy_standing_datarep_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_datarep_1_groups then
    local length = size_of.strategy_standing_datarep_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_standing_datarep_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_datarep_1_groups, range, display)
  end

  return dissect.strategy_standing_datarep_1_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Standing Data Message
size_of.strategy_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.symbol_index

  index = index + size_of.derivatives_instrument_trading_code

  index = index + size_of.exchange_code

  index = index + size_of.maturity_date

  index = index + size_of.strategy_code

  index = index + size_of.contract_symbol_index

  index = index + size_of.cfi

  index = index + size_of.strategy_standing_datarep_1_groups(buffer, offset + index)

  return index
end

-- Display: Strategy Standing Data Message
display.strategy_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Standing Data Message
dissect.strategy_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String Nullable
  index, derivatives_instrument_trading_code = dissect.derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 18 values
  index, exchange_code = dissect.exchange_code(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String Nullable
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Strategy Standing Datarep 1 Groups: Struct of 2 fields
  index, strategy_standing_datarep_1_groups = dissect.strategy_standing_datarep_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Data Message
dissect.strategy_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_data_message then
    local length = size_of.strategy_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strategy_standing_data_message, range, display)
  end

  return dissect.strategy_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Liquidation Time
size_of.liquidation_time = 8

-- Display: Liquidation Time
display.liquidation_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Liquidation Time: No Value"
  end

  return "Liquidation Time: "..value
end

-- Dissect: Liquidation Time
dissect.liquidation_time = function(buffer, offset, packet, parent)
  local length = size_of.liquidation_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.liquidation_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquidation_time, range, value, display)

  return offset + length, value
end

-- Size: Liquidation Level
size_of.liquidation_level = 8

-- Display: Liquidation Level
display.liquidation_level = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Liquidation Level: No Value"
  end

  return "Liquidation Level: "..value
end

-- Dissect: Liquidation Level
dissect.liquidation_level = function(buffer, offset, packet, parent)
  local length = size_of.liquidation_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.liquidation_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquidation_level, range, value, display)

  return offset + length, value
end

-- Size: Low Time
size_of.low_time = 8

-- Display: Low Time
display.low_time = function(value)
  return "Low Time: "..value
end

-- Dissect: Low Time
dissect.low_time = function(buffer, offset, packet, parent)
  local length = size_of.low_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.low_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.low_time, range, value, display)

  return offset + length, value
end

-- Size: Low Level
size_of.low_level = 8

-- Display: Low Level
display.low_level = function(value)
  return "Low Level: "..value
end

-- Dissect: Low Level
dissect.low_level = function(buffer, offset, packet, parent)
  local length = size_of.low_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.low_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.low_level, range, value, display)

  return offset + length, value
end

-- Size: High Time
size_of.high_time = 8

-- Display: High Time
display.high_time = function(value)
  return "High Time: "..value
end

-- Dissect: High Time
dissect.high_time = function(buffer, offset, packet, parent)
  local length = size_of.high_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.high_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.high_time, range, value, display)

  return offset + length, value
end

-- Size: High Level
size_of.high_level = 8

-- Display: High Level
display.high_level = function(value)
  return "High Level: "..value
end

-- Dissect: High Level
dissect.high_level = function(buffer, offset, packet, parent)
  local length = size_of.high_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.high_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.high_level, range, value, display)

  return offset + length, value
end

-- Size: Prct Varfrom Prev Close
size_of.prct_varfrom_prev_close = 8

-- Display: Prct Varfrom Prev Close
display.prct_varfrom_prev_close = function(value)
  return "Prct Varfrom Prev Close: "..value
end

-- Dissect: Prct Varfrom Prev Close
dissect.prct_varfrom_prev_close = function(buffer, offset, packet, parent)
  local length = size_of.prct_varfrom_prev_close
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.prct_varfrom_prev_close(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.prct_varfrom_prev_close, range, value, display)

  return offset + length, value
end

-- Size: Closing Reference Time
size_of.closing_reference_time = 8

-- Display: Closing Reference Time
display.closing_reference_time = function(value)
  return "Closing Reference Time: "..value
end

-- Dissect: Closing Reference Time
dissect.closing_reference_time = function(buffer, offset, packet, parent)
  local length = size_of.closing_reference_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.closing_reference_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.closing_reference_time, range, value, display)

  return offset + length, value
end

-- Size: Closing Reference Level
size_of.closing_reference_level = 8

-- Display: Closing Reference Level
display.closing_reference_level = function(value)
  return "Closing Reference Level: "..value
end

-- Dissect: Closing Reference Level
dissect.closing_reference_level = function(buffer, offset, packet, parent)
  local length = size_of.closing_reference_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.closing_reference_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.closing_reference_level, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Time
size_of.confirmed_reference_time = 8

-- Display: Confirmed Reference Time
display.confirmed_reference_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Confirmed Reference Time: No Value"
  end

  return "Confirmed Reference Time: "..value
end

-- Dissect: Confirmed Reference Time
dissect.confirmed_reference_time = function(buffer, offset, packet, parent)
  local length = size_of.confirmed_reference_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.confirmed_reference_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.confirmed_reference_time, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Level
size_of.confirmed_reference_level = 8

-- Display: Confirmed Reference Level
display.confirmed_reference_level = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Confirmed Reference Level: No Value"
  end

  return "Confirmed Reference Level: "..value
end

-- Dissect: Confirmed Reference Level
dissect.confirmed_reference_level = function(buffer, offset, packet, parent)
  local length = size_of.confirmed_reference_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.confirmed_reference_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.confirmed_reference_level, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
size_of.opening_time = 8

-- Display: Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
dissect.opening_time = function(buffer, offset, packet, parent)
  local length = size_of.opening_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Level
size_of.opening_level = 8

-- Display: Opening Level
display.opening_level = function(value)
  return "Opening Level: "..value
end

-- Dissect: Opening Level
dissect.opening_level = function(buffer, offset, packet, parent)
  local length = size_of.opening_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.opening_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.opening_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Index Summary Message
size_of.index_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.symbol_index

  index = index + size_of.opening_level

  index = index + size_of.opening_time

  index = index + size_of.confirmed_reference_level

  index = index + size_of.confirmed_reference_time

  index = index + size_of.closing_reference_level

  index = index + size_of.closing_reference_time

  index = index + size_of.prct_varfrom_prev_close

  index = index + size_of.high_level

  index = index + size_of.high_time

  index = index + size_of.low_level

  index = index + size_of.low_time

  index = index + size_of.liquidation_level

  index = index + size_of.liquidation_time

  return index
end

-- Display: Index Summary Message
display.index_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Index Summary Message
dissect.index_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Opening Level: 8 Byte Signed Fixed Width Integer
  index, opening_level = dissect.opening_level(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Unsigned Fixed Width Integer
  index, opening_time = dissect.opening_time(buffer, index, packet, parent)

  -- Confirmed Reference Level: 8 Byte Signed Fixed Width Integer Nullable
  index, confirmed_reference_level = dissect.confirmed_reference_level(buffer, index, packet, parent)

  -- Confirmed Reference Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, confirmed_reference_time = dissect.confirmed_reference_time(buffer, index, packet, parent)

  -- Closing Reference Level: 8 Byte Signed Fixed Width Integer
  index, closing_reference_level = dissect.closing_reference_level(buffer, index, packet, parent)

  -- Closing Reference Time: 8 Byte Unsigned Fixed Width Integer
  index, closing_reference_time = dissect.closing_reference_time(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = dissect.prct_varfrom_prev_close(buffer, index, packet, parent)

  -- High Level: 8 Byte Signed Fixed Width Integer
  index, high_level = dissect.high_level(buffer, index, packet, parent)

  -- High Time: 8 Byte Unsigned Fixed Width Integer
  index, high_time = dissect.high_time(buffer, index, packet, parent)

  -- Low Level: 8 Byte Signed Fixed Width Integer
  index, low_level = dissect.low_level(buffer, index, packet, parent)

  -- Low Time: 8 Byte Unsigned Fixed Width Integer
  index, low_time = dissect.low_time(buffer, index, packet, parent)

  -- Liquidation Level: 8 Byte Signed Fixed Width Integer Nullable
  index, liquidation_level = dissect.liquidation_level(buffer, index, packet, parent)

  -- Liquidation Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, liquidation_time = dissect.liquidation_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary Message
dissect.index_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.index_summary_message then
    local length = size_of.index_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.index_summary_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_summary_message, range, display)
  end

  return dissect.index_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Stats Update Value
size_of.stats_update_value = 8

-- Display: Stats Update Value
display.stats_update_value = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stats Update Value: No Value"
  end

  return "Stats Update Value: "..value
end

-- Dissect: Stats Update Value
dissect.stats_update_value = function(buffer, offset, packet, parent)
  local length = size_of.stats_update_value
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.stats_update_value(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.stats_update_value, range, value, display)

  return offset + length, value
end

-- Size: Stats Update Type
size_of.stats_update_type = 1

-- Display: Stats Update Type
display.stats_update_type = function(value)
  if value == 5 then
    return "Stats Update Type: Daily High (5)"
  end
  if value == 6 then
    return "Stats Update Type: Daily Low (6)"
  end
  if value == 7 then
    return "Stats Update Type: Yearly High (7)"
  end
  if value == 8 then
    return "Stats Update Type: Yearly Low (8)"
  end
  if value == 9 then
    return "Stats Update Type: Lifetime High (9)"
  end
  if value == 10 then
    return "Stats Update Type: Lifetime Low (10)"
  end
  if value == 14 then
    return "Stats Update Type: Variation Last Price (14)"
  end
  if value == 15 then
    return "Stats Update Type: Open Price (15)"
  end
  if value == 16 then
    return "Stats Update Type: Trade Count (16)"
  end
  if value == 17 then
    return "Stats Update Type: Last Traded Price (17)"
  end
  if value == 18 then
    return "Stats Update Type: Percent Variation Previous Close (18)"
  end
  if value == 19 then
    return "Stats Update Type: Off Book Cumul Qty (19)"
  end
  if value == 21 then
    return "Stats Update Type: On Book Auction Cumul Qty (21)"
  end
  if value == 22 then
    return "Stats Update Type: On Book Continuous Cumul Qty (22)"
  end
  if value == 23 then
    return "Stats Update Type: Onand Off Book Cumul Qty (23)"
  end

  return "Stats Update Type: Unknown("..value..")"
end

-- Dissect: Stats Update Type
dissect.stats_update_type = function(buffer, offset, packet, parent)
  local length = size_of.stats_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stats_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.stats_update_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Stats Group
size_of.new_stats_group = function(buffer, offset)
  local index = 0

  index = index + size_of.stats_update_type

  index = index + size_of.stats_update_value

  return index
end

-- Display: New Stats Group
display.new_stats_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Stats Group
dissect.new_stats_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stats Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, stats_update_type = dissect.stats_update_type(buffer, index, packet, parent)

  -- Stats Update Value: 8 Byte Signed Fixed Width Integer Nullable
  index, stats_update_value = dissect.stats_update_value(buffer, index, packet, parent)

  return index
end

-- Dissect: New Stats Group
dissect.new_stats_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_stats_group then
    local length = size_of.new_stats_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_stats_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.new_stats_group, range, display)
  end

  return dissect.new_stats_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Stats Groups
size_of.new_stats_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local new_stats_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + new_stats_group_count * 9

  return index
end

-- Display: New Stats Groups
display.new_stats_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Stats Groups
dissect.new_stats_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- New Stats Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.new_stats_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Stats Groups
dissect.new_stats_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_stats_groups then
    local length = size_of.new_stats_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_stats_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.new_stats_groups, range, display)
  end

  return dissect.new_stats_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Statistics Message
size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.new_stats_groups(buffer, offset + index)

  return index
end

-- Display: Statistics Message
display.statistics_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Statistics Message
dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- New Stats Groups: Struct of 2 fields
  index, new_stats_groups = dissect.new_stats_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
dissect.statistics_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.statistics_message then
    local length = size_of.statistics_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.statistics_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.statistics_message, range, display)
  end

  return dissect.statistics_message_fields(buffer, offset, packet, parent)
end

-- Size: Index Price Code
size_of.index_price_code = 1

-- Display: Index Price Code
display.index_price_code = function(value)
  if value == 0 then
    return "Index Price Code: Only Index (0)"
  end
  if value == 1 then
    return "Index Price Code: Indexand Session High (1)"
  end
  if value == 2 then
    return "Index Price Code: Indexand Session Low (2)"
  end
  if value == 3 then
    return "Index Price Code: Indexand Session Highand Lowtypicallyfirstprice (3)"
  end
  if value == 4 then
    return "Index Price Code: Only Session High (4)"
  end
  if value == 5 then
    return "Index Price Code: Only Session Low (5)"
  end
  if value == 6 then
    return "Index Price Code: Previous Day Close (6)"
  end

  return "Index Price Code: Unknown("..value..")"
end

-- Dissect: Index Price Code
dissect.index_price_code = function(buffer, offset, packet, parent)
  local length = size_of.index_price_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.index_price_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_price_code, range, value, display)

  return offset + length, value
end

-- Size: Index Level Type
size_of.index_level_type = 1

-- Display: Index Level Type
display.index_level_type = function(value)
  if value == 0 then
    return "Index Level Type: Indicative Index (0)"
  end
  if value == 1 then
    return "Index Level Type: Official Opening Index (1)"
  end
  if value == 2 then
    return "Index Level Type: Real Time Index (2)"
  end
  if value == 3 then
    return "Index Level Type: Automatic Indicative Index (3)"
  end
  if value == 4 then
    return "Index Level Type: Preliminary Reference Index (4)"
  end
  if value == 5 then
    return "Index Level Type: Closing Reference Index (5)"
  end
  if value == 6 then
    return "Index Level Type: Confirmed Reference Index (6)"
  end
  if value == 7 then
    return "Index Level Type: Options Liquidation Index (7)"
  end

  return "Index Level Type: Unknown("..value..")"
end

-- Dissect: Index Level Type
dissect.index_level_type = function(buffer, offset, packet, parent)
  local length = size_of.index_level_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.index_level_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_level_type, range, value, display)

  return offset + length, value
end

-- Size: Num Traded Instruments
size_of.num_traded_instruments = 2

-- Display: Num Traded Instruments
display.num_traded_instruments = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Num Traded Instruments: No Value"
  end

  return "Num Traded Instruments: "..value
end

-- Dissect: Num Traded Instruments
dissect.num_traded_instruments = function(buffer, offset, packet, parent)
  local length = size_of.num_traded_instruments
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_traded_instruments(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.num_traded_instruments, range, value, display)

  return offset + length, value
end

-- Size: Pctg Of Capitalization
size_of.pctg_of_capitalization = 8

-- Display: Pctg Of Capitalization
display.pctg_of_capitalization = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Pctg Of Capitalization: No Value"
  end

  return "Pctg Of Capitalization: "..value
end

-- Dissect: Pctg Of Capitalization
dissect.pctg_of_capitalization = function(buffer, offset, packet, parent)
  local length = size_of.pctg_of_capitalization
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.pctg_of_capitalization(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.pctg_of_capitalization, range, value, display)

  return offset + length, value
end

-- Size: Index Level
size_of.index_level = 8

-- Display: Index Level
display.index_level = function(value)
  return "Index Level: "..value
end

-- Dissect: Index Level
dissect.index_level = function(buffer, offset, packet, parent)
  local length = size_of.index_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.index_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.index_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Real Time Index Message
size_of.real_time_index_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.symbol_index

  index = index + size_of.index_level

  index = index + size_of.pctg_of_capitalization

  index = index + size_of.prct_varfrom_prev_close

  index = index + size_of.num_traded_instruments

  index = index + size_of.index_level_type

  index = index + size_of.index_price_code

  return index
end

-- Display: Real Time Index Message
display.real_time_index_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Real Time Index Message
dissect.real_time_index_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Index Level: 8 Byte Signed Fixed Width Integer
  index, index_level = dissect.index_level(buffer, index, packet, parent)

  -- Pctg Of Capitalization: 8 Byte Unsigned Fixed Width Integer Nullable
  index, pctg_of_capitalization = dissect.pctg_of_capitalization(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = dissect.prct_varfrom_prev_close(buffer, index, packet, parent)

  -- Num Traded Instruments: 2 Byte Unsigned Fixed Width Integer Nullable
  index, num_traded_instruments = dissect.num_traded_instruments(buffer, index, packet, parent)

  -- Index Level Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, index_level_type = dissect.index_level_type(buffer, index, packet, parent)

  -- Index Price Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, index_price_code = dissect.index_price_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index Message
dissect.real_time_index_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.real_time_index_message then
    local length = size_of.real_time_index_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.real_time_index_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.real_time_index_message, range, display)
  end

  return dissect.real_time_index_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Model
size_of.market_model = 1

-- Display: Market Model
display.market_model = function(value)
  if value == 1 then
    return "Market Model: Order Driven (1)"
  end
  if value == 2 then
    return "Market Model: Quote Driven (2)"
  end
  if value == 3 then
    return "Market Model: Ipo (3)"
  end
  if value == 4 then
    return "Market Model: Primary Market (4)"
  end
  if value == 5 then
    return "Market Model: Rfq (5)"
  end
  if value == 6 then
    return "Market Model: Conditional Uncrossing (6)"
  end
  if value == 255 then
    return "Market Model: No Value"
  end

  return "Market Model: Unknown("..value..")"
end

-- Dissect: Market Model
dissect.market_model = function(buffer, offset, packet, parent)
  local length = size_of.market_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_model(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_model, range, value, display)

  return offset + length, value
end

-- Calculate size of: Em M Pattern Rep Group
size_of.em_m_pattern_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.emm

  index = index + size_of.pattern_id

  index = index + size_of.tick_size_index_id

  index = index + size_of.market_model

  index = index + size_of.lot_size

  index = index + size_of.inst_unit_exp

  return index
end

-- Display: Em M Pattern Rep Group
display.em_m_pattern_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Group
dissect.em_m_pattern_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = dissect.pattern_id(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = dissect.tick_size_index_id(buffer, index, packet, parent)

  -- Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, market_model = dissect.market_model(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, inst_unit_exp = dissect.inst_unit_exp(buffer, index, packet, parent)

  return index
end

-- Dissect: Em M Pattern Rep Group
dissect.em_m_pattern_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.em_m_pattern_rep_group then
    local length = size_of.em_m_pattern_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.em_m_pattern_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.em_m_pattern_rep_group, range, display)
  end

  return dissect.em_m_pattern_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Em M Pattern Rep Groups
size_of.em_m_pattern_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local em_m_pattern_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + em_m_pattern_rep_group_count * 15

  return index
end

-- Display: Em M Pattern Rep Groups
display.em_m_pattern_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Groups
dissect.em_m_pattern_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Em M Pattern Rep Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.em_m_pattern_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Em M Pattern Rep Groups
dissect.em_m_pattern_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.em_m_pattern_rep_groups then
    local length = size_of.em_m_pattern_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.em_m_pattern_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.em_m_pattern_rep_groups, range, display)
  end

  return dissect.em_m_pattern_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Threshold Lis Post Trade Eod
size_of.threshold_lis_post_trade_eod = 8

-- Display: Threshold Lis Post Trade Eod
display.threshold_lis_post_trade_eod = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade Eod: No Value"
  end

  return "Threshold Lis Post Trade Eod: "..value
end

-- Dissect: Threshold Lis Post Trade Eod
dissect.threshold_lis_post_trade_eod = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_eod
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_eod(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_eod, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 120mn
size_of.threshold_lis_post_trade_120mn = 8

-- Display: Threshold Lis Post Trade 120mn
display.threshold_lis_post_trade_120mn = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 120mn: No Value"
  end

  return "Threshold Lis Post Trade 120mn: "..value
end

-- Dissect: Threshold Lis Post Trade 120mn
dissect.threshold_lis_post_trade_120mn = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_120mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_120mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_120mn, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 60mn
size_of.threshold_lis_post_trade_60mn = 8

-- Display: Threshold Lis Post Trade 60mn
display.threshold_lis_post_trade_60mn = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 60mn: No Value"
  end

  return "Threshold Lis Post Trade 60mn: "..value
end

-- Dissect: Threshold Lis Post Trade 60mn
dissect.threshold_lis_post_trade_60mn = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_60mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_60mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.threshold_lis_post_trade_60mn, range, value, display)

  return offset + length, value
end

-- Size: Icb Code
size_of.icb_code = 8

-- Display: Icb Code
display.icb_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb Code: No Value"
  end

  return "Icb Code: "..value
end

-- Dissect: Icb Code
dissect.icb_code = function(buffer, offset, packet, parent)
  local length = size_of.icb_code
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

  local display = display.icb_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.icb_code, range, value, display)

  return offset + length, value
end

-- Size: Market Of Reference Mic
size_of.market_of_reference_mic = 4

-- Display: Market Of Reference Mic
display.market_of_reference_mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Of Reference Mic: No Value"
  end

  return "Market Of Reference Mic: "..value
end

-- Dissect: Market Of Reference Mic
dissect.market_of_reference_mic = function(buffer, offset, packet, parent)
  local length = size_of.market_of_reference_mic
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

  local display = display.market_of_reference_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_of_reference_mic, range, value, display)

  return offset + length, value
end

-- Size: Liquid Instrument Indicator
size_of.liquid_instrument_indicator = 1

-- Display: Liquid Instrument Indicator
display.liquid_instrument_indicator = function(value)
  -- Check if field has value
  if value == 255 then
    return "Liquid Instrument Indicator: No Value"
  end

  return "Liquid Instrument Indicator: "..value
end

-- Dissect: Liquid Instrument Indicator
dissect.liquid_instrument_indicator = function(buffer, offset, packet, parent)
  local length = size_of.liquid_instrument_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.liquid_instrument_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.liquid_instrument_indicator, range, value, display)

  return offset + length, value
end

-- Size: Issue Price Decimals
size_of.issue_price_decimals = 1

-- Display: Issue Price Decimals
display.issue_price_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Issue Price Decimals: No Value"
  end

  return "Issue Price Decimals: "..value
end

-- Dissect: Issue Price Decimals
dissect.issue_price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.issue_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.issue_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.issue_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Nominal Currency
size_of.nominal_currency = 3

-- Display: Nominal Currency
display.nominal_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nominal Currency: No Value"
  end

  return "Nominal Currency: "..value
end

-- Dissect: Nominal Currency
dissect.nominal_currency = function(buffer, offset, packet, parent)
  local length = size_of.nominal_currency
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

  local display = display.nominal_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.nominal_currency, range, value, display)

  return offset + length, value
end

-- Size: Issue Price
size_of.issue_price = 8

-- Display: Issue Price
display.issue_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Issue Price: No Value"
  end

  return "Issue Price: "..value
end

-- Dissect: Issue Price
dissect.issue_price = function(buffer, offset, packet, parent)
  local length = size_of.issue_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.issue_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.issue_price, range, value, display)

  return offset + length, value
end

-- Size: Repo Indicator
size_of.repo_indicator = 1

-- Display: Repo Indicator
display.repo_indicator = function(value)
  if value == 0 then
    return "Repo Indicator: Instrneithereligiblefor Sr Dor Loanand Lending Mkt (0)"
  end
  if value == 1 then
    return "Repo Indicator: Instreligiblefor Sr Dandfor Loanand Lending Market (1)"
  end
  if value == 2 then
    return "Repo Indicator: Instreligibleforthe Sr Dlongonly (2)"
  end
  if value == 3 then
    return "Repo Indicator: Instreligiblefor Loanand Lending Mktandfor Sr Dlongonly (3)"
  end
  if value == 4 then
    return "Repo Indicator: Easytoborrow Instreligiblefor Sr Dandfor Loanand Lending Mkt (4)"
  end
  if value == 5 then
    return "Repo Indicator: Instreligibleforthe Loanand Lending Market (5)"
  end
  if value == 8 then
    return "Repo Indicator: Nonsignificant (8)"
  end
  if value == 255 then
    return "Repo Indicator: No Value"
  end

  return "Repo Indicator: Unknown("..value..")"
end

-- Dissect: Repo Indicator
dissect.repo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.repo_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.repo_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market Admission
size_of.type_of_market_admission = 1

-- Display: Type Of Market Admission
display.type_of_market_admission = function(value)
  if value == "A" then
    return "Type Of Market Admission: Instrumentstradedontheprimarymarket (A)"
  end
  if value == "B" then
    return "Type Of Market Admission: Instrumentstradedonthesecondarymarket (B)"
  end
  if value == "C" then
    return "Type Of Market Admission: Instrumentstradedonthe New Market (C)"
  end
  if value == "D" then
    return "Type Of Market Admission: Nonregulatedmarketinstrumentstradedonthefreemarket (D)"
  end
  if value == "E" then
    return "Type Of Market Admission: Nonregulatedmarket Alternext (E)"
  end
  if value == "F" then
    return "Type Of Market Admission: Nonlisted (F)"
  end
  if value == "G" then
    return "Type Of Market Admission: Regulated Market Nonequities (G)"
  end
  if value == "H" then
    return "Type Of Market Admission: Regulated Market Equities Segment A (H)"
  end
  if value == "I" then
    return "Type Of Market Admission: Regulated Market Equities Segment B (I)"
  end
  if value == "J" then
    return "Type Of Market Admission: Regulated Market Equities Segment C (J)"
  end
  if value == "K" then
    return "Type Of Market Admission: Regulated Market Allsecurities Special Segment (K)"
  end
  if value == "L" then
    return "Type Of Market Admission: Regulated Market Equities Otherinstruments (L)"
  end
  if value == "S" then
    return "Type Of Market Admission: Opcvmsicom Inonlisted French Investment Funds (S)"
  end
  if value == "6" then
    return "Type Of Market Admission: Off Market (6)"
  end
  if value == "7" then
    return "Type Of Market Admission: Gold Currenciesand Indices (7)"
  end
  if value == "9" then
    return "Type Of Market Admission: Foreign (9)"
  end
  if value == 0 then
    return "Type Of Market Admission: No Value"
  end

  return "Type Of Market Admission: Unknown("..value..")"
end

-- Dissect: Type Of Market Admission
dissect.type_of_market_admission = function(buffer, offset, packet, parent)
  local length = size_of.type_of_market_admission
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.type_of_market_admission(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Size: Type Of Corporate Event
size_of.type_of_corporate_event = 2

-- Display: Type Of Corporate Event
display.type_of_corporate_event = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Type Of Corporate Event: No Value"
  end

  return "Type Of Corporate Event: "..value
end

-- Dissect: Type Of Corporate Event
dissect.type_of_corporate_event = function(buffer, offset, packet, parent)
  local length = size_of.type_of_corporate_event
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

  local display = display.type_of_corporate_event(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Size: Tax Code
size_of.tax_code = 1

-- Display: Tax Code
display.tax_code = function(value)
  if value == 0 then
    return "Tax Code: Noteligibleto Pea Thestockhasneverbeena Monorystock (0)"
  end
  if value == 3 then
    return "Tax Code: Eligibleto Pea (3)"
  end
  if value == 9 then
    return "Tax Code: Notprovided (9)"
  end
  if value == 255 then
    return "Tax Code: No Value"
  end

  return "Tax Code: Unknown("..value..")"
end

-- Dissect: Tax Code
dissect.tax_code = function(buffer, offset, packet, parent)
  local length = size_of.tax_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tax_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
size_of.strike_currency = 3

-- Display: Strike Currency
display.strike_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = size_of.strike_currency
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

  local display = display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Settlement Delay
size_of.settlement_delay = 2

-- Display: Settlement Delay
display.settlement_delay = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Delay: No Value"
  end

  return "Settlement Delay: "..value
end

-- Dissect: Settlement Delay
dissect.settlement_delay = function(buffer, offset, packet, parent)
  local length = size_of.settlement_delay
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

  local display = display.settlement_delay(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.settlement_delay, range, value, display)

  return offset + length, value
end

-- Size: Quantity Notation
size_of.quantity_notation = 3

-- Display: Quantity Notation
display.quantity_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quantity Notation: No Value"
  end

  return "Quantity Notation: "..value
end

-- Dissect: Quantity Notation
dissect.quantity_notation = function(buffer, offset, packet, parent)
  local length = size_of.quantity_notation
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

  local display = display.quantity_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity_notation, range, value, display)

  return offset + length, value
end

-- Size: Par Value
size_of.par_value = 8

-- Display: Par Value
display.par_value = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Par Value: No Value"
  end

  return "Par Value: "..value
end

-- Dissect: Par Value
dissect.par_value = function(buffer, offset, packet, parent)
  local length = size_of.par_value
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.par_value(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.par_value, range, value, display)

  return offset + length, value
end

-- Size: Number Instrument Circulating
size_of.number_instrument_circulating = 8

-- Display: Number Instrument Circulating
display.number_instrument_circulating = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Number Instrument Circulating: No Value"
  end

  return "Number Instrument Circulating: "..value
end

-- Dissect: Number Instrument Circulating
dissect.number_instrument_circulating = function(buffer, offset, packet, parent)
  local length = size_of.number_instrument_circulating
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.number_instrument_circulating(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.number_instrument_circulating, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency Indicator
size_of.strike_currency_indicator = 1

-- Display: Strike Currency Indicator
display.strike_currency_indicator = function(value)
  if value == 0 then
    return "Strike Currency Indicator: Changeratenotappliedtothestrikeprice (0)"
  end
  if value == 1 then
    return "Strike Currency Indicator: Changerateappliedtothestrikeprice (1)"
  end
  if value == 255 then
    return "Strike Currency Indicator: No Value"
  end

  return "Strike Currency Indicator: Unknown("..value..")"
end

-- Dissect: Strike Currency Indicator
dissect.strike_currency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.strike_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency Indicator
size_of.trading_currency_indicator = 1

-- Display: Trading Currency Indicator
display.trading_currency_indicator = function(value)
  if value == 0 then
    return "Trading Currency Indicator: Changeratenotappliedtothetradedprice (0)"
  end
  if value == 1 then
    return "Trading Currency Indicator: Changerateappliedtothetradedprice (1)"
  end
  if value == 255 then
    return "Trading Currency Indicator: No Value"
  end

  return "Trading Currency Indicator: Unknown("..value..")"
end

-- Dissect: Trading Currency Indicator
dissect.trading_currency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trading_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Currency Coefficient
size_of.currency_coefficient = 4

-- Display: Currency Coefficient
display.currency_coefficient = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Currency Coefficient: No Value"
  end

  return "Currency Coefficient: "..value
end

-- Dissect: Currency Coefficient
dissect.currency_coefficient = function(buffer, offset, packet, parent)
  local length = size_of.currency_coefficient
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.currency_coefficient(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.currency_coefficient, range, value, display)

  return offset + length, value
end

-- Size: Mnemonic
size_of.mnemonic = 5

-- Display: Mnemonic
display.mnemonic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mnemonic: No Value"
  end

  return "Mnemonic: "..value
end

-- Dissect: Mnemonic
dissect.mnemonic = function(buffer, offset, packet, parent)
  local length = size_of.mnemonic
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

  local display = display.mnemonic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mnemonic, range, value, display)

  return offset + length, value
end

-- Size: Mic List
size_of.mic_list = 20

-- Display: Mic List
display.mic_list = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic List: No Value"
  end

  return "Mic List: "..value
end

-- Dissect: Mic List
dissect.mic_list = function(buffer, offset, packet, parent)
  local length = size_of.mic_list
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

  local display = display.mic_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Size: Maximum Decimals In Quantity
size_of.maximum_decimals_in_quantity = 1

-- Display: Maximum Decimals In Quantity
display.maximum_decimals_in_quantity = function(value)
  -- Check if field has value
  if value == 255 then
    return "Maximum Decimals In Quantity: No Value"
  end

  return "Maximum Decimals In Quantity: "..value
end

-- Dissect: Maximum Decimals In Quantity
dissect.maximum_decimals_in_quantity = function(buffer, offset, packet, parent)
  local length = size_of.maximum_decimals_in_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.maximum_decimals_in_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.maximum_decimals_in_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Adjusted Closing Price
size_of.last_adjusted_closing_price = 8

-- Display: Last Adjusted Closing Price
display.last_adjusted_closing_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Adjusted Closing Price: No Value"
  end

  return "Last Adjusted Closing Price: "..value
end

-- Dissect: Last Adjusted Closing Price
dissect.last_adjusted_closing_price = function(buffer, offset, packet, parent)
  local length = size_of.last_adjusted_closing_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_adjusted_closing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.last_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Issuing Country
size_of.issuing_country = 3

-- Display: Issuing Country
display.issuing_country = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuing Country: No Value"
  end

  return "Issuing Country: "..value
end

-- Dissect: Issuing Country
dissect.issuing_country = function(buffer, offset, packet, parent)
  local length = size_of.issuing_country
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

  local display = display.issuing_country(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.issuing_country, range, value, display)

  return offset + length, value
end

-- Size: Icb
size_of.icb = 16

-- Display: Icb
display.icb = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb: No Value"
  end

  return "Icb: "..value
end

-- Dissect: Icb
dissect.icb = function(buffer, offset, packet, parent)
  local length = size_of.icb
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

  local display = display.icb(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.icb, range, value, display)

  return offset + length, value
end

-- Size: Guarantee Indicator
size_of.guarantee_indicator = 1

-- Display: Guarantee Indicator
display.guarantee_indicator = function(value)
  if value == 0 then
    return "Guarantee Indicator: Thisinstrumentisnotguaranteed (0)"
  end
  if value == 1 then
    return "Guarantee Indicator: Thisinstrumentisguaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Indicator: Thisinstrumentisnotclearable (2)"
  end
  if value == 8 then
    return "Guarantee Indicator: Guaranteed Cleared Borrowing Lending Service (8)"
  end
  if value == 255 then
    return "Guarantee Indicator: No Value"
  end

  return "Guarantee Indicator: Unknown("..value..")"
end

-- Dissect: Guarantee Indicator
dissect.guarantee_indicator = function(buffer, offset, packet, parent)
  local length = size_of.guarantee_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.guarantee_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.guarantee_indicator, range, value, display)

  return offset + length, value
end

-- Size: First Settlement Date
size_of.first_settlement_date = 2

-- Display: First Settlement Date
display.first_settlement_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "First Settlement Date: No Value"
  end

  return "First Settlement Date: "..value
end

-- Dissect: First Settlement Date
dissect.first_settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.first_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.first_settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Depositary List
size_of.depositary_list = 20

-- Display: Depositary List
display.depositary_list = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Depositary List: No Value"
  end

  return "Depositary List: "..value
end

-- Dissect: Depositary List
dissect.depositary_list = function(buffer, offset, packet, parent)
  local length = size_of.depositary_list
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

  local display = display.depositary_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.depositary_list, range, value, display)

  return offset + length, value
end

-- Size: Date Of Last Trade
size_of.date_of_last_trade = 2

-- Display: Date Of Last Trade
display.date_of_last_trade = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Date Of Last Trade: No Value"
  end

  return "Date Of Last Trade: "..value
end

-- Dissect: Date Of Last Trade
dissect.date_of_last_trade = function(buffer, offset, packet, parent)
  local length = size_of.date_of_last_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.date_of_last_trade(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Size: Dark Min Quantity
size_of.dark_min_quantity = 4

-- Display: Dark Min Quantity
display.dark_min_quantity = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Dark Min Quantity: No Value"
  end

  return "Dark Min Quantity: "..value
end

-- Dissect: Dark Min Quantity
dissect.dark_min_quantity = function(buffer, offset, packet, parent)
  local length = size_of.dark_min_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dark_min_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_min_quantity, range, value, display)

  return offset + length, value
end

-- Size: Dark Lis Threshold
size_of.dark_lis_threshold = 8

-- Display: Dark Lis Threshold
display.dark_lis_threshold = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Dark Lis Threshold: No Value"
  end

  return "Dark Lis Threshold: "..value
end

-- Dissect: Dark Lis Threshold
dissect.dark_lis_threshold = function(buffer, offset, packet, parent)
  local length = size_of.dark_lis_threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.dark_lis_threshold(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_lis_threshold, range, value, display)

  return offset + length, value
end

-- Size: Dark Eligibility
size_of.dark_eligibility = 1

-- Display: Dark Eligibility
display.dark_eligibility = function(value)
  -- Check if field has value
  if value == 255 then
    return "Dark Eligibility: No Value"
  end

  return "Dark Eligibility: "..value
end

-- Dissect: Dark Eligibility
dissect.dark_eligibility = function(buffer, offset, packet, parent)
  local length = size_of.dark_eligibility
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dark_eligibility(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.dark_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Instrument Group Code
size_of.instrument_group_code = 2

-- Display: Instrument Group Code
display.instrument_group_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_group_code
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

  local display = display.instrument_group_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Trading Code
size_of.instrument_trading_code = 15

-- Display: Instrument Trading Code
display.instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Trading Code: No Value"
  end

  return "Instrument Trading Code: "..value
end

-- Dissect: Instrument Trading Code
dissect.instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_trading_code
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

  local display = display.instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Name
size_of.instrument_name = 18

-- Display: Instrument Name
display.instrument_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Name: No Value"
  end

  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
dissect.instrument_name = function(buffer, offset, packet, parent)
  local length = size_of.instrument_name
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

  local display = display.instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Standing Data Message
size_of.standing_data_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.optiq_segment

  index = index + size_of.partition_id

  index = index + size_of.full_instrument_name

  index = index + size_of.instrument_name

  index = index + size_of.instrument_trading_code

  index = index + size_of.instrument_group_code

  index = index + size_of.isin_code

  index = index + size_of.price_decimals

  index = index + size_of.quantity_decimals

  index = index + size_of.amount_decimals

  index = index + size_of.ratio_decimals

  index = index + size_of.cfi

  index = index + size_of.instrument_event_date

  index = index + size_of.strike_price

  index = index + size_of.dark_eligibility

  index = index + size_of.dark_lis_threshold

  index = index + size_of.dark_min_quantity

  index = index + size_of.date_of_last_trade

  index = index + size_of.depositary_list

  index = index + size_of.main_depositary

  index = index + size_of.first_settlement_date

  index = index + size_of.guarantee_indicator

  index = index + size_of.icb

  index = index + size_of.issuing_country

  index = index + size_of.last_adjusted_closing_price

  index = index + size_of.lot_size

  index = index + size_of.maturity_date

  index = index + size_of.maximum_decimals_in_quantity

  index = index + size_of.mic

  index = index + size_of.mic_list

  index = index + size_of.country_of_exchange

  index = index + size_of.mnemonic

  index = index + size_of.underlying_mic

  index = index + size_of.underlying_isin_code

  index = index + size_of.trading_currency

  index = index + size_of.currency_coefficient

  index = index + size_of.trading_currency_indicator

  index = index + size_of.strike_currency_indicator

  index = index + size_of.number_instrument_circulating

  index = index + size_of.par_value

  index = index + size_of.quantity_notation

  index = index + size_of.inst_unit_exp

  index = index + size_of.settlement_delay

  index = index + size_of.strike_currency

  index = index + size_of.tax_code

  index = index + size_of.type_of_corporate_event

  index = index + size_of.type_of_market_admission

  index = index + size_of.repo_indicator

  index = index + size_of.issue_price

  index = index + size_of.nominal_currency

  index = index + size_of.issue_price_decimals

  index = index + size_of.strike_price_decimals

  index = index + size_of.liquid_instrument_indicator

  index = index + size_of.market_of_reference_mic

  index = index + size_of.icb_code

  index = index + size_of.threshold_lis_post_trade_60mn

  index = index + size_of.threshold_lis_post_trade_120mn

  index = index + size_of.threshold_lis_post_trade_eod

  index = index + size_of.em_m_pattern_rep_groups(buffer, offset + index)

  return index
end

-- Display: Standing Data Message
display.standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Standing Data Message
dissect.standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, optiq_segment = dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = dissect.full_instrument_name(buffer, index, packet, parent)

  -- Instrument Name: 18 Byte Ascii String
  index, instrument_name = dissect.instrument_name(buffer, index, packet, parent)

  -- Instrument Trading Code: 15 Byte Ascii String Nullable
  index, instrument_trading_code = dissect.instrument_trading_code(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = dissect.isin_code(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_decimals = dissect.price_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_decimals = dissect.ratio_decimals(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String Nullable
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = dissect.instrument_event_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Dark Eligibility: 1 Byte Unsigned Fixed Width Integer Nullable
  index, dark_eligibility = dissect.dark_eligibility(buffer, index, packet, parent)

  -- Dark Lis Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, dark_lis_threshold = dissect.dark_lis_threshold(buffer, index, packet, parent)

  -- Dark Min Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, dark_min_quantity = dissect.dark_min_quantity(buffer, index, packet, parent)

  -- Date Of Last Trade: 2 Byte Unsigned Fixed Width Integer Nullable
  index, date_of_last_trade = dissect.date_of_last_trade(buffer, index, packet, parent)

  -- Depositary List: 20 Byte Ascii String Nullable
  index, depositary_list = dissect.depositary_list(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = dissect.main_depositary(buffer, index, packet, parent)

  -- First Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, first_settlement_date = dissect.first_settlement_date(buffer, index, packet, parent)

  -- Guarantee Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, guarantee_indicator = dissect.guarantee_indicator(buffer, index, packet, parent)

  -- Icb: 16 Byte Ascii String Nullable
  index, icb = dissect.icb(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String Nullable
  index, issuing_country = dissect.issuing_country(buffer, index, packet, parent)

  -- Last Adjusted Closing Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_adjusted_closing_price = dissect.last_adjusted_closing_price(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Maximum Decimals In Quantity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, maximum_decimals_in_quantity = dissect.maximum_decimals_in_quantity(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Mic List: 20 Byte Ascii String Nullable
  index, mic_list = dissect.mic_list(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String Nullable
  index, country_of_exchange = dissect.country_of_exchange(buffer, index, packet, parent)

  -- Mnemonic: 5 Byte Ascii String Nullable
  index, mnemonic = dissect.mnemonic(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String Nullable
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = dissect.currency_coefficient(buffer, index, packet, parent)

  -- Trading Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_currency_indicator = dissect.trading_currency_indicator(buffer, index, packet, parent)

  -- Strike Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, strike_currency_indicator = dissect.strike_currency_indicator(buffer, index, packet, parent)

  -- Number Instrument Circulating: 8 Byte Unsigned Fixed Width Integer Nullable
  index, number_instrument_circulating = dissect.number_instrument_circulating(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer Nullable
  index, par_value = dissect.par_value(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String Nullable
  index, quantity_notation = dissect.quantity_notation(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, inst_unit_exp = dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Settlement Delay: 2 Byte Ascii String Nullable
  index, settlement_delay = dissect.settlement_delay(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String Nullable
  index, strike_currency = dissect.strike_currency(buffer, index, packet, parent)

  -- Tax Code: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, tax_code = dissect.tax_code(buffer, index, packet, parent)

  -- Type Of Corporate Event: 2 Byte Ascii String Nullable
  index, type_of_corporate_event = dissect.type_of_corporate_event(buffer, index, packet, parent)

  -- Type Of Market Admission: 1 Byte Ascii String Enum with 17 values
  index, type_of_market_admission = dissect.type_of_market_admission(buffer, index, packet, parent)

  -- Repo Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, repo_indicator = dissect.repo_indicator(buffer, index, packet, parent)

  -- Issue Price: 8 Byte Signed Fixed Width Integer Nullable
  index, issue_price = dissect.issue_price(buffer, index, packet, parent)

  -- Nominal Currency: 3 Byte Ascii String Nullable
  index, nominal_currency = dissect.nominal_currency(buffer, index, packet, parent)

  -- Issue Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, issue_price_decimals = dissect.issue_price_decimals(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Liquid Instrument Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, liquid_instrument_indicator = dissect.liquid_instrument_indicator(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Icb Code: 8 Byte Ascii String Nullable
  index, icb_code = dissect.icb_code(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 60mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_60mn = dissect.threshold_lis_post_trade_60mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 120mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_120mn = dissect.threshold_lis_post_trade_120mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade Eod: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_eod = dissect.threshold_lis_post_trade_eod(buffer, index, packet, parent)

  -- Em M Pattern Rep Groups: Struct of 2 fields
  index, em_m_pattern_rep_groups = dissect.em_m_pattern_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Standing Data Message
dissect.standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.standing_data_message then
    local length = size_of.standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.standing_data_message, range, display)
  end

  return dissect.standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Scheduled Event
size_of.scheduled_event = 1

-- Display: Scheduled Event
display.scheduled_event = function(value)
  if value == 0 then
    return "Scheduled Event: Cancel Previously Scheduled Event (0)"
  end
  if value == 1 then
    return "Scheduled Event: Reopening (1)"
  end
  if value == 3 then
    return "Scheduled Event: Resumptionoftrading (3)"
  end
  if value == 4 then
    return "Scheduled Event: Closed (4)"
  end
  if value == 5 then
    return "Scheduled Event: Expiry (5)"
  end
  if value == 6 then
    return "Scheduled Event: Wholesale Largein Scale Li Stradesopenextension (6)"
  end
  if value == 7 then
    return "Scheduled Event: Wholesale Basistradesopenextension (7)"
  end
  if value == 8 then
    return "Scheduled Event: Wholesale Against Actualstradesopenextension (8)"
  end
  if value == 9 then
    return "Scheduled Event: Wholesale Largein Scale Li S Packagetradesopenextension (9)"
  end
  if value == 10 then
    return "Scheduled Event: Wholesale Exchange For Swapstradesopenextension (10)"
  end
  if value == 11 then
    return "Scheduled Event: Wholesale Trades Open Extension (11)"
  end
  if value == 12 then
    return "Scheduled Event: Suspension (12)"
  end
  if value == 13 then
    return "Scheduled Event: Collars Normal (13)"
  end
  if value == 14 then
    return "Scheduled Event: Collars Wide (14)"
  end
  if value == 15 then
    return "Scheduled Event: Pre Expiry (15)"
  end
  if value == 255 then
    return "Scheduled Event: No Value"
  end

  return "Scheduled Event: Unknown("..value..")"
end

-- Dissect: Scheduled Event
dissect.scheduled_event = function(buffer, offset, packet, parent)
  local length = size_of.scheduled_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.scheduled_event(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.scheduled_event, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 1

-- Display: Session
display.session = function(value)
  if value == 0 then
    return "Session: Session 0 (0)"
  end
  if value == 1 then
    return "Session: Session 1 (1)"
  end
  if value == 2 then
    return "Session: Session 2 (2)"
  end
  if value == 3 then
    return "Session: Session 3 (3)"
  end
  if value == 4 then
    return "Session: Session 4 (4)"
  end
  if value == 5 then
    return "Session: Session 5 (5)"
  end
  if value == 6 then
    return "Session: Session 6 (6)"
  end
  if value == 7 then
    return "Session: Session 7 (7)"
  end
  if value == 8 then
    return "Session: Session 8 (8)"
  end
  if value == 9 then
    return "Session: Session 9 (9)"
  end

  return "Session: Unknown("..value..")"
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.session, range, value, display)

  return offset + length, value
end

-- Size: Order Entry Qualifier
size_of.order_entry_qualifier = 1

-- Display: Order Entry Qualifier
display.order_entry_qualifier = function(value)
  if value == 0 then
    return "Order Entry Qualifier: Order Entry Cancel Modify Disabled (0)"
  end
  if value == 1 then
    return "Order Entry Qualifier: Order Entry Cancel Modify Enabled (1)"
  end
  if value == 2 then
    return "Order Entry Qualifier: Canceland Modify Only (2)"
  end
  if value == 3 then
    return "Order Entry Qualifier: Cancel Only (3)"
  end
  if value == 255 then
    return "Order Entry Qualifier: No Value"
  end

  return "Order Entry Qualifier: Unknown("..value..")"
end

-- Dissect: Order Entry Qualifier
dissect.order_entry_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.order_entry_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_entry_qualifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Trading Period
size_of.trading_period = 1

-- Display: Trading Period
display.trading_period = function(value)
  if value == 1 then
    return "Trading Period: Opening (1)"
  end
  if value == 2 then
    return "Trading Period: Standard (2)"
  end
  if value == 3 then
    return "Trading Period: Closing (3)"
  end
  if value == 255 then
    return "Trading Period: No Value"
  end

  return "Trading Period: Unknown("..value..")"
end

-- Dissect: Trading Period
dissect.trading_period = function(buffer, offset, packet, parent)
  local length = size_of.trading_period
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_period(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_period, range, value, display)

  return offset + length, value
end

-- Size: Phase Qualifier
size_of.phase_qualifier = 2

-- Display: Phase Qualifier
display.phase_qualifier = function(buffer, packet, parent)
  local display = ""

  -- Is Wholesale Allowed flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Wholesale Allowed|"
  end
  -- Is Suspended flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Suspended|"
  end
  -- Is Random Uncrossing flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Random Uncrossing|"
  end
  -- Is Trading At Last flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Trading At Last|"
  end
  -- Is Call Bbo Only flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Call Bbo Only|"
  end
  -- Is No Qualifier flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."No Qualifier|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Phase Qualifier
dissect.phase_qualifier_bits = function(buffer, offset, packet, parent)

  -- Reserved 10: 10 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_10, buffer(offset, 2))

  -- Wholesale Allowed: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.wholesale_allowed, buffer(offset, 2))

  -- Suspended: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.suspended, buffer(offset, 2))

  -- Random Uncrossing: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.random_uncrossing, buffer(offset, 2))

  -- Trading At Last: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_at_last, buffer(offset, 2))

  -- Call Bbo Only: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.call_bbo_only, buffer(offset, 2))

  -- No Qualifier: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.no_qualifier, buffer(offset, 2))
end

-- Dissect: Phase Qualifier
dissect.phase_qualifier = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.phase_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_qualifier, range, display)

  if show.phase_qualifier then
    dissect.phase_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Phase Id
size_of.phase_id = 1

-- Display: Phase Id
display.phase_id = function(value)
  if value == 1 then
    return "Phase Id: Inaccessible (1)"
  end
  if value == 2 then
    return "Phase Id: Closed (2)"
  end
  if value == 3 then
    return "Phase Id: Call (3)"
  end
  if value == 4 then
    return "Phase Id: Uncrossing (4)"
  end
  if value == 5 then
    return "Phase Id: Continuous (5)"
  end
  if value == 7 then
    return "Phase Id: Continuous Uncrossing (7)"
  end

  return "Phase Id: Unknown("..value..")"
end

-- Dissect: Phase Id
dissect.phase_id = function(buffer, offset, packet, parent)
  local length = size_of.phase_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.phase_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_id, range, value, display)

  return offset + length, value
end

-- Size: Phase Time
size_of.phase_time = 8

-- Display: Phase Time
display.phase_time = function(value)
  return "Phase Time: "..value
end

-- Dissect: Phase Time
dissect.phase_time = function(buffer, offset, packet, parent)
  local length = size_of.phase_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.phase_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.phase_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timetables Group
size_of.timetables_group = function(buffer, offset)
  local index = 0

  index = index + size_of.phase_time

  index = index + size_of.phase_id

  index = index + size_of.phase_qualifier

  index = index + size_of.trading_period

  index = index + size_of.order_entry_qualifier

  index = index + size_of.session

  index = index + size_of.scheduled_event

  return index
end

-- Display: Timetables Group
display.timetables_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timetables Group
dissect.timetables_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Phase Time: 8 Byte Unsigned Fixed Width Integer
  index, phase_time = dissect.phase_time(buffer, index, packet, parent)

  -- Phase Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, phase_id = dissect.phase_id(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 7 fields
  index, phase_qualifier = dissect.phase_qualifier(buffer, index, packet, parent)

  -- Trading Period: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_period = dissect.trading_period(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = dissect.order_entry_qualifier(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = dissect.session(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, scheduled_event = dissect.scheduled_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetables Group
dissect.timetables_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timetables_group then
    local length = size_of.timetables_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timetables_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetables_group, range, display)
  end

  return dissect.timetables_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Timetables Groups
size_of.timetables_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local timetables_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + timetables_group_count * 15

  return index
end

-- Display: Timetables Groups
display.timetables_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timetables Groups
dissect.timetables_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Timetables Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = dissect.timetables_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Timetables Groups
dissect.timetables_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetables_groups then
    local length = size_of.timetables_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timetables_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetables_groups, range, display)
  end

  return dissect.timetables_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Timetable Message
size_of.timetable_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.pattern_id

  index = index + size_of.symbol_index

  index = index + size_of.timetables_groups(buffer, offset + index)

  return index
end

-- Display: Timetable Message
display.timetable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timetable Message
dissect.timetable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = dissect.pattern_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Timetables Groups: Struct of 2 fields
  index, timetables_groups = dissect.timetables_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetable Message
dissect.timetable_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetable_message then
    local length = size_of.timetable_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timetable_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.timetable_message, range, display)
  end

  return dissect.timetable_message_fields(buffer, offset, packet, parent)
end

-- Size: Instrument State
size_of.instrument_state = 1

-- Display: Instrument State
display.instrument_state = function(value)
  if value == 1 then
    return "Instrument State: Scheduled (1)"
  end
  if value == 2 then
    return "Instrument State: Suspendeddueto Underlying (2)"
  end
  if value == 3 then
    return "Instrument State: Suspended Kobi (3)"
  end
  if value == 4 then
    return "Instrument State: Suspended Kobe (4)"
  end
  if value == 5 then
    return "Instrument State: Suspended New Listing (5)"
  end
  if value == 6 then
    return "Instrument State: Suspendedby Mo (6)"
  end
  if value == 7 then
    return "Instrument State: Suspended Technical (7)"
  end
  if value == 8 then
    return "Instrument State: Reserved Dynamic Collars (8)"
  end
  if value == 9 then
    return "Instrument State: Reserved Static Collars (9)"
  end
  if value == 10 then
    return "Instrument State: Reserved Waiting For Lp (10)"
  end
  if value == 11 then
    return "Instrument State: Reserved Lp Limit (11)"
  end
  if value == 12 then
    return "Instrument State: Instrument Deletion (12)"
  end
  if value == 13 then
    return "Instrument State: Suspended Waitingfor Bbo (13)"
  end
  if value == 14 then
    return "Instrument State: Suspended Waitingfor Tradable State (14)"
  end
  if value == 15 then
    return "Instrument State: Random Uncrossing Period (15)"
  end
  if value == 16 then
    return "Instrument State: Expired (16)"
  end
  if value == 17 then
    return "Instrument State: Uncrossing (17)"
  end
  if value == 18 then
    return "Instrument State: Reserveddueto Leg (18)"
  end
  if value == 19 then
    return "Instrument State: Suspendeddueto Leg (19)"
  end
  if value == 255 then
    return "Instrument State: No Value"
  end

  return "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
dissect.instrument_state = function(buffer, offset, packet, parent)
  local length = size_of.instrument_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instrument_state(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Size: Scheduled Event Time
size_of.scheduled_event_time = 8

-- Display: Scheduled Event Time
display.scheduled_event_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Scheduled Event Time: No Value"
  end

  return "Scheduled Event Time: "..value
end

-- Dissect: Scheduled Event Time
dissect.scheduled_event_time = function(buffer, offset, packet, parent)
  local length = size_of.scheduled_event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.scheduled_event_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.scheduled_event_time, range, value, display)

  return offset + length, value
end

-- Size: Quote Spread Multiplier
size_of.quote_spread_multiplier = 1

-- Display: Quote Spread Multiplier
display.quote_spread_multiplier = function(value)
  if value == 1 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 1 (1)"
  end
  if value == 2 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 2 (2)"
  end
  if value == 3 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 3 (3)"
  end
  if value == 255 then
    return "Quote Spread Multiplier: No Value"
  end

  return "Quote Spread Multiplier: Unknown("..value..")"
end

-- Dissect: Quote Spread Multiplier
dissect.quote_spread_multiplier = function(buffer, offset, packet, parent)
  local length = size_of.quote_spread_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_spread_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.quote_spread_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Price Limits
size_of.price_limits = 1

-- Display: Price Limits
display.price_limits = function(value)
  if value == 1 then
    return "Price Limits: Price Limits Enabled Normal (1)"
  end
  if value == 2 then
    return "Price Limits: Price Limits Enabled Wide (2)"
  end
  if value == 3 then
    return "Price Limits: Price Limits Enabled Widest (3)"
  end
  if value == 4 then
    return "Price Limits: Price Limits Disabled (4)"
  end
  if value == 255 then
    return "Price Limits: No Value"
  end

  return "Price Limits: Unknown("..value..")"
end

-- Dissect: Price Limits
dissect.price_limits = function(buffer, offset, packet, parent)
  local length = size_of.price_limits
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_limits(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_limits, range, value, display)

  return offset + length, value
end

-- Size: Trading Side
size_of.trading_side = 1

-- Display: Trading Side
display.trading_side = function(value)
  if value == 1 then
    return "Trading Side: Bid Only (1)"
  end
  if value == 2 then
    return "Trading Side: Offer Only (2)"
  end
  if value == 3 then
    return "Trading Side: Pako (3)"
  end
  if value == 4 then
    return "Trading Side: Both Sides (4)"
  end
  if value == 255 then
    return "Trading Side: No Value"
  end

  return "Trading Side: Unknown("..value..")"
end

-- Dissect: Trading Side
dissect.trading_side = function(buffer, offset, packet, parent)
  local length = size_of.trading_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trading_side, range, value, display)

  return offset + length, value
end

-- Size: Status Reason
size_of.status_reason = 1

-- Display: Status Reason
display.status_reason = function(value)
  if value == 0 then
    return "Status Reason: Scheduled (0)"
  end
  if value == 4 then
    return "Status Reason: Collars Breach (4)"
  end
  if value == 7 then
    return "Status Reason: Automatic Reopening (7)"
  end
  if value == 8 then
    return "Status Reason: No Liquidity Provider (8)"
  end
  if value == 11 then
    return "Status Reason: Knock Inby Issuer (11)"
  end
  if value == 12 then
    return "Status Reason: Knock Outby Exchange (12)"
  end
  if value == 13 then
    return "Status Reason: Knock Outby Issuer (13)"
  end
  if value == 15 then
    return "Status Reason: Actionby Market Operations (15)"
  end
  if value == 16 then
    return "Status Reason: Waitingfor Tradable State (16)"
  end
  if value == 20 then
    return "Status Reason: New Listing (20)"
  end
  if value == 21 then
    return "Status Reason: Dueto Underlying (21)"
  end
  if value == 22 then
    return "Status Reason: Outsideof L Pquotes (22)"
  end
  if value == 23 then
    return "Status Reason: Technical (23)"
  end
  if value == 24 then
    return "Status Reason: Dueto Leg (24)"
  end
  if value == 255 then
    return "Status Reason: No Value"
  end

  return "Status Reason: Unknown("..value..")"
end

-- Dissect: Status Reason
dissect.status_reason = function(buffer, offset, packet, parent)
  local length = size_of.status_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.status_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.status_reason, range, value, display)

  return offset + length, value
end

-- Size: Book State
size_of.book_state = 1

-- Display: Book State
display.book_state = function(value)
  if value == 1 then
    return "Book State: Inaccessible (1)"
  end
  if value == 2 then
    return "Book State: Closed (2)"
  end
  if value == 3 then
    return "Book State: Call (3)"
  end
  if value == 4 then
    return "Book State: Uncrossing (4)"
  end
  if value == 5 then
    return "Book State: Continuous (5)"
  end
  if value == 6 then
    return "Book State: Halted (6)"
  end
  if value == 7 then
    return "Book State: Continuous Uncrossing (7)"
  end
  if value == 8 then
    return "Book State: Suspended (8)"
  end
  if value == 9 then
    return "Book State: Reserved (9)"
  end
  if value == 255 then
    return "Book State: No Value"
  end

  return "Book State: Unknown("..value..")"
end

-- Dissect: Book State
dissect.book_state = function(buffer, offset, packet, parent)
  local length = size_of.book_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.book_state(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.book_state, range, value, display)

  return offset + length, value
end

-- Size: Change Type
size_of.change_type = 1

-- Display: Change Type
display.change_type = function(value)
  if value == 0 then
    return "Change Type: Status Changes (0)"
  end
  if value == 1 then
    return "Change Type: Scheduled Event Notification (1)"
  end
  if value == 2 then
    return "Change Type: Status Changeand Scheduled Event Notification (2)"
  end

  return "Change Type: Unknown("..value..")"
end

-- Dissect: Change Type
dissect.change_type = function(buffer, offset, packet, parent)
  local length = size_of.change_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.change_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.change_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market States Group
size_of.market_states_group = function(buffer, offset)
  local index = 0

  index = index + size_of.change_type

  index = index + size_of.symbol_index

  index = index + size_of.event_time

  index = index + size_of.book_state

  index = index + size_of.status_reason

  index = index + size_of.phase_qualifier

  index = index + size_of.trading_period

  index = index + size_of.trading_side

  index = index + size_of.price_limits

  index = index + size_of.quote_spread_multiplier

  index = index + size_of.order_entry_qualifier

  index = index + size_of.session

  index = index + size_of.scheduled_event

  index = index + size_of.scheduled_event_time

  index = index + size_of.instrument_state

  return index
end

-- Display: Market States Group
display.market_states_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market States Group
dissect.market_states_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, change_type = dissect.change_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Book State: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, book_state = dissect.book_state(buffer, index, packet, parent)

  -- Status Reason: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, status_reason = dissect.status_reason(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 7 fields
  index, phase_qualifier = dissect.phase_qualifier(buffer, index, packet, parent)

  -- Trading Period: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_period = dissect.trading_period(buffer, index, packet, parent)

  -- Trading Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_side = dissect.trading_side(buffer, index, packet, parent)

  -- Price Limits: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, price_limits = dissect.price_limits(buffer, index, packet, parent)

  -- Quote Spread Multiplier: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_spread_multiplier = dissect.quote_spread_multiplier(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = dissect.order_entry_qualifier(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = dissect.session(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, scheduled_event = dissect.scheduled_event(buffer, index, packet, parent)

  -- Scheduled Event Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, scheduled_event_time = dissect.scheduled_event_time(buffer, index, packet, parent)

  -- Instrument State: 1 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, instrument_state = dissect.instrument_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market States Group
dissect.market_states_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_states_group then
    local length = size_of.market_states_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_states_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_states_group, range, display)
  end

  return dissect.market_states_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market States Groups
size_of.market_states_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local market_states_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + market_states_group_count * 33

  return index
end

-- Display: Market States Groups
display.market_states_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market States Groups
dissect.market_states_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Market States Group: Struct of 15 fields
  for i = 1, num_in_group do
    index = dissect.market_states_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market States Groups
dissect.market_states_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_states_groups then
    local length = size_of.market_states_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_states_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_states_groups, range, display)
  end

  return dissect.market_states_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Status Change Message
size_of.market_status_change_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.market_states_groups(buffer, offset + index)

  return index
end

-- Display: Market Status Change Message
display.market_status_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Status Change Message
dissect.market_status_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Market States Groups: Struct of 2 fields
  index, market_states_groups = dissect.market_states_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Change Message
dissect.market_status_change_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_status_change_message then
    local length = size_of.market_status_change_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_status_change_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_status_change_message, range, display)
  end

  return dissect.market_status_change_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Used Group 1 Groups
size_of.not_used_group_1_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  index = index + size_of.not_used_group_1_group

  return index
end

-- Display: Not Used Group 1 Groups
display.not_used_group_1_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
dissect.not_used_group_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Not Used Group 1 Group
  index, not_used_group_1_group = dissect.not_used_group_1_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Used Group 1 Groups
dissect.not_used_group_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = size_of.not_used_group_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_used_group_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.not_used_group_1_groups, range, display)
  end

  return dissect.not_used_group_1_groups_fields(buffer, offset, packet, parent)
end

-- Size: Message Price Notation
size_of.message_price_notation = 1

-- Display: Message Price Notation
display.message_price_notation = function(value)
  if value == 1 then
    return "Message Price Notation: Price (1)"
  end
  if value == 2 then
    return "Message Price Notation: Spreadinbasispoints (2)"
  end
  if value == 3 then
    return "Message Price Notation: Spread (3)"
  end
  if value == 255 then
    return "Message Price Notation: No Value"
  end

  return "Message Price Notation: Unknown("..value..")"
end

-- Dissect: Message Price Notation
dissect.message_price_notation = function(buffer, offset, packet, parent)
  local length = size_of.message_price_notation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Evaluated Price
size_of.evaluated_price = 8

-- Display: Evaluated Price
display.evaluated_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
dissect.evaluated_price = function(buffer, offset, packet, parent)
  local length = size_of.evaluated_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.evaluated_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Size: End Time Vwap
size_of.end_time_vwap = 4

-- Display: End Time Vwap
display.end_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
dissect.end_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.end_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.end_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Start Time Vwap
size_of.start_time_vwap = 4

-- Display: Start Time Vwap
display.start_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
dissect.start_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.start_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.start_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Transparency Indicator
size_of.transparency_indicator = 1

-- Display: Transparency Indicator
display.transparency_indicator = function(value)
  if value == 0 then
    return "Transparency Indicator: Lit Regular Trade (0)"
  end
  if value == 1 then
    return "Transparency Indicator: Dark Tradeand Immediate Publication (1)"
  end
  if value == 2 then
    return "Transparency Indicator: Dark Tradeand Deferred Publication (2)"
  end
  if value == 255 then
    return "Transparency Indicator: No Value"
  end

  return "Transparency Indicator: Unknown("..value..")"
end

-- Dissect: Transparency Indicator
dissect.transparency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.transparency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transparency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.transparency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Trade Code
size_of.block_trade_code = 1

-- Display: Block Trade Code
display.block_trade_code = function(value)
  if value == "B" then
    return "Block Trade Code: Block Trade (B)"
  end
  if value == "N" then
    return "Block Trade Code: Regulartradeor Negotiateddeal (N)"
  end
  if value == "-" then
    return "Block Trade Code: Undefined (-)"
  end
  if value == 0 then
    return "Block Trade Code: No Value"
  end

  return "Block Trade Code: Unknown("..value..")"
end

-- Dissect: Block Trade Code
dissect.block_trade_code = function(buffer, offset, packet, parent)
  local length = size_of.block_trade_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.block_trade_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_trade_code, range, value, display)

  return offset + length, value
end

-- Size: Effective Date Indicator
size_of.effective_date_indicator = 1

-- Display: Effective Date Indicator
display.effective_date_indicator = function(value)
  if value == 0 then
    return "Effective Date Indicator: Sellerdeclarationisreceivedonthecurtradingsessionday (0)"
  end
  if value == 1 then
    return "Effective Date Indicator: Sellerdeclarationreceivedbeforethecurtradingsessionday (1)"
  end
  if value == 255 then
    return "Effective Date Indicator: No Value"
  end

  return "Effective Date Indicator: Unknown("..value..")"
end

-- Dissect: Effective Date Indicator
dissect.effective_date_indicator = function(buffer, offset, packet, parent)
  local length = size_of.effective_date_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.effective_date_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.effective_date_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Type
size_of.transaction_type = 1

-- Display: Transaction Type
display.transaction_type = function(value)
  if value == 1 then
    return "Transaction Type: Plain Vanilla Trade (1)"
  end
  if value == 2 then
    return "Transaction Type: Dark Trade (2)"
  end
  if value == 3 then
    return "Transaction Type: Benchmark Trade (3)"
  end
  if value == 4 then
    return "Transaction Type: Technical Trade (4)"
  end
  if value == 5 then
    return "Transaction Type: Giveup Givein Trade (5)"
  end
  if value == 6 then
    return "Transaction Type: Ex Cumdividend Trade (6)"
  end
  if value == 7 then
    return "Transaction Type: Trade With Condition (7)"
  end
  if value == 15 then
    return "Transaction Type: Summary Report (15)"
  end
  if value == 255 then
    return "Transaction Type: No Value"
  end

  return "Transaction Type: Unknown("..value..")"
end

-- Dissect: Transaction Type
dissect.transaction_type = function(buffer, offset, packet, parent)
  local length = size_of.transaction_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transaction_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Qualifier
size_of.trade_qualifier = 1

-- Display: Trade Qualifier
display.trade_qualifier = function(buffer, packet, parent)
  local display = ""

  -- Is Deferred Publication flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Deferred Publication|"
  end
  -- Is Nav Trade Expressed In Price Currency flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Nav Trade Expressed In Price Currency|"
  end
  -- Is Nav Trade Expressed In Bps flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Nav Trade Expressed In Bps|"
  end
  -- Is Trade Creation By Market Operations flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Trade Creation By Market Operations|"
  end
  -- Is Aggressive Order flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Aggressive Order|"
  end
  -- Is Passive Order flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Passive Order|"
  end
  -- Is First Trade Price flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."First Trade Price|"
  end
  -- Is Uncrossing Trade flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Uncrossing Trade|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Qualifier
dissect.trade_qualifier_bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trade_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    dissect.trade_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Mmt Duplicative Indicator
size_of.mmt_duplicative_indicator = 4

-- Display: Mmt Duplicative Indicator
display.mmt_duplicative_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Duplicative Indicator: No Value"
  end

  return "Mmt Duplicative Indicator: "..value
end

-- Dissect: Mmt Duplicative Indicator
dissect.mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_duplicative_indicator
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

  local display = display.mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Post Trade Deferral
size_of.mmt_post_trade_deferral = 4

-- Display: Mmt Post Trade Deferral
display.mmt_post_trade_deferral = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Post Trade Deferral: No Value"
  end

  return "Mmt Post Trade Deferral: "..value
end

-- Dissect: Mmt Post Trade Deferral
dissect.mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = size_of.mmt_post_trade_deferral
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

  local display = display.mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Mmt Publication Mode
size_of.mmt_publication_mode = 4

-- Display: Mmt Publication Mode
display.mmt_publication_mode = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Publication Mode: No Value"
  end

  return "Mmt Publication Mode: "..value
end

-- Dissect: Mmt Publication Mode
dissect.mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = size_of.mmt_publication_mode
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

  local display = display.mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Algorithmic Indicator
size_of.mmt_algorithmic_indicator = 4

-- Display: Mmt Algorithmic Indicator
display.mmt_algorithmic_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Algorithmic Indicator: No Value"
  end

  return "Mmt Algorithmic Indicator: "..value
end

-- Dissect: Mmt Algorithmic Indicator
dissect.mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_algorithmic_indicator
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

  local display = display.mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Contributionto Price
size_of.mmt_contributionto_price = 4

-- Display: Mmt Contributionto Price
display.mmt_contributionto_price = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Contributionto Price: No Value"
  end

  return "Mmt Contributionto Price: "..value
end

-- Dissect: Mmt Contributionto Price
dissect.mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = size_of.mmt_contributionto_price
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

  local display = display.mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Mmt Off Book Automated Indicator
size_of.mmt_off_book_automated_indicator = 1

-- Display: Mmt Off Book Automated Indicator
display.mmt_off_book_automated_indicator = function(value)
  if value == "M" then
    return "Mmt Off Book Automated Indicator: Off Book Non Automated (M)"
  end
  if value == "Q" then
    return "Mmt Off Book Automated Indicator: Off Book Automated (Q)"
  end
  if value == "-" then
    return "Mmt Off Book Automated Indicator: Unspecifiedordoesnotapply (-)"
  end
  if value == 0 then
    return "Mmt Off Book Automated Indicator: No Value"
  end

  return "Mmt Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Off Book Automated Indicator
dissect.mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_off_book_automated_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Special Dividend Indicator
size_of.mmt_special_dividend_indicator = 4

-- Display: Mmt Special Dividend Indicator
display.mmt_special_dividend_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Special Dividend Indicator: No Value"
  end

  return "Mmt Special Dividend Indicator: "..value
end

-- Dissect: Mmt Special Dividend Indicator
dissect.mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_special_dividend_indicator
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

  local display = display.mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Benchmark Indicator
size_of.mmt_benchmark_indicator = 4

-- Display: Mmt Benchmark Indicator
display.mmt_benchmark_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Benchmark Indicator: No Value"
  end

  return "Mmt Benchmark Indicator: "..value
end

-- Dissect: Mmt Benchmark Indicator
dissect.mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_benchmark_indicator
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

  local display = display.mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Modification Indicator
size_of.mmt_modification_indicator = 4

-- Display: Mmt Modification Indicator
display.mmt_modification_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Modification Indicator: No Value"
  end

  return "Mmt Modification Indicator: "..value
end

-- Dissect: Mmt Modification Indicator
dissect.mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_modification_indicator
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

  local display = display.mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Agency Cross Trade Indicator
size_of.mmt_agency_cross_trade_indicator = 4

-- Display: Mmt Agency Cross Trade Indicator
display.mmt_agency_cross_trade_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Agency Cross Trade Indicator: No Value"
  end

  return "Mmt Agency Cross Trade Indicator: "..value
end

-- Dissect: Mmt Agency Cross Trade Indicator
dissect.mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_agency_cross_trade_indicator
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

  local display = display.mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Negotiation Indicator
size_of.mmt_negotiation_indicator = 4

-- Display: Mmt Negotiation Indicator
display.mmt_negotiation_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Negotiation Indicator: No Value"
  end

  return "Mmt Negotiation Indicator: "..value
end

-- Dissect: Mmt Negotiation Indicator
dissect.mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_negotiation_indicator
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

  local display = display.mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Transaction Category
size_of.mmt_transaction_category = 4

-- Display: Mmt Transaction Category
display.mmt_transaction_category = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Transaction Category: No Value"
  end

  return "Mmt Transaction Category: "..value
end

-- Dissect: Mmt Transaction Category
dissect.mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = size_of.mmt_transaction_category
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

  local display = display.mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Mmt Trading Mode
size_of.mmt_trading_mode = 1

-- Display: Mmt Trading Mode
display.mmt_trading_mode = function(value)
  if value == "1" then
    return "Mmt Trading Mode: Undefined Auctionequal Uncrossing (1)"
  end
  if value == "2" then
    return "Mmt Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Mmt Trading Mode: At Market Close Trading (3)"
  end
  if value == "4" then
    return "Mmt Trading Mode: Outof Main Session Trading (4)"
  end
  if value == "5" then
    return "Mmt Trading Mode: Trade Reporting On Exchange (5)"
  end
  if value == "6" then
    return "Mmt Trading Mode: Trade Reporting Off Exchange (6)"
  end
  if value == "7" then
    return "Mmt Trading Mode: Trade Reporting Systematic Internaliser (7)"
  end
  if value == "I" then
    return "Mmt Trading Mode: Scheduled Intraday Auctionequal Uncrossing (I)"
  end
  if value == "K" then
    return "Mmt Trading Mode: Scheduled Closing Auctionequal Uncrossing (K)"
  end
  if value == "O" then
    return "Mmt Trading Mode: Scheduled Opening Auctionequal Uncrossing (O)"
  end
  if value == "U" then
    return "Mmt Trading Mode: Unscheduled Auctionequal Uncrossing (U)"
  end
  if value == 0 then
    return "Mmt Trading Mode: No Value"
  end

  return "Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Mmt Trading Mode
dissect.mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = size_of.mmt_trading_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Market Mechanism
size_of.mmt_market_mechanism = 1

-- Display: Mmt Market Mechanism
display.mmt_market_mechanism = function(value)
  if value == 1 then
    return "Mmt Market Mechanism: Central Limit Order Book (1)"
  end
  if value == 2 then
    return "Mmt Market Mechanism: Quote Driven Market (2)"
  end
  if value == 3 then
    return "Mmt Market Mechanism: Dark Order Book (3)"
  end
  if value == 4 then
    return "Mmt Market Mechanism: Off Bookincluding Voiceor Messaging Trading (4)"
  end
  if value == 5 then
    return "Mmt Market Mechanism: Periodic Auctionequal Uncrossing (5)"
  end
  if value == 6 then
    return "Mmt Market Mechanism: Requestfor Quotes (6)"
  end
  if value == 255 then
    return "Mmt Market Mechanism: No Value"
  end

  return "Mmt Market Mechanism: Unknown("..value..")"
end

-- Dissect: Mmt Market Mechanism
dissect.mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = size_of.mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Calculate size of: Full Trade Information Message
size_of.full_trade_information_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.symbol_index

  index = index + size_of.trading_date_time

  index = index + size_of.publication_date_time

  index = index + size_of.trade_type

  index = index + size_of.mifid_instrument_id_type

  index = index + size_of.mifid_instrument_id

  index = index + size_of.mifid_execution_id

  index = index + size_of.mifid_price

  index = index + size_of.mifid_quantity

  index = index + size_of.mifid_price_notation

  index = index + size_of.mifid_currency

  index = index + size_of.mi_fid_qtyin_msrmt_unit_notation

  index = index + size_of.mifid_quantity_measurement_unit

  index = index + size_of.mi_fid_notional_amount

  index = index + size_of.notional_currency

  index = index + size_of.mi_fid_clearing_flag

  index = index + size_of.mmt_market_mechanism

  index = index + size_of.mmt_trading_mode

  index = index + size_of.mmt_transaction_category

  index = index + size_of.mmt_negotiation_indicator

  index = index + size_of.mmt_agency_cross_trade_indicator

  index = index + size_of.mmt_modification_indicator

  index = index + size_of.mmt_benchmark_indicator

  index = index + size_of.mmt_special_dividend_indicator

  index = index + size_of.mmt_off_book_automated_indicator

  index = index + size_of.mmt_contributionto_price

  index = index + size_of.mmt_algorithmic_indicator

  index = index + size_of.mmt_publication_mode

  index = index + size_of.mmt_post_trade_deferral

  index = index + size_of.mmt_duplicative_indicator

  index = index + size_of.trade_qualifier

  index = index + size_of.transaction_type

  index = index + size_of.effective_date_indicator

  index = index + size_of.block_trade_code

  index = index + size_of.trade_reference

  index = index + size_of.original_report_timestamp

  index = index + size_of.transparency_indicator

  index = index + size_of.currency_coefficient

  index = index + size_of.price_multiplier

  index = index + size_of.price_multiplier_decimals

  index = index + size_of.venue

  index = index + size_of.start_time_vwap

  index = index + size_of.end_time_vwap

  index = index + size_of.mi_fid_emission_allowance_type

  index = index + size_of.market_of_reference_mic

  index = index + size_of.evaluated_price

  index = index + size_of.message_price_notation

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: Full Trade Information Message
display.full_trade_information_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Trade Information Message
dissect.full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 43 values
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String Nullable
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String Nullable
  index, mifid_price = dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = dissect.mifid_currency(buffer, index, packet, parent)

  -- Mi Fid Qtyin Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mi_fid_qtyin_msrmt_unit_notation = dissect.mi_fid_qtyin_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mi Fid Notional Amount: 20 Byte Ascii String Nullable
  index, mi_fid_notional_amount = dissect.mi_fid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Mi Fid Clearing Flag: 5 Byte Ascii String Nullable
  index, mi_fid_clearing_flag = dissect.mi_fid_clearing_flag(buffer, index, packet, parent)

  -- Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, mmt_market_mechanism = dissect.mmt_market_mechanism(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String Enum with 12 values
  index, mmt_trading_mode = dissect.mmt_trading_mode(buffer, index, packet, parent)

  -- Mmt Transaction Category: 4 Byte Ascii String Nullable
  index, mmt_transaction_category = dissect.mmt_transaction_category(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: 4 Byte Ascii String Nullable
  index, mmt_negotiation_indicator = dissect.mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String Nullable
  index, mmt_agency_cross_trade_indicator = dissect.mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String Nullable
  index, mmt_modification_indicator = dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String Nullable
  index, mmt_benchmark_indicator = dissect.mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String Nullable
  index, mmt_special_dividend_indicator = dissect.mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, mmt_off_book_automated_indicator = dissect.mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Mmt Contributionto Price: 4 Byte Ascii String Nullable
  index, mmt_contributionto_price = dissect.mmt_contributionto_price(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: 4 Byte Ascii String Nullable
  index, mmt_algorithmic_indicator = dissect.mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Mmt Publication Mode: 4 Byte Ascii String Nullable
  index, mmt_publication_mode = dissect.mmt_publication_mode(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral: 4 Byte Ascii String Nullable
  index, mmt_post_trade_deferral = dissect.mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Mmt Duplicative Indicator: 4 Byte Ascii String Nullable
  index, mmt_duplicative_indicator = dissect.mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = dissect.trade_qualifier(buffer, index, packet, parent)

  -- Transaction Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, transaction_type = dissect.transaction_type(buffer, index, packet, parent)

  -- Effective Date Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, effective_date_indicator = dissect.effective_date_indicator(buffer, index, packet, parent)

  -- Block Trade Code: 1 Byte Ascii String Enum with 4 values
  index, block_trade_code = dissect.block_trade_code(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Transparency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, transparency_indicator = dissect.transparency_indicator(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = dissect.currency_coefficient(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = dissect.venue(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Mi Fid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mi_fid_emission_allowance_type = dissect.mi_fid_emission_allowance_type(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = dissect.evaluated_price(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Trade Information Message
dissect.full_trade_information_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_trade_information_message then
    local length = size_of.full_trade_information_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.full_trade_information_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.full_trade_information_message, range, display)
  end

  return dissect.full_trade_information_message_fields(buffer, offset, packet, parent)
end

-- Size: Imbalance Qty Side
size_of.imbalance_qty_side = 1

-- Display: Imbalance Qty Side
display.imbalance_qty_side = function(value)
  if value == 0 then
    return "Imbalance Qty Side: Noimbalance (0)"
  end
  if value == 1 then
    return "Imbalance Qty Side: Buy (1)"
  end
  if value == 2 then
    return "Imbalance Qty Side: Sell (2)"
  end
  if value == 255 then
    return "Imbalance Qty Side: No Value"
  end

  return "Imbalance Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Qty Side
dissect.imbalance_qty_side = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_qty_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.imbalance_qty_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.imbalance_qty_side, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty
size_of.imbalance_qty = 8

-- Display: Imbalance Qty
display.imbalance_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Dissect: Imbalance Qty
dissect.imbalance_qty = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 8

-- Display: Quantity
display.quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity: No Value"
  end

  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Price Type
size_of.price_type = 1

-- Display: Price Type
display.price_type = function(value)
  if value == 2 then
    return "Price Type: Official Daily (2)"
  end
  if value == 4 then
    return "Price Type: Official Market Close (4)"
  end
  if value == 6 then
    return "Price Type: Official Expiry (6)"
  end
  if value == 7 then
    return "Price Type: Provisional Intraday (7)"
  end
  if value == 8 then
    return "Price Type: Official Intraday (8)"
  end
  if value == 9 then
    return "Price Type: Official Ydsp (9)"
  end
  if value == 10 then
    return "Price Type: Na Vfortheinstrumentseligibletothe Nav Trading Facility (10)"
  end
  if value == 12 then
    return "Price Type: Adjusted Closing Price (12)"
  end
  if value == 13 then
    return "Price Type: Subscription Price (13)"
  end
  if value == 14 then
    return "Price Type: Indicative Matching Price (14)"
  end
  if value == 19 then
    return "Price Type: Min Price Outof Session Trades (19)"
  end
  if value == 20 then
    return "Price Type: Max Price Outof Session Trades (20)"
  end
  if value == 21 then
    return "Price Type: Min Price Outof Session Block Trades (21)"
  end
  if value == 22 then
    return "Price Type: Max Price Outof Session Block Trades (22)"
  end
  if value == 23 then
    return "Price Type: Valuation Price (23)"
  end
  if value == 24 then
    return "Price Type: Fund Subscription (24)"
  end
  if value == 25 then
    return "Price Type: Fund Redemption (25)"
  end
  if value == 26 then
    return "Price Type: Uncrossing Price (26)"
  end
  if value == 27 then
    return "Price Type: Last Traded Price (27)"
  end
  if value == 28 then
    return "Price Type: Aip (28)"
  end
  if value == 30 then
    return "Price Type: Net Asset Value (30)"
  end
  if value == 31 then
    return "Price Type: External Reference Price (31)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
dissect.price_type = function(buffer, offset, packet, parent)
  local length = size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Prices Group
size_of.prices_group = function(buffer, offset)
  local index = 0

  index = index + size_of.price_type

  index = index + size_of.symbol_index

  index = index + size_of.price

  index = index + size_of.quantity

  index = index + size_of.imbalance_qty

  index = index + size_of.imbalance_qty_side

  return index
end

-- Display: Prices Group
display.prices_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prices Group
dissect.prices_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, price_type = dissect.price_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_qty = dissect.imbalance_qty(buffer, index, packet, parent)

  -- Imbalance Qty Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, imbalance_qty_side = dissect.imbalance_qty_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Prices Group
dissect.prices_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.prices_group then
    local length = size_of.prices_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.prices_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.prices_group, range, display)
  end

  return dissect.prices_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Prices Groups
size_of.prices_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local prices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + prices_group_count * 30

  return index
end

-- Display: Prices Groups
display.prices_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prices Groups
dissect.prices_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Prices Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.prices_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Prices Groups
dissect.prices_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.prices_groups then
    local length = size_of.prices_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.prices_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.prices_groups, range, display)
  end

  return dissect.prices_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Price Update Message
size_of.price_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.prices_groups(buffer, offset + index)

  return index
end

-- Display: Price Update Message
display.price_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Update Message
dissect.price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Prices Groups: Struct of 2 fields
  index, prices_groups = dissect.prices_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
dissect.price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.price_update_message then
    local length = size_of.price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.price_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.price_update_message, range, display)
  end

  return dissect.price_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Peg Offset
size_of.peg_offset = 1

-- Display: Peg Offset
display.peg_offset = function(value)
  -- Check if field has value
  if value == 128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
size_of.order_quantity = 8

-- Display: Order Quantity
display.order_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Quantity: No Value"
  end

  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = size_of.order_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  if value == 1 then
    return "Order Side: Buy (1)"
  end
  if value == 2 then
    return "Order Side: Sell (2)"
  end
  if value == 3 then
    return "Order Side: Cross (3)"
  end
  if value == 255 then
    return "Order Side: No Value"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Order Px
size_of.order_px = 8

-- Display: Order Px
display.order_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

  return "Order Px: "..value
end

-- Dissect: Order Px
dissect.order_px = function(buffer, offset, packet, parent)
  local length = size_of.order_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.order_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_px, range, value, display)

  return offset + length, value
end

-- Size: Order Type
size_of.order_type = 1

-- Display: Order Type
display.order_type = function(value)
  if value == 1 then
    return "Order Type: Market (1)"
  end
  if value == 2 then
    return "Order Type: Limit (2)"
  end
  if value == 3 then
    return "Order Type: Stopmarketor Stopmarketonquote (3)"
  end
  if value == 4 then
    return "Order Type: Stoplimitor Stoplimitonquote (4)"
  end
  if value == 5 then
    return "Order Type: Primary Peg (5)"
  end
  if value == 6 then
    return "Order Type: Markettolimit (6)"
  end
  if value == 7 then
    return "Order Type: Market Peg (7)"
  end
  if value == 8 then
    return "Order Type: Mid Point Peg (8)"
  end
  if value == 9 then
    return "Order Type: Average Price (9)"
  end
  if value == 10 then
    return "Order Type: Iceberg (10)"
  end
  if value == 255 then
    return "Order Type: No Value"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
dissect.order_type = function(buffer, offset, packet, parent)
  local length = size_of.order_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Previous Priority
size_of.previous_priority = 8

-- Display: Previous Priority
display.previous_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Previous Priority: No Value"
  end

  return "Previous Priority: "..value
end

-- Dissect: Previous Priority
dissect.previous_priority = function(buffer, offset, packet, parent)
  local length = size_of.previous_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.previous_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.previous_priority, range, value, display)

  return offset + length, value
end

-- Size: Order Priority
size_of.order_priority = 8

-- Display: Order Priority
display.order_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
dissect.order_priority = function(buffer, offset, packet, parent)
  local length = size_of.order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Size: Action Type
size_of.action_type = 1

-- Display: Action Type
display.action_type = function(value)
  if value == 1 then
    return "Action Type: New Order (1)"
  end
  if value == 2 then
    return "Action Type: Deletion Of Identified Order (2)"
  end
  if value == 3 then
    return "Action Type: Deletion Of All Orders By Side (3)"
  end
  if value == 4 then
    return "Action Type: Modification Of Existing Order Without Loss Of Priority (4)"
  end
  if value == 5 then
    return "Action Type: Retransmission Of All Orders (5)"
  end
  if value == 6 then
    return "Action Type: Modification Of Existing Order With Loss Of Priority (6)"
  end
  if value == 7 then
    return "Action Type: Rfq Answercreation (7)"
  end
  if value == 8 then
    return "Action Type: Rfq Answerdeletion (8)"
  end

  return "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
dissect.action_type = function(buffer, offset, packet, parent)
  local length = size_of.action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.action_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.action_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Orders Group
size_of.orders_group = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol_index

  index = index + size_of.action_type

  index = index + size_of.order_priority

  index = index + size_of.previous_priority

  index = index + size_of.order_type

  index = index + size_of.order_px

  index = index + size_of.order_side

  index = index + size_of.order_quantity

  index = index + size_of.peg_offset

  return index
end

-- Display: Orders Group
display.orders_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Orders Group
dissect.orders_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, action_type = dissect.action_type(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = dissect.order_priority(buffer, index, packet, parent)

  -- Previous Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, previous_priority = dissect.previous_priority(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = dissect.order_quantity(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = dissect.peg_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Group
dissect.orders_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.orders_group then
    local length = size_of.orders_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.orders_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.orders_group, range, display)
  end

  return dissect.orders_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Orders Groups
size_of.orders_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + orders_group_count * 40

  return index
end

-- Display: Orders Groups
display.orders_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Orders Groups
dissect.orders_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Orders Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.orders_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Orders Groups
dissect.orders_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.orders_groups then
    local length = size_of.orders_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.orders_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.orders_groups, range, display)
  end

  return dissect.orders_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Update Message
size_of.order_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Update Message
display.order_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Update Message
dissect.order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = dissect.orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
dissect.order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_update_message then
    local length = size_of.order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.order_update_message, range, display)
  end

  return dissect.order_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Orders
size_of.number_of_orders = 2

-- Display: Number Of Orders
display.number_of_orders = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
dissect.number_of_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Size: Update Type
size_of.update_type = 1

-- Display: Update Type
display.update_type = function(value)
  if value == 1 then
    return "Update Type: Best Bid (1)"
  end
  if value == 2 then
    return "Update Type: Best Offer (2)"
  end
  if value == 3 then
    return "Update Type: New Bid (3)"
  end
  if value == 4 then
    return "Update Type: New Offer (4)"
  end
  if value == 5 then
    return "Update Type: Updated Bid (5)"
  end
  if value == 6 then
    return "Update Type: Updated Offer (6)"
  end
  if value == 7 then
    return "Update Type: Total Traded Volume (7)"
  end
  if value == 8 then
    return "Update Type: Implied Bid (8)"
  end
  if value == 9 then
    return "Update Type: Implied Offer (9)"
  end
  if value == 10 then
    return "Update Type: Requestfor Quote (10)"
  end
  if value == 11 then
    return "Update Type: Requestfor Quote Bid (11)"
  end
  if value == 12 then
    return "Update Type: Requestfor Size (12)"
  end
  if value == 13 then
    return "Update Type: Requestfor Quote Offer (13)"
  end
  if value == 14 then
    return "Update Type: High Dynamic Collar (14)"
  end
  if value == 15 then
    return "Update Type: Low Dynamic Collar (15)"
  end
  if value == 16 then
    return "Update Type: New Bid Rlp (16)"
  end
  if value == 17 then
    return "Update Type: New Offer Rlp (17)"
  end
  if value == 18 then
    return "Update Type: Updated Bid Rlp (18)"
  end
  if value == 19 then
    return "Update Type: Updated Offer Rlp (19)"
  end
  if value == 24 then
    return "Update Type: Conventional Trade (24)"
  end
  if value == 25 then
    return "Update Type: Requestfor Cross Rfc Queued (25)"
  end
  if value == 26 then
    return "Update Type: Requestfor Cross Rfc (26)"
  end
  if value == 27 then
    return "Update Type: Largein Scale Li S Trade (27)"
  end
  if value == 28 then
    return "Update Type: Basis Trade (28)"
  end
  if value == 29 then
    return "Update Type: Largein Scale Li S Package Trade (29)"
  end
  if value == 30 then
    return "Update Type: Guaranteed Cross Trade (30)"
  end
  if value == 31 then
    return "Update Type: Against Actual Trade (31)"
  end
  if value == 32 then
    return "Update Type: Asset Allocation Trade (32)"
  end
  if value == 34 then
    return "Update Type: Exchangefor Swap Trade (34)"
  end
  if value == 35 then
    return "Update Type: Dark Trade (35)"
  end
  if value == 36 then
    return "Update Type: Exchangefor Physical Trade Cash Leg (36)"
  end
  if value == 37 then
    return "Update Type: Strategy Leg Conventional Trade (37)"
  end
  if value == 38 then
    return "Update Type: Strategy Leg Largein Scale Li S Trade (38)"
  end
  if value == 39 then
    return "Update Type: Strategy Leg Basis Trade (39)"
  end
  if value == 40 then
    return "Update Type: Strategy Leg Guaranteed Cross Trade (40)"
  end
  if value == 41 then
    return "Update Type: Strategy Leg Against Actual Trade (41)"
  end
  if value == 42 then
    return "Update Type: Strategy Leg Asset Allocation Trade (42)"
  end
  if value == 44 then
    return "Update Type: Strategy Leg Exchange For Swap Trade (44)"
  end
  if value == 45 then
    return "Update Type: Strategy Leg Exchange For Physical Trade (45)"
  end
  if value == 46 then
    return "Update Type: Bo B Trade (46)"
  end
  if value == 48 then
    return "Update Type: Atom X Trade (48)"
  end
  if value == 50 then
    return "Update Type: Trade Cancellation (50)"
  end
  if value == 51 then
    return "Update Type: Outof Market Trade (51)"
  end
  if value == 52 then
    return "Update Type: Delta Neutral Trade Underlying Cash Leg (52)"
  end
  if value == 53 then
    return "Update Type: Delta Neutral Trade Underlying Future Leg (53)"
  end
  if value == 54 then
    return "Update Type: Euronext Fund Service Trade (54)"
  end
  if value == 55 then
    return "Update Type: Secondary Listing Trade (55)"
  end
  if value == 56 then
    return "Update Type: Requestfor Cross Trade (56)"
  end
  if value == 57 then
    return "Update Type: Requestfor Cross Strategy Leg Trade (57)"
  end
  if value == 58 then
    return "Update Type: New Bid With Liquidity Provider (58)"
  end
  if value == 59 then
    return "Update Type: New Offer With Liquidity Provider (59)"
  end
  if value == 60 then
    return "Update Type: Updated Bid With Liquidity Provider (60)"
  end
  if value == 61 then
    return "Update Type: Updated Offer With Liquidity Provider (61)"
  end
  if value == 63 then
    return "Update Type: Low Static Collar (63)"
  end
  if value == 64 then
    return "Update Type: High Static Collar (64)"
  end
  if value == 65 then
    return "Update Type: Market Vwap Operation Trade (65)"
  end
  if value == 66 then
    return "Update Type: Requestfor Size Bid (66)"
  end
  if value == 67 then
    return "Update Type: Requestfor Size Offer (67)"
  end
  if value == 70 then
    return "Update Type: Low Lp Collar (70)"
  end
  if value == 71 then
    return "Update Type: High Lp Collar (71)"
  end
  if value == 72 then
    return "Update Type: Etfmtfnav Tradepriceinbp (72)"
  end
  if value == 73 then
    return "Update Type: Etfmtfnav Dark Tradepriceinbp (73)"
  end
  if value == 74 then
    return "Update Type: New Bidon Wholesale Rfc (74)"
  end
  if value == 75 then
    return "Update Type: New Offeron Wholesale Rfc (75)"
  end
  if value == 76 then
    return "Update Type: Updated Bidon Wholesale Rfc (76)"
  end
  if value == 77 then
    return "Update Type: Updated Offeron Wholesale Rfc (77)"
  end
  if value == 78 then
    return "Update Type: Clear Wholesale Rfc (78)"
  end
  if value == 79 then
    return "Update Type: Guaranteed Cross Negotiateddeal Nliq (79)"
  end
  if value == 80 then
    return "Update Type: Guaranteed Cross Negotiateddeal Oilq (80)"
  end
  if value == 81 then
    return "Update Type: Largein Scale Trade (81)"
  end
  if value == 82 then
    return "Update Type: Largein Scale Tradeinbasispoints (82)"
  end
  if value == 83 then
    return "Update Type: Largein Scale Package Tradeinbasispoints (83)"
  end
  if value == 84 then
    return "Update Type: Strategy Leg Largein Scale Tradeinbasispoints (84)"
  end
  if value == 86 then
    return "Update Type: New Bid Rfq Answer (86)"
  end
  if value == 87 then
    return "Update Type: New Offer Rfq Answer (87)"
  end
  if value == 88 then
    return "Update Type: Updated Bid Rfq Answer (88)"
  end
  if value == 89 then
    return "Update Type: Updated Offer Rfq Answer (89)"
  end
  if value == 90 then
    return "Update Type: Bid Execution Summary (90)"
  end
  if value == 91 then
    return "Update Type: Aqs Expansion Factor (91)"
  end
  if value == 92 then
    return "Update Type: Collars Expansion Factor (92)"
  end
  if value == 93 then
    return "Update Type: Collars Enabled (93)"
  end
  if value == 94 then
    return "Update Type: Collars Disabled (94)"
  end
  if value == 95 then
    return "Update Type: Dcrp Inter Month Spread (95)"
  end
  if value == 96 then
    return "Update Type: Fsp Reference Price (96)"
  end
  if value == 97 then
    return "Update Type: Offer Execution Summary (97)"
  end
  if value == 98 then
    return "Update Type: Fsp Triggered (98)"
  end
  if value == 99 then
    return "Update Type: Mid Point Bbo (99)"
  end
  if value == 100 then
    return "Update Type: Conventional Trade Provisionalprice (100)"
  end
  if value == 254 then
    return "Update Type: Clear Book (254)"
  end

  return "Update Type: Unknown("..value..")"
end

-- Dissect: Update Type
dissect.update_type = function(buffer, offset, packet, parent)
  local length = size_of.update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.update_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Updates Group
size_of.updates_group = function(buffer, offset)
  local index = 0

  index = index + size_of.update_type

  index = index + size_of.symbol_index

  index = index + size_of.number_of_orders

  index = index + size_of.price

  index = index + size_of.quantity

  return index
end

-- Display: Updates Group
display.updates_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Updates Group
dissect.updates_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 89 values
  index, update_type = dissect.update_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Number Of Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_orders = dissect.number_of_orders(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Updates Group
dissect.updates_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.updates_group then
    local length = size_of.updates_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.updates_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.updates_group, range, display)
  end

  return dissect.updates_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Updates Groups
size_of.updates_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local updates_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + updates_group_count * 23

  return index
end

-- Display: Updates Groups
display.updates_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Updates Groups
dissect.updates_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Updates Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.updates_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Updates Groups
dissect.updates_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.updates_groups then
    local length = size_of.updates_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.updates_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.updates_groups, range, display)
  end

  return dissect.updates_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Update Message
size_of.market_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  index = index + size_of.updates_groups(buffer, offset + index)

  return index
end

-- Display: Market Update Message
display.market_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Update Message
dissect.market_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Updates Groups: Struct of 2 fields
  index, updates_groups = dissect.updates_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Update Message
dissect.market_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_update_message then
    local length = size_of.market_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_update_message, range, display)
  end

  return dissect.market_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmission End Time
size_of.retransmission_end_time = 8

-- Display: Retransmission End Time
display.retransmission_end_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission End Time: No Value"
  end

  return "Retransmission End Time: "..value
end

-- Dissect: Retransmission End Time
dissect.retransmission_end_time = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_end_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.retransmission_end_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.retransmission_end_time, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Start Time
size_of.retransmission_start_time = 8

-- Display: Retransmission Start Time
display.retransmission_start_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission Start Time: No Value"
  end

  return "Retransmission Start Time: "..value
end

-- Dissect: Retransmission Start Time
dissect.retransmission_start_time = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_start_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.retransmission_start_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.retransmission_start_time, range, value, display)

  return offset + length, value
end

-- Size: Technical Notification Type
size_of.technical_notification_type = 1

-- Display: Technical Notification Type
display.technical_notification_type = function(value)
  if value == 1 then
    return "Technical Notification Type: Instrument Book Retransmission End (1)"
  end
  if value == 10 then
    return "Technical Notification Type: Trade Retransmission Start (10)"
  end
  if value == 11 then
    return "Technical Notification Type: Trade Retransmission End (11)"
  end

  return "Technical Notification Type: Unknown("..value..")"
end

-- Dissect: Technical Notification Type
dissect.technical_notification_type = function(buffer, offset, packet, parent)
  local length = size_of.technical_notification_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.technical_notification_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.technical_notification_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Technical Notification Message
size_of.technical_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.technical_notification_type

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.retransmission_start_time

  index = index + size_of.retransmission_end_time

  index = index + size_of.symbol_index

  return index
end

-- Display: Technical Notification Message
display.technical_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Technical Notification Message
dissect.technical_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Technical Notification Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, technical_notification_type = dissect.technical_notification_type(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Retransmission Start Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_start_time = dissect.retransmission_start_time(buffer, index, packet, parent)

  -- Retransmission End Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_end_time = dissect.retransmission_end_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Notification Message
dissect.technical_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.technical_notification_message then
    local length = size_of.technical_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.technical_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.technical_notification_message, range, display)
  end

  return dissect.technical_notification_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Health Status Message
size_of.health_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.event_time

  return index
end

-- Display: Health Status Message
display.health_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Health Status Message
dissect.health_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Health Status Message
dissect.health_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.health_status_message then
    local length = size_of.health_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.health_status_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.health_status_message, range, display)
  end

  return dissect.health_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Session Trading Day
size_of.session_trading_day = 2

-- Display: Session Trading Day
display.session_trading_day = function(value)
  return "Session Trading Day: "..value
end

-- Dissect: Session Trading Day
dissect.session_trading_day = function(buffer, offset, packet, parent)
  local length = size_of.session_trading_day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_trading_day(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.session_trading_day, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Day Message
size_of.end_of_day_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.session_trading_day

  return index
end

-- Display: End Of Day Message
display.end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Message
dissect.end_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = dissect.session_trading_day(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
dissect.end_of_day_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local length = size_of.end_of_day_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.end_of_day_message, range, display)
  end

  return dissect.end_of_day_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Start Of Day Message
size_of.start_of_day_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.session_trading_day

  return index
end

-- Display: Start Of Day Message
display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
dissect.start_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = dissect.session_trading_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
dissect.start_of_day_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local length = size_of.start_of_day_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.start_of_day_message, range, display)
  end

  return dissect.start_of_day_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Start Of Day Message
  if template_id == 1101 then
    return size_of.start_of_day_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if template_id == 1102 then
    return size_of.end_of_day_message(buffer, offset)
  end
  -- Size of Health Status Message
  if template_id == 1103 then
    return size_of.health_status_message(buffer, offset)
  end
  -- Size of Technical Notification Message
  if template_id == 1106 then
    return size_of.technical_notification_message(buffer, offset)
  end
  -- Size of Market Update Message
  if template_id == 1001 then
    return size_of.market_update_message(buffer, offset)
  end
  -- Size of Order Update Message
  if template_id == 1002 then
    return size_of.order_update_message(buffer, offset)
  end
  -- Size of Price Update Message
  if template_id == 1003 then
    return size_of.price_update_message(buffer, offset)
  end
  -- Size of Full Trade Information Message
  if template_id == 1004 then
    return size_of.full_trade_information_message(buffer, offset)
  end
  -- Size of Market Status Change Message
  if template_id == 1005 then
    return size_of.market_status_change_message(buffer, offset)
  end
  -- Size of Timetable Message
  if template_id == 1006 then
    return size_of.timetable_message(buffer, offset)
  end
  -- Size of Standing Data Message
  if template_id == 1007 then
    return size_of.standing_data_message(buffer, offset)
  end
  -- Size of Real Time Index Message
  if template_id == 1008 then
    return size_of.real_time_index_message(buffer, offset)
  end
  -- Size of Statistics Message
  if template_id == 1009 then
    return size_of.statistics_message(buffer, offset)
  end
  -- Size of Index Summary Message
  if template_id == 1011 then
    return size_of.index_summary_message(buffer, offset)
  end
  -- Size of Strategy Standing Data Message
  if template_id == 1012 then
    return size_of.strategy_standing_data_message(buffer, offset)
  end
  -- Size of Contract Standing Data Message
  if template_id == 1013 then
    return size_of.contract_standing_data_message(buffer, offset)
  end
  -- Size of Outright Standing Data Message
  if template_id == 1014 then
    return size_of.outright_standing_data_message(buffer, offset)
  end
  -- Size of Lis Package Structure Message
  if template_id == 1016 then
    return size_of.lis_package_structure_message(buffer, offset)
  end
  -- Size of Apa Quotes Message
  if template_id == 1026 then
    return size_of.apa_quotes_message(buffer, offset)
  end
  -- Size of Apa Standing Data Message
  if template_id == 1027 then
    return size_of.apa_standing_data_message(buffer, offset)
  end
  -- Size of Apa Full Trade Information Message
  if template_id == 1028 then
    return size_of.apa_full_trade_information_message(buffer, offset)
  end
  -- Size of Start Of Snapshot Message
  if template_id == 2101 then
    return size_of.start_of_snapshot_message(buffer, offset)
  end
  -- Size of End Of Snapshot Message
  if template_id == 2102 then
    return size_of.end_of_snapshot_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Start Of Day Message
  if template_id == 1101 then
    return dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if template_id == 1102 then
    return dissect.end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Health Status Message
  if template_id == 1103 then
    return dissect.health_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Technical Notification Message
  if template_id == 1106 then
    return dissect.technical_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Update Message
  if template_id == 1001 then
    return dissect.market_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if template_id == 1002 then
    return dissect.order_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Update Message
  if template_id == 1003 then
    return dissect.price_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Full Trade Information Message
  if template_id == 1004 then
    return dissect.full_trade_information_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Change Message
  if template_id == 1005 then
    return dissect.market_status_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Timetable Message
  if template_id == 1006 then
    return dissect.timetable_message(buffer, offset, packet, parent)
  end
  -- Dissect Standing Data Message
  if template_id == 1007 then
    return dissect.standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Real Time Index Message
  if template_id == 1008 then
    return dissect.real_time_index_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if template_id == 1009 then
    return dissect.statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if template_id == 1011 then
    return dissect.index_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Standing Data Message
  if template_id == 1012 then
    return dissect.strategy_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Contract Standing Data Message
  if template_id == 1013 then
    return dissect.contract_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Standing Data Message
  if template_id == 1014 then
    return dissect.outright_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Lis Package Structure Message
  if template_id == 1016 then
    return dissect.lis_package_structure_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Quotes Message
  if template_id == 1026 then
    return dissect.apa_quotes_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Standing Data Message
  if template_id == 1027 then
    return dissect.apa_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Full Trade Information Message
  if template_id == 1028 then
    return dissect.apa_full_trade_information_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Snapshot Message
  if template_id == 2101 then
    return dissect.start_of_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 2102 then
    return dissect.end_of_snapshot_message(buffer, offset, packet, parent)
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
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.payload, range, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.version, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 1101 then
    return "Template Id: Start Of Day Message (1101)"
  end
  if value == 1102 then
    return "Template Id: End Of Day Message (1102)"
  end
  if value == 1103 then
    return "Template Id: Health Status Message (1103)"
  end
  if value == 1106 then
    return "Template Id: Technical Notification Message (1106)"
  end
  if value == 1001 then
    return "Template Id: Market Update Message (1001)"
  end
  if value == 1002 then
    return "Template Id: Order Update Message (1002)"
  end
  if value == 1003 then
    return "Template Id: Price Update Message (1003)"
  end
  if value == 1004 then
    return "Template Id: Full Trade Information Message (1004)"
  end
  if value == 1005 then
    return "Template Id: Market Status Change Message (1005)"
  end
  if value == 1006 then
    return "Template Id: Timetable Message (1006)"
  end
  if value == 1007 then
    return "Template Id: Standing Data Message (1007)"
  end
  if value == 1008 then
    return "Template Id: Real Time Index Message (1008)"
  end
  if value == 1009 then
    return "Template Id: Statistics Message (1009)"
  end
  if value == 1011 then
    return "Template Id: Index Summary Message (1011)"
  end
  if value == 1012 then
    return "Template Id: Strategy Standing Data Message (1012)"
  end
  if value == 1013 then
    return "Template Id: Contract Standing Data Message (1013)"
  end
  if value == 1014 then
    return "Template Id: Outright Standing Data Message (1014)"
  end
  if value == 1016 then
    return "Template Id: Lis Package Structure Message (1016)"
  end
  if value == 1026 then
    return "Template Id: Apa Quotes Message (1026)"
  end
  if value == 1027 then
    return "Template Id: Apa Standing Data Message (1027)"
  end
  if value == 1028 then
    return "Template Id: Apa Full Trade Information Message (1028)"
  end
  if value == 2101 then
    return "Template Id: Start Of Snapshot Message (2101)"
  end
  if value == 2102 then
    return "Template Id: End Of Snapshot Message (2102)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length uint 16
size_of.block_length_uint_16 = 2

-- Display: Block Length uint 16
display.block_length_uint_16 = function(value)
  return "Block Length uint 16: "..value
end

-- Dissect: Block Length uint 16
dissect.block_length_uint_16 = function(buffer, offset, packet, parent)
  local length = size_of.block_length_uint_16
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length_uint_16(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.block_length_uint_16, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length_uint_16

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

  -- Block Length uint 16: 2 Byte Unsigned Fixed Width Integer
  index, block_length_uint_16 = dissect.block_length_uint_16(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 23 values
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Frame
size_of.frame = 2

-- Display: Frame
display.frame = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
dissect.frame = function(buffer, offset, packet, parent)
  local length = size_of.frame
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.frame(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.frame

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = dissect.frame(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 23 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
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

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
size_of.packet_flags = 2

-- Display: Packet Flags
display.packet_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Has Status Message flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Has Status Message|"
  end
  -- Is Has End Of Day Snapshot flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Has End Of Day Snapshot|"
  end
  -- Is Has Start Of Day Snapshot flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Has Start Of Day Snapshot|"
  end
  -- Is Compression flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Compression|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flags
dissect.packet_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Bits: 6 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.reserved_bits, buffer(offset, 2))

  -- Has Status Message: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_status_message, buffer(offset, 2))

  -- Has End Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_end_of_day_snapshot, buffer(offset, 2))

  -- Has Start Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.has_start_of_day_snapshot, buffer(offset, 2))

  -- Psn High Weight: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.psn_high_weight, buffer(offset, 2))

  -- Mdg Restart Count: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.mdg_restart_count, buffer(offset, 2))

  -- Compression: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.compression, buffer(offset, 2))
end

-- Dissect: Packet Flags
dissect.packet_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.packet_flags(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_flags, range, display)

  if show.packet_flags then
    dissect.packet_flags_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Packet Sequence Number
size_of.packet_sequence_number = 4

-- Display: Packet Sequence Number
display.packet_sequence_number = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
dissect.packet_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.packet_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_sequence_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Time
size_of.packet_time = 8

-- Display: Packet Time
display.packet_time = function(value)
  return "Packet Time: "..value
end

-- Dissect: Packet Time
dissect.packet_time = function(buffer, offset, packet, parent)
  local length = size_of.packet_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.packet_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.packet_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Data Packet Header
size_of.market_data_packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.packet_time

  index = index + size_of.packet_sequence_number

  index = index + size_of.packet_flags

  index = index + size_of.channel_id

  return index
end

-- Display: Market Data Packet Header
display.market_data_packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Data Packet Header
dissect.market_data_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Time: 8 Byte Unsigned Fixed Width Integer
  index, packet_time = dissect.packet_time(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = dissect.packet_sequence_number(buffer, index, packet, parent)

  -- Packet Flags: Struct of 7 fields
  index, packet_flags = dissect.packet_flags(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
dissect.market_data_packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_data_packet_header then
    local length = size_of.market_data_packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_data_packet_header(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1.fields.market_data_packet_header, range, display)
  end

  return dissect.market_data_packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = dissect.market_data_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function euronext_optiq_marketdatagateway_sbe_v3_1.init()
end

-- Dissector for Euronext Optiq MarketDataGateway Sbe 3.1
function euronext_optiq_marketdatagateway_sbe_v3_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = euronext_optiq_marketdatagateway_sbe_v3_1.name

  -- Dissect protocol
  local protocol = parent:add(euronext_optiq_marketdatagateway_sbe_v3_1, buffer(), euronext_optiq_marketdatagateway_sbe_v3_1.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, euronext_optiq_marketdatagateway_sbe_v3_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.euronext_optiq_marketdatagateway_sbe_v3_1_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 217 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq MarketDataGateway Sbe 3.1
local function euronext_optiq_marketdatagateway_sbe_v3_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.euronext_optiq_marketdatagateway_sbe_v3_1_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = euronext_optiq_marketdatagateway_sbe_v3_1
  euronext_optiq_marketdatagateway_sbe_v3_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq MarketDataGateway Sbe 3.1
euronext_optiq_marketdatagateway_sbe_v3_1:register_heuristic("udp", euronext_optiq_marketdatagateway_sbe_v3_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 3.1
--   Date: Tuesday, March 3, 2020
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
