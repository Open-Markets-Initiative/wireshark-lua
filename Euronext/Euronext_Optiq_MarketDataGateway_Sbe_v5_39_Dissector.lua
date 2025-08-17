-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.39 Protocol
local euronext_optiq_marketdatagateway_sbe_v5_39 = Proto("Euronext.Optiq.MarketDataGateway.Sbe.v5.39.Lua", "Euronext Optiq MarketDataGateway Sbe 5.39")

-- Component Tables
local show = {}
local format = {}
local euronext_optiq_marketdatagateway_sbe_v5_39_display = {}
local euronext_optiq_marketdatagateway_sbe_v5_39_dissect = {}
local euronext_optiq_marketdatagateway_sbe_v5_39_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.39 Fields
euronext_optiq_marketdatagateway_sbe_v5_39.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.marketdatagateway.sbe.v5.39.actiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.marketdatagateway.sbe.v5.39.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.amount_decimals = ProtoField.new("Amount Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.amountdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.anonymous = ProtoField.new("Anonymous", "euronext.optiq.marketdatagateway.sbe.v5.39.anonymous", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_origin = ProtoField.new("Apa Origin", "euronext.optiq.marketdatagateway.sbe.v5.39.apaorigin", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bid_offer_date_time = ProtoField.new("Bid Offer Date Time", "euronext.optiq.marketdatagateway.sbe.v5.39.bidofferdatetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bid_price = ProtoField.new("Bid Price", "euronext.optiq.marketdatagateway.sbe.v5.39.bidprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.marketdatagateway.sbe.v5.39.blocklength", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_length_short = ProtoField.new("Block Length Short", "euronext.optiq.marketdatagateway.sbe.v5.39.blocklengthshort", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_trade_code = ProtoField.new("Block Trade Code", "euronext.optiq.marketdatagateway.sbe.v5.39.blocktradecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.book_state = ProtoField.new("Book State", "euronext.optiq.marketdatagateway.sbe.v5.39.bookstate", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.box = ProtoField.new("Box", "euronext.optiq.marketdatagateway.sbe.v5.39.box", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000200000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bundle = ProtoField.new("Bundle", "euronext.optiq.marketdatagateway.sbe.v5.39.bundle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000400000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.butterfly = ProtoField.new("Butterfly", "euronext.optiq.marketdatagateway.sbe.v5.39.butterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000002)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.butterfly_versus_underlying = ProtoField.new("Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.butterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000002000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.buy_write = ProtoField.new("Buy Write", "euronext.optiq.marketdatagateway.sbe.v5.39.buywrite", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000040000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.calendar_spread = ProtoField.new("Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.calendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000010)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_bbo_only = ProtoField.new("Call Bbo Only", "euronext.optiq.marketdatagateway.sbe.v5.39.callbboonly", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_cabinet = ProtoField.new("Call Or Put Cabinet", "euronext.optiq.marketdatagateway.sbe.v5.39.callorputcabinet", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000004)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_calendar_spread_versus_underlying = ProtoField.new("Call Or Put Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.callorputcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000010000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_spread_versus_underlying = ProtoField.new("Call Or Put Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.callorputspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000008000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_put_diagonal_calendar_spread_versus_underlying = ProtoField.new("Call Put Diagonal Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.callputdiagonalcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000020000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_spread_versus_put_versus_underlying = ProtoField.new("Call Spread Versus Put Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.callspreadversusputversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000004000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_spread_versus_sell_a_put = ProtoField.new("Call Spread Versus Sell A Put", "euronext.optiq.marketdatagateway.sbe.v5.39.callspreadversussellaput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000200000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.cfi = ProtoField.new("Cfi", "euronext.optiq.marketdatagateway.sbe.v5.39.cfi", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.cfi_optional = ProtoField.new("Cfi Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.cfioptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.change_type = ProtoField.new("Change Type", "euronext.optiq.marketdatagateway.sbe.v5.39.changetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.channel_id = ProtoField.new("Channel Id", "euronext.optiq.marketdatagateway.sbe.v5.39.channelid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_price = ProtoField.new("Closing Price", "euronext.optiq.marketdatagateway.sbe.v5.39.closingprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_reference_level = ProtoField.new("Closing Reference Level", "euronext.optiq.marketdatagateway.sbe.v5.39.closingreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_reference_time = ProtoField.new("Closing Reference Time", "euronext.optiq.marketdatagateway.sbe.v5.39.closingreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_expansion_factor = ProtoField.new("Collar Expansion Factor", "euronext.optiq.marketdatagateway.sbe.v5.39.collarexpansionfactor", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_max_unhalt_nb = ProtoField.new("Collar Max Unhalt Nb", "euronext.optiq.marketdatagateway.sbe.v5.39.collarmaxunhaltnb", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_unhalt_delay = ProtoField.new("Collar Unhalt Delay", "euronext.optiq.marketdatagateway.sbe.v5.39.collarunhaltdelay", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.combo = ProtoField.new("Combo", "euronext.optiq.marketdatagateway.sbe.v5.39.combo", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000200)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.combo_versus_underlying = ProtoField.new("Combo Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.comboversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000200000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.compression = ProtoField.new("Compression", "euronext.optiq.marketdatagateway.sbe.v5.39.compression", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.condor = ProtoField.new("Condor", "euronext.optiq.marketdatagateway.sbe.v5.39.condor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000100000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.condor_versus_underlying = ProtoField.new("Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.condorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000020000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.confirmed_reference_level = ProtoField.new("Confirmed Reference Level", "euronext.optiq.marketdatagateway.sbe.v5.39.confirmedreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.confirmed_reference_time = ProtoField.new("Confirmed Reference Time", "euronext.optiq.marketdatagateway.sbe.v5.39.confirmedreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_group = ProtoField.new("Contract Emm Properties Group", "euronext.optiq.marketdatagateway.sbe.v5.39.contractemmpropertiesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_groups = ProtoField.new("Contract Emm Properties Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.contractemmpropertiesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_event_date = ProtoField.new("Contract Event Date", "euronext.optiq.marketdatagateway.sbe.v5.39.contracteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_name = ProtoField.new("Contract Name", "euronext.optiq.marketdatagateway.sbe.v5.39.contractname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.39.contractsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_trading_type = ProtoField.new("Contract Trading Type", "euronext.optiq.marketdatagateway.sbe.v5.39.contracttradingtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_type = ProtoField.new("Contract Type", "euronext.optiq.marketdatagateway.sbe.v5.39.contracttype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.conversion_reversal = ProtoField.new("Conversion Reversal", "euronext.optiq.marketdatagateway.sbe.v5.39.conversionreversal", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000020000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.country_of_exchange = ProtoField.new("Country Of Exchange", "euronext.optiq.marketdatagateway.sbe.v5.39.countryofexchange", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.country_of_exchange_optional = ProtoField.new("Country Of Exchange Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.countryofexchangeoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.coupon = ProtoField.new("Coupon", "euronext.optiq.marketdatagateway.sbe.v5.39.coupon", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency = ProtoField.new("Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.currency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency_coefficient = ProtoField.new("Currency Coefficient", "euronext.optiq.marketdatagateway.sbe.v5.39.currencycoefficient", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency_optional = ProtoField.new("Currency optional", "euronext.optiq.marketdatagateway.sbe.v5.39.currencyoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_eligibility = ProtoField.new("Dark Eligibility", "euronext.optiq.marketdatagateway.sbe.v5.39.darkeligibility", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_lis_threshold = ProtoField.new("Dark Lis Threshold", "euronext.optiq.marketdatagateway.sbe.v5.39.darklisthreshold", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_min_quantity = ProtoField.new("Dark Min Quantity", "euronext.optiq.marketdatagateway.sbe.v5.39.darkminquantity", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.date_of_initial_listing = ProtoField.new("Date Of Initial Listing", "euronext.optiq.marketdatagateway.sbe.v5.39.dateofinitiallisting", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "euronext.optiq.marketdatagateway.sbe.v5.39.dateoflasttrade", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.days_to_expiry = ProtoField.new("Days To Expiry", "euronext.optiq.marketdatagateway.sbe.v5.39.daystoexpiry", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.marketdatagateway.sbe.v5.39.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.delta = ProtoField.new("Delta", "euronext.optiq.marketdatagateway.sbe.v5.39.delta", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.depositary_list = ProtoField.new("Depositary List", "euronext.optiq.marketdatagateway.sbe.v5.39.depositarylist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_trading_code = ProtoField.new("Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.39.derivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_trading_code_optional = ProtoField.new("Derivatives Instrument Trading Code Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.derivativesinstrumenttradingcodeoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_type = ProtoField.new("Derivatives Instrument Type", "euronext.optiq.marketdatagateway.sbe.v5.39.derivativesinstrumenttype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_market_model = ProtoField.new("Derivatives Market Model", "euronext.optiq.marketdatagateway.sbe.v5.39.derivativesmarketmodel", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_calendar_spread = ProtoField.new("Diagonal Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.diagonalcalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000020)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_straddle_calendar_spread = ProtoField.new("Diagonal Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.diagonalstraddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000008000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_straddle_calendar_spread_versus_underlying = ProtoField.new("Diagonal Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.diagonalstraddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000004000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_currency = ProtoField.new("Dividend Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.dividendcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_payment_date = ProtoField.new("Dividend Payment Date", "euronext.optiq.marketdatagateway.sbe.v5.39.dividendpaymentdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_rate = ProtoField.new("Dividend Rate", "euronext.optiq.marketdatagateway.sbe.v5.39.dividendrate", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_record_date = ProtoField.new("Dividend Record Date", "euronext.optiq.marketdatagateway.sbe.v5.39.dividendrecorddate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.dynamic_collar_logic = ProtoField.new("Dynamic Collar Logic", "euronext.optiq.marketdatagateway.sbe.v5.39.dynamiccollarlogic", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.edsp_tick_size = ProtoField.new("Edsp Tick Size", "euronext.optiq.marketdatagateway.sbe.v5.39.edspticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.effective_date_indicator = ProtoField.new("Effective Date Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.effectivedateindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_agency_cross_trade_indicator = ProtoField.new("Efficient Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_algorithmic_indicator = ProtoField.new("Efficient Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_benchmark_indicator = ProtoField.new("Efficient Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_contributionto_price = ProtoField.new("Efficient Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_duplicative_indicator = ProtoField.new("Efficient Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_market_mechanism = ProtoField.new("Efficient Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_modification_indicator = ProtoField.new("Efficient Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_negotiation_indicator = ProtoField.new("Efficient Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_off_book_automated_indicator = ProtoField.new("Efficient Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_post_trade_deferral = ProtoField.new("Efficient Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_publication_mode = ProtoField.new("Efficient Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_special_dividend_indicator = ProtoField.new("Efficient Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_trading_mode = ProtoField.new("Efficient Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_transaction_category = ProtoField.new("Efficient Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v5.39.efficientmmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_group = ProtoField.new("Em M Pattern Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.39.emmpatternrepgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_groups = ProtoField.new("Em M Pattern Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.emmpatternrepgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.emm = ProtoField.new("Emm", "euronext.optiq.marketdatagateway.sbe.v5.39.emm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.emm_optional = ProtoField.new("Emm Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.emmoptional", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.marketdatagateway.sbe.v5.39.endtimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.marketdatagateway.sbe.v5.39.evaluatedprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.event_time = ProtoField.new("Event Time", "euronext.optiq.marketdatagateway.sbe.v5.39.eventtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.event_time_optional = ProtoField.new("Event Time Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.eventtimeoptional", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ex_dividend_date = ProtoField.new("Ex Dividend Date", "euronext.optiq.marketdatagateway.sbe.v5.39.exdividenddate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.exceptional_market_conditions = ProtoField.new("Exceptional Market Conditions", "euronext.optiq.marketdatagateway.sbe.v5.39.exceptionalmarketconditions", ftypes.UINT16, nil, base.DEC, 0x0180)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.exchange_code = ProtoField.new("Exchange Code", "euronext.optiq.marketdatagateway.sbe.v5.39.exchangecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.exchange_for_physical = ProtoField.new("Exchange For Physical", "euronext.optiq.marketdatagateway.sbe.v5.39.exchangeforphysical", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000800000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.execution_prevention_across_all_firms = ProtoField.new("Execution Prevention Across All Firms", "euronext.optiq.marketdatagateway.sbe.v5.39.executionpreventionacrossallfirms", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.exer_style = ProtoField.new("Exer Style", "euronext.optiq.marketdatagateway.sbe.v5.39.exerstyle", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiration_date = ProtoField.new("Expiration Date", "euronext.optiq.marketdatagateway.sbe.v5.39.expirationdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiry_cycle_type = ProtoField.new("Expiry Cycle Type", "euronext.optiq.marketdatagateway.sbe.v5.39.expirycycletype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiry_date = ProtoField.new("Expiry Date", "euronext.optiq.marketdatagateway.sbe.v5.39.expirydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.first_settlement_date = ProtoField.new("First Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.39.firstsettlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.marketdatagateway.sbe.v5.39.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.frame = ProtoField.new("Frame", "euronext.optiq.marketdatagateway.sbe.v5.39.frame", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.full_instrument_name = ProtoField.new("Full Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.39.fullinstrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_dividend_in_euros = ProtoField.new("Gross Dividend In Euros", "euronext.optiq.marketdatagateway.sbe.v5.39.grossdividendineuros", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_dividend_payable_per_unit = ProtoField.new("Gross Dividend Payable Per Unit", "euronext.optiq.marketdatagateway.sbe.v5.39.grossdividendpayableperunit", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_of_cdsc_indicator = ProtoField.new("Gross Of Cdsc Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.grossofcdscindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.marketdatagateway.sbe.v5.39.groupsizeencoding", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.guarantee_indicator = ProtoField.new("Guarantee Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.guaranteeindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.guts = ProtoField.new("Guts", "euronext.optiq.marketdatagateway.sbe.v5.39.guts", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000040)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.guts_versus_underlying = ProtoField.new("Guts Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.gutsversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000040000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_end_of_day_snapshot = ProtoField.new("Has End Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v5.39.hasendofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_start_of_day_snapshot = ProtoField.new("Has Start Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v5.39.hasstartofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_status_message = ProtoField.new("Has Status Message", "euronext.optiq.marketdatagateway.sbe.v5.39.hasstatusmessage", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.high_level = ProtoField.new("High Level", "euronext.optiq.marketdatagateway.sbe.v5.39.highlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.high_time = ProtoField.new("High Time", "euronext.optiq.marketdatagateway.sbe.v5.39.hightime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.icb = ProtoField.new("Icb", "euronext.optiq.marketdatagateway.sbe.v5.39.icb", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.icb_code = ProtoField.new("Icb Code", "euronext.optiq.marketdatagateway.sbe.v5.39.icbcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "euronext.optiq.marketdatagateway.sbe.v5.39.imbalanceqty", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "euronext.optiq.marketdatagateway.sbe.v5.39.imbalanceqtyside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_level = ProtoField.new("Index Level", "euronext.optiq.marketdatagateway.sbe.v5.39.indexlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_level_type = ProtoField.new("Index Level Type", "euronext.optiq.marketdatagateway.sbe.v5.39.indexleveltype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_price_code = ProtoField.new("Index Price Code", "euronext.optiq.marketdatagateway.sbe.v5.39.indexpricecode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.inst_unit_exp = ProtoField.new("Inst Unit Exp", "euronext.optiq.marketdatagateway.sbe.v5.39.instunitexp", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_category = ProtoField.new("Instrument Category", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumentcategory", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_event_date = ProtoField.new("Instrument Event Date", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumenteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumentgroupcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_name = ProtoField.new("Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_state = ProtoField.new("Instrument State", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumentstate", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_trading_code = ProtoField.new("Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.39.instrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "euronext.optiq.marketdatagateway.sbe.v5.39.interestpaymentdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_group = ProtoField.new("Interest Payment Date Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.39.interestpaymentdaterepgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_groups = ProtoField.new("Interest Payment Date Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.interestpaymentdaterepgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_butterfly = ProtoField.new("Iron Butterfly", "euronext.optiq.marketdatagateway.sbe.v5.39.ironbutterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000100)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_butterfly_versus_underlying = ProtoField.new("Iron Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.ironbutterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000100000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_condor = ProtoField.new("Iron Condor", "euronext.optiq.marketdatagateway.sbe.v5.39.ironcondor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000100000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_condor_versus_underlying = ProtoField.new("Iron Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.ironcondorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000080000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.isin_code = ProtoField.new("Isin Code", "euronext.optiq.marketdatagateway.sbe.v5.39.isincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.isin_code_optional = ProtoField.new("Isin Code Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.isincodeoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_date = ProtoField.new("Issue Date", "euronext.optiq.marketdatagateway.sbe.v5.39.issuedate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_price = ProtoField.new("Issue Price", "euronext.optiq.marketdatagateway.sbe.v5.39.issueprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_price_decimals = ProtoField.new("Issue Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.issuepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.issuing_country = ProtoField.new("Issuing Country", "euronext.optiq.marketdatagateway.sbe.v5.39.issuingcountry", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.jelly_roll = ProtoField.new("Jelly Roll", "euronext.optiq.marketdatagateway.sbe.v5.39.jellyroll", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000001)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ladder = ProtoField.new("Ladder", "euronext.optiq.marketdatagateway.sbe.v5.39.ladder", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000800)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ladder_versus_underlying = ProtoField.new("Ladder Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.ladderversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000001000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_adjusted_closing_price = ProtoField.new("Last Adjusted Closing Price", "euronext.optiq.marketdatagateway.sbe.v5.39.lastadjustedclosingprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_md_seq_num = ProtoField.new("Last Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v5.39.lastmdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_nav_price = ProtoField.new("Last Nav Price", "euronext.optiq.marketdatagateway.sbe.v5.39.lastnavprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_trading_date = ProtoField.new("Last Trading Date", "euronext.optiq.marketdatagateway.sbe.v5.39.lasttradingdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "euronext.optiq.marketdatagateway.sbe.v5.39.legbuysell", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.marketdatagateway.sbe.v5.39.leglastpx", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.marketdatagateway.sbe.v5.39.leglastqty", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.marketdatagateway.sbe.v5.39.legprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.marketdatagateway.sbe.v5.39.legratio", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.39.legsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.lei_code = ProtoField.new("Lei Code", "euronext.optiq.marketdatagateway.sbe.v5.39.leicode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.limit = ProtoField.new("Limit", "euronext.optiq.marketdatagateway.sbe.v5.39.limit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquid_instrument_indicator = ProtoField.new("Liquid Instrument Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.liquidinstrumentindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquidation_level = ProtoField.new("Liquidation Level", "euronext.optiq.marketdatagateway.sbe.v5.39.liquidationlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquidation_time = ProtoField.new("Liquidation Time", "euronext.optiq.marketdatagateway.sbe.v5.39.liquidationtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_instrument_name = ProtoField.new("Long Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.39.longinstrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_issuer_name = ProtoField.new("Long Issuer Name", "euronext.optiq.marketdatagateway.sbe.v5.39.longissuername", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_mnemonic = ProtoField.new("Long Mnemonic", "euronext.optiq.marketdatagateway.sbe.v5.39.longmnemonic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_trade_reference = ProtoField.new("Long Trade Reference", "euronext.optiq.marketdatagateway.sbe.v5.39.longtradereference", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_multiplier = ProtoField.new("Lot Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.39.lotmultiplier", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_size = ProtoField.new("Lot Size", "euronext.optiq.marketdatagateway.sbe.v5.39.lotsize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_size_optional = ProtoField.new("Lot Size Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.lotsizeoptional", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.low_level = ProtoField.new("Low Level", "euronext.optiq.marketdatagateway.sbe.v5.39.lowlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.low_time = ProtoField.new("Low Time", "euronext.optiq.marketdatagateway.sbe.v5.39.lowtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.main_depositary = ProtoField.new("Main Depositary", "euronext.optiq.marketdatagateway.sbe.v5.39.maindepositary", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market = ProtoField.new("Market", "euronext.optiq.marketdatagateway.sbe.v5.39.market", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "euronext.optiq.marketdatagateway.sbe.v5.39.marketdatapacketheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_model = ProtoField.new("Market Model", "euronext.optiq.marketdatagateway.sbe.v5.39.marketmodel", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_of_reference_mic = ProtoField.new("Market Of Reference Mic", "euronext.optiq.marketdatagateway.sbe.v5.39.marketofreferencemic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_on_open_moo = ProtoField.new("Market On Open Moo", "euronext.optiq.marketdatagateway.sbe.v5.39.marketonopenmoo", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_group = ProtoField.new("Market States Group", "euronext.optiq.marketdatagateway.sbe.v5.39.marketstatesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_groups = ProtoField.new("Market States Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.marketstatesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.maturity_date = ProtoField.new("Maturity Date", "euronext.optiq.marketdatagateway.sbe.v5.39.maturitydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.maturity_date_optional = ProtoField.new("Maturity Date Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.maturitydateoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_amount_call = ProtoField.new("Max Order Amount Call", "euronext.optiq.marketdatagateway.sbe.v5.39.maxorderamountcall", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_amount_continuous = ProtoField.new("Max Order Amount Continuous", "euronext.optiq.marketdatagateway.sbe.v5.39.maxorderamountcontinuous", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_quantity_call = ProtoField.new("Max Order Quantity Call", "euronext.optiq.marketdatagateway.sbe.v5.39.maxorderquantitycall", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_quantity_continuous = ProtoField.new("Max Order Quantity Continuous", "euronext.optiq.marketdatagateway.sbe.v5.39.maxorderquantitycontinuous", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.maximum_decimals_in_quantity = ProtoField.new("Maximum Decimals In Quantity", "euronext.optiq.marketdatagateway.sbe.v5.39.maximumdecimalsinquantity", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.md_seq_num = ProtoField.new("Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v5.39.mdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.md_seq_num_optional = ProtoField.new("Md Seq Num Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.mdseqnumoptional", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mdg_restart_count = ProtoField.new("Mdg Restart Count", "euronext.optiq.marketdatagateway.sbe.v5.39.mdgrestartcount", ftypes.UINT16, nil, base.DEC, 0x000E)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.message = ProtoField.new("Message", "euronext.optiq.marketdatagateway.sbe.v5.39.message", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.marketdatagateway.sbe.v5.39.messageheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.marketdatagateway.sbe.v5.39.messagepricenotation", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic = ProtoField.new("Mic", "euronext.optiq.marketdatagateway.sbe.v5.39.mic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic_list = ProtoField.new("Mic List", "euronext.optiq.marketdatagateway.sbe.v5.39.miclist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic_optional = ProtoField.new("mic Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.micoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_clearing_flag = ProtoField.new("Mifid Clearing Flag", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidclearingflag", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_currency = ProtoField.new("Mifid Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_emission_allowance_type = ProtoField.new("Mifid Emission Allowance Type", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidemissionallowancetype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_execution_id = ProtoField.new("Mifid Execution Id", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidexecutionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id = ProtoField.new("Mifid Instrument Id", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidinstrumentid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_optional = ProtoField.new("Mifid Instrument Id Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidinstrumentidoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_type = ProtoField.new("Mifid Instrument Id Type", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidinstrumentidtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_type_optional = ProtoField.new("Mifid Instrument Id Type Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidinstrumentidtypeoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_notional_amount = ProtoField.new("Mifid Notional Amount", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidnotionalamount", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price = ProtoField.new("Mifid Price", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price_notation = ProtoField.new("Mifid Price Notation", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidpricenotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price_optional = ProtoField.new("Mifid Price Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidpriceoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_qty_in_msrmt_unit_notation = ProtoField.new("Mifid Qty In Msrmt Unit Notation", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidqtyinmsrmtunitnotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_quantity = ProtoField.new("Mifid Quantity", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidquantity", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_quantity_measurement_unit = ProtoField.new("Mifid Quantity Measurement Unit", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidquantitymeasurementunit", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_transaction_id = ProtoField.new("Mifid Transaction Id", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidtransactionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifidii_liquid_flag = ProtoField.new("Mifidii Liquid Flag", "euronext.optiq.marketdatagateway.sbe.v5.39.mifidiiliquidflag", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.minimum_amount = ProtoField.new("Minimum Amount", "euronext.optiq.marketdatagateway.sbe.v5.39.minimumamount", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.missing_price = ProtoField.new("Missing Price", "euronext.optiq.marketdatagateway.sbe.v5.39.missingprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mm_protections = ProtoField.new("Mm Protections", "euronext.optiq.marketdatagateway.sbe.v5.39.mmprotections", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_agency_cross_trade_indicator = ProtoField.new("Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_benchmark_indicator = ProtoField.new("Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_contingent_transaction_indicator = ProtoField.new("Mmt Contingent Transaction Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtcontingenttransactionindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_contributionto_price = ProtoField.new("Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_duplicative_indicator = ProtoField.new("Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_modification_indicator_char_4_optional = ProtoField.new("Mmt Modification Indicator char 4 optional", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtmodificationindicatorchar4optional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_off_book_automated_indicator = ProtoField.new("Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_portfolio_transaction_indicator = ProtoField.new("Mmt Portfolio Transaction Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtportfoliotransactionindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_post_trade_deferral = ProtoField.new("Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale = ProtoField.new("Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtpretradetransparencywaiverrelatedtosizeandscale", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode = ProtoField.new("Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode_illiquid = ProtoField.new("Mmt Publication Mode Illiquid", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtpublicationmodeilliquid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode_size_specific = ProtoField.new("Mmt Publication Mode Size Specific", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtpublicationmodesizespecific", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.mmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v5.39.mmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v5.39.mmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mnemonic = ProtoField.new("Mnemonic", "euronext.optiq.marketdatagateway.sbe.v5.39.mnemonic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.mother_stock_isin = ProtoField.new("Mother Stock Isin", "euronext.optiq.marketdatagateway.sbe.v5.39.motherstockisin", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_bid_price = ProtoField.new("Nav Bid Price", "euronext.optiq.marketdatagateway.sbe.v5.39.navbidprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_offer_price = ProtoField.new("Nav Offer Price", "euronext.optiq.marketdatagateway.sbe.v5.39.navofferprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_price = ProtoField.new("Nav Price", "euronext.optiq.marketdatagateway.sbe.v5.39.navprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.marketdatagateway.sbe.v5.39.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_group = ProtoField.new("New Stats Group", "euronext.optiq.marketdatagateway.sbe.v5.39.newstatsgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_groups = ProtoField.new("New Stats Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.newstatsgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.next_meeting = ProtoField.new("Next Meeting", "euronext.optiq.marketdatagateway.sbe.v5.39.nextmeeting", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.no_qualifier = ProtoField.new("No Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.39.noqualifier", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.nominal_currency = ProtoField.new("Nominal Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.nominalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.notusedgroup1groups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.notional_amount_traded = ProtoField.new("Notional Amount Traded", "euronext.optiq.marketdatagateway.sbe.v5.39.notionalamounttraded", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.notional_currency = ProtoField.new("Notional Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.notionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.marketdatagateway.sbe.v5.39.numingroup", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.num_traded_instruments = ProtoField.new("Num Traded Instruments", "euronext.optiq.marketdatagateway.sbe.v5.39.numtradedinstruments", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.number_instrument_circulating = ProtoField.new("Number Instrument Circulating", "euronext.optiq.marketdatagateway.sbe.v5.39.numberinstrumentcirculating", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.number_of_orders = ProtoField.new("Number Of Orders", "euronext.optiq.marketdatagateway.sbe.v5.39.numberoforders", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.offer_price = ProtoField.new("Offer Price", "euronext.optiq.marketdatagateway.sbe.v5.39.offerprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.opened_closed_fund = ProtoField.new("Opened Closed Fund", "euronext.optiq.marketdatagateway.sbe.v5.39.openedclosedfund", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.opening_level = ProtoField.new("Opening Level", "euronext.optiq.marketdatagateway.sbe.v5.39.openinglevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.opening_time = ProtoField.new("Opening Time", "euronext.optiq.marketdatagateway.sbe.v5.39.openingtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.marketdatagateway.sbe.v5.39.optiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.optiq_segment = ProtoField.new("Optiq Segment", "euronext.optiq.marketdatagateway.sbe.v5.39.optiqsegment", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_entry_qualifier = ProtoField.new("Order Entry Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.39.orderentryqualifier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.marketdatagateway.sbe.v5.39.orderpriority", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.marketdatagateway.sbe.v5.39.orderpx", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_quantity = ProtoField.new("Order Quantity", "euronext.optiq.marketdatagateway.sbe.v5.39.orderquantity", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_side = ProtoField.new("Order Side", "euronext.optiq.marketdatagateway.sbe.v5.39.orderside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.marketdatagateway.sbe.v5.39.ordertype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_type_rules = ProtoField.new("Order Type Rules", "euronext.optiq.marketdatagateway.sbe.v5.39.ordertyperules", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_group = ProtoField.new("Orders Group", "euronext.optiq.marketdatagateway.sbe.v5.39.ordersgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_groups = ProtoField.new("Orders Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.ordersgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.original_report_timestamp = ProtoField.new("Original Report Timestamp", "euronext.optiq.marketdatagateway.sbe.v5.39.originalreporttimestamp", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_group = ProtoField.new("Outright Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.39.outrightrepgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_groups = ProtoField.new("Outright Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.outrightrepgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.pack = ProtoField.new("Pack", "euronext.optiq.marketdatagateway.sbe.v5.39.pack", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000004000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_group = ProtoField.new("Package Components Group", "euronext.optiq.marketdatagateway.sbe.v5.39.packagecomponentsgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_groups = ProtoField.new("Package Components Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.packagecomponentsgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet = ProtoField.new("Packet", "euronext.optiq.marketdatagateway.sbe.v5.39.packet", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_flags = ProtoField.new("Packet Flags", "euronext.optiq.marketdatagateway.sbe.v5.39.packetflags", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "euronext.optiq.marketdatagateway.sbe.v5.39.packetsequencenumber", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_time = ProtoField.new("Packet Time", "euronext.optiq.marketdatagateway.sbe.v5.39.packettime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.par_value = ProtoField.new("Par Value", "euronext.optiq.marketdatagateway.sbe.v5.39.parvalue", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.partition_id = ProtoField.new("Partition Id", "euronext.optiq.marketdatagateway.sbe.v5.39.partitionid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.marketdatagateway.sbe.v5.39.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.pattern_id = ProtoField.new("Pattern Id", "euronext.optiq.marketdatagateway.sbe.v5.39.patternid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.payload = ProtoField.new("Payload", "euronext.optiq.marketdatagateway.sbe.v5.39.payload", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.payment_frequency = ProtoField.new("Payment Frequency", "euronext.optiq.marketdatagateway.sbe.v5.39.paymentfrequency", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.pctg_of_capitalization = ProtoField.new("Pctg Of Capitalization", "euronext.optiq.marketdatagateway.sbe.v5.39.pctgofcapitalization", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.marketdatagateway.sbe.v5.39.pegoffset", ftypes.INT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_id = ProtoField.new("Phase Id", "euronext.optiq.marketdatagateway.sbe.v5.39.phaseid", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_qualifier = ProtoField.new("Phase Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.39.phasequalifier", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_time = ProtoField.new("Phase Time", "euronext.optiq.marketdatagateway.sbe.v5.39.phasetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.pool_factor = ProtoField.new("Pool Factor", "euronext.optiq.marketdatagateway.sbe.v5.39.poolfactor", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.prct_varfrom_prev_close = ProtoField.new("Prct Varfrom Prev Close", "euronext.optiq.marketdatagateway.sbe.v5.39.prctvarfromprevclose", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.previous_priority = ProtoField.new("Previous Priority", "euronext.optiq.marketdatagateway.sbe.v5.39.previouspriority", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price = ProtoField.new("Price", "euronext.optiq.marketdatagateway.sbe.v5.39.price", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_decimals = ProtoField.new("Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.pricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_decimals_optional = ProtoField.new("Price Decimals Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.pricedecimalsoptional", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_index_level_decimals = ProtoField.new("Price Index Level Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.priceindexleveldecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_limits = ProtoField.new("Price Limits", "euronext.optiq.marketdatagateway.sbe.v5.39.pricelimits", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_multiplier = ProtoField.new("Price Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.39.pricemultiplier", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_multiplier_decimals = ProtoField.new("Price Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.pricemultiplierdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_qualifier = ProtoField.new("Price Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.39.pricequalifier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_type = ProtoField.new("Price Type", "euronext.optiq.marketdatagateway.sbe.v5.39.pricetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_group = ProtoField.new("Prices Group", "euronext.optiq.marketdatagateway.sbe.v5.39.pricesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_groups = ProtoField.new("Prices Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.pricesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.pricing_algorithm = ProtoField.new("Pricing Algorithm", "euronext.optiq.marketdatagateway.sbe.v5.39.pricingalgorithm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.product_code = ProtoField.new("Product Code", "euronext.optiq.marketdatagateway.sbe.v5.39.productcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.psn_high_weight = ProtoField.new("Psn High Weight", "euronext.optiq.marketdatagateway.sbe.v5.39.psnhighweight", ftypes.UINT16, nil, base.DEC, 0x0070)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.publication_date_time = ProtoField.new("Publication Date Time", "euronext.optiq.marketdatagateway.sbe.v5.39.publicationdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_spread_versus_call_versus_underlying = ProtoField.new("Put Spread Versus Call Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.putspreadversuscallversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000002000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_spread_versus_sell_a_call = ProtoField.new("Put Spread Versus Sell A Call", "euronext.optiq.marketdatagateway.sbe.v5.39.putspreadversussellacall", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000400000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_straddle_versus_sell_a_call_or_a_put = ProtoField.new("Put Straddle Versus Sell A Call Or A Put", "euronext.optiq.marketdatagateway.sbe.v5.39.putstraddleversussellacalloraput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000800000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.marketdatagateway.sbe.v5.39.quantity", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.quantitydecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_notation = ProtoField.new("Quantity Notation", "euronext.optiq.marketdatagateway.sbe.v5.39.quantitynotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_optional = ProtoField.new("Quantity Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.quantityoptional", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quote_spread_multiplier = ProtoField.new("Quote Spread Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.39.quotespreadmultiplier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quote_update_type = ProtoField.new("Quote Update Type", "euronext.optiq.marketdatagateway.sbe.v5.39.quoteupdatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.quoting_period = ProtoField.new("Quoting Period", "euronext.optiq.marketdatagateway.sbe.v5.39.quotingperiod", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.random_uncrossing = ProtoField.new("Random Uncrossing", "euronext.optiq.marketdatagateway.sbe.v5.39.randomuncrossing", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_decimals = ProtoField.new("Ratio Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.ratiodecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_decimals_optional = ProtoField.new("Ratio Decimals Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.ratiodecimalsoptional", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_multiplier_decimals = ProtoField.new("Ratio Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.ratiomultiplierdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.rebroadcast_indicator = ProtoField.new("Rebroadcast Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.rebroadcastindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reduced_tick_spread = ProtoField.new("Reduced Tick Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.reducedtickspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000800000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_continuous = ProtoField.new("Reference Price Origin In Continuous", "euronext.optiq.marketdatagateway.sbe.v5.39.referencepriceoriginincontinuous", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_opening_call = ProtoField.new("Reference Price Origin In Opening Call", "euronext.optiq.marketdatagateway.sbe.v5.39.referencepriceorigininopeningcall", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_trading_interruption = ProtoField.new("Reference Price Origin In Trading Interruption", "euronext.optiq.marketdatagateway.sbe.v5.39.referencepriceoriginintradinginterruption", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_spread_table_id = ProtoField.new("Reference Spread Table Id", "euronext.optiq.marketdatagateway.sbe.v5.39.referencespreadtableid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.repo_indicator = ProtoField.new("Repo Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.repoindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.repo_settlement_date = ProtoField.new("Repo Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.39.reposettlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_10 = ProtoField.new("Reserved 10", "euronext.optiq.marketdatagateway.sbe.v5.39.reserved10", ftypes.UINT16, nil, base.DEC, 0xFFC0)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_16 = ProtoField.new("Reserved 16", "euronext.optiq.marketdatagateway.sbe.v5.39.reserved16", ftypes.UINT64, nil, base.DEC, 0xFFFF000000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.marketdatagateway.sbe.v5.39.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.marketdatagateway.sbe.v5.39.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_bits = ProtoField.new("Reserved Bits", "euronext.optiq.marketdatagateway.sbe.v5.39.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFC00)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.retransmission_end_time = ProtoField.new("Retransmission End Time", "euronext.optiq.marketdatagateway.sbe.v5.39.retransmissionendtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.retransmission_start_time = ProtoField.new("Retransmission Start Time", "euronext.optiq.marketdatagateway.sbe.v5.39.retransmissionstarttime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.scheduled_event = ProtoField.new("Scheduled Event", "euronext.optiq.marketdatagateway.sbe.v5.39.scheduledevent", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.scheduled_event_time = ProtoField.new("Scheduled Event Time", "euronext.optiq.marketdatagateway.sbe.v5.39.scheduledeventtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.marketdatagateway.sbe.v5.39.schemaid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.second_notional_currency = ProtoField.new("Second Notional Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.secondnotionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.security_condition = ProtoField.new("Security Condition", "euronext.optiq.marketdatagateway.sbe.v5.39.securitycondition", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.sedol_code = ProtoField.new("Sedol Code", "euronext.optiq.marketdatagateway.sbe.v5.39.sedolcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.session = ProtoField.new("Session", "euronext.optiq.marketdatagateway.sbe.v5.39.session", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.session_trading_day = ProtoField.new("Session Trading Day", "euronext.optiq.marketdatagateway.sbe.v5.39.sessiontradingday", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_date = ProtoField.new("Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.39.settlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_delay = ProtoField.new("Settlement Delay", "euronext.optiq.marketdatagateway.sbe.v5.39.settlementdelay", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_method = ProtoField.new("Settlement Method", "euronext.optiq.marketdatagateway.sbe.v5.39.settlementmethod", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_tick_size = ProtoField.new("Settlement Tick Size", "euronext.optiq.marketdatagateway.sbe.v5.39.settlementticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.share_amount_in_issue = ProtoField.new("Share Amount In Issue", "euronext.optiq.marketdatagateway.sbe.v5.39.shareamountinissue", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.simple_inter_commodity_spread = ProtoField.new("Simple Inter Commodity Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.simpleintercommodityspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000010000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.snapshot_time = ProtoField.new("Snapshot Time", "euronext.optiq.marketdatagateway.sbe.v5.39.snapshottime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.spread = ProtoField.new("Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.spread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000008)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.marketdatagateway.sbe.v5.39.starttimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.stats_update_type = ProtoField.new("Stats Update Type", "euronext.optiq.marketdatagateway.sbe.v5.39.statsupdatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.stats_update_value = ProtoField.new("Stats Update Value", "euronext.optiq.marketdatagateway.sbe.v5.39.statsupdatevalue", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.status_reason = ProtoField.new("Status Reason", "euronext.optiq.marketdatagateway.sbe.v5.39.statusreason", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.stop_limit = ProtoField.new("Stop Limit", "euronext.optiq.marketdatagateway.sbe.v5.39.stoplimit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.stop_stop_loss = ProtoField.new("Stop Stop Loss", "euronext.optiq.marketdatagateway.sbe.v5.39.stopstoploss", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle = ProtoField.new("Straddle", "euronext.optiq.marketdatagateway.sbe.v5.39.straddle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000040000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_calendar_spread = ProtoField.new("Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.straddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000002000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_calendar_spread_versus_underlying = ProtoField.new("Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.straddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000001000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_versus_underlying = ProtoField.new("Straddle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.straddleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000010000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strangle = ProtoField.new("Strangle", "euronext.optiq.marketdatagateway.sbe.v5.39.strangle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000400)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strangle_versus_underlying = ProtoField.new("Strangle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.strangleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000400000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_authorized = ProtoField.new("Strategy Authorized", "euronext.optiq.marketdatagateway.sbe.v5.39.strategyauthorized", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.marketdatagateway.sbe.v5.39.strategycode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_group = ProtoField.new("Strategy Standing Datarep 1 Group", "euronext.optiq.marketdatagateway.sbe.v5.39.strategystandingdatarep1group", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_groups = ProtoField.new("Strategy Standing Datarep 1 Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.strategystandingdatarep1groups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.stressed_market_conditions = ProtoField.new("Stressed Market Conditions", "euronext.optiq.marketdatagateway.sbe.v5.39.stressedmarketconditions", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_currency = ProtoField.new("Strike Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.strikecurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.strikecurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price = ProtoField.new("Strike Price", "euronext.optiq.marketdatagateway.sbe.v5.39.strikeprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price_decimals = ProtoField.new("Strike Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.39.strikepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price_decimals_ratio = ProtoField.new("Strike Price Decimals Ratio", "euronext.optiq.marketdatagateway.sbe.v5.39.strikepricedecimalsratio", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strip = ProtoField.new("Strip", "euronext.optiq.marketdatagateway.sbe.v5.39.strip", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000001000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.suspended = ProtoField.new("Suspended", "euronext.optiq.marketdatagateway.sbe.v5.39.suspended", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.39.symbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.symbol_index_optional = ProtoField.new("Symbol Index Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.symbolindexoptional", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.synthetic = ProtoField.new("Synthetic", "euronext.optiq.marketdatagateway.sbe.v5.39.synthetic", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000008000000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.tax_code = ProtoField.new("Tax Code", "euronext.optiq.marketdatagateway.sbe.v5.39.taxcode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.tax_description_attaching_to_a_dividend = ProtoField.new("Tax Description Attaching To A Dividend", "euronext.optiq.marketdatagateway.sbe.v5.39.taxdescriptionattachingtoadividend", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.technical_notification_type = ProtoField.new("Technical Notification Type", "euronext.optiq.marketdatagateway.sbe.v5.39.technicalnotificationtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.marketdatagateway.sbe.v5.39.templateid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_120mn = ProtoField.new("Threshold Lis Post Trade 120mn", "euronext.optiq.marketdatagateway.sbe.v5.39.thresholdlisposttrade120mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_60mn = ProtoField.new("Threshold Lis Post Trade 60mn", "euronext.optiq.marketdatagateway.sbe.v5.39.thresholdlisposttrade60mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_eod = ProtoField.new("Threshold Lis Post Trade Eod", "euronext.optiq.marketdatagateway.sbe.v5.39.thresholdlisposttradeeod", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.tick_size_index_id = ProtoField.new("Tick Size Index Id", "euronext.optiq.marketdatagateway.sbe.v5.39.ticksizeindexid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_group = ProtoField.new("Timetables Group", "euronext.optiq.marketdatagateway.sbe.v5.39.timetablesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_groups = ProtoField.new("Timetables Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.timetablesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_at_settlement = ProtoField.new("Trade At Settlement", "euronext.optiq.marketdatagateway.sbe.v5.39.tradeatsettlement", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.marketdatagateway.sbe.v5.39.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.39.tradequalifier", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_reference = ProtoField.new("Trade Reference", "euronext.optiq.marketdatagateway.sbe.v5.39.tradereference", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.marketdatagateway.sbe.v5.39.tradetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_unique_identifier = ProtoField.new("Trade Unique Identifier", "euronext.optiq.marketdatagateway.sbe.v5.39.tradeuniqueidentifier", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_at_last = ProtoField.new("Trading At Last", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingatlast", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency = ProtoField.new("Trading Currency", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingcurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency_optional = ProtoField.new("Trading Currency Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingcurrencyoptional", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_date_time = ProtoField.new("Trading Date Time", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_period = ProtoField.new("Trading Period", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingperiod", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_period_optional = ProtoField.new("Trading Period Optional", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingperiodoptional", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_policy = ProtoField.new("Trading Policy", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingpolicy", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_side = ProtoField.new("Trading Side", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingside", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_unit = ProtoField.new("Trading Unit", "euronext.optiq.marketdatagateway.sbe.v5.39.tradingunit", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.transaction_type = ProtoField.new("Transaction Type", "euronext.optiq.marketdatagateway.sbe.v5.39.transactiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.transparency_indicator = ProtoField.new("Transparency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.39.transparencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.two_by_one_call_or_put_ratio_spread_versus_underlying = ProtoField.new("Two By One Call Or Put Ratio Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.39.twobyonecallorputratiospreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000080000000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.two_by_one_ratio_spread = ProtoField.new("Two By One Ratio Spread", "euronext.optiq.marketdatagateway.sbe.v5.39.twobyoneratiospread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000080)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "euronext.optiq.marketdatagateway.sbe.v5.39.typeofcorporateevent", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "euronext.optiq.marketdatagateway.sbe.v5.39.typeofmarketadmission", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.marketdatagateway.sbe.v5.39.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_derivatives_instrument_trading_code = ProtoField.new("Underlying Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingderivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_expiry = ProtoField.new("Underlying Expiry", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingexpiry", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_index_name = ProtoField.new("Underlying Index Name", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingindexname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_index_term = ProtoField.new("Underlying Index Term", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingindexterm", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_isin_code = ProtoField.new("Underlying Isin Code", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingisincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_mic = ProtoField.new("Underlying Mic", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingmic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_subtype = ProtoField.new("Underlying Subtype", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingsubtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_symbol_index = ProtoField.new("Underlying Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_type = ProtoField.new("Underlying Type", "euronext.optiq.marketdatagateway.sbe.v5.39.underlyingtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.update_type = ProtoField.new("Update Type", "euronext.optiq.marketdatagateway.sbe.v5.39.updatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_group = ProtoField.new("Updates Group", "euronext.optiq.marketdatagateway.sbe.v5.39.updatesgroup", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_groups = ProtoField.new("Updates Groups", "euronext.optiq.marketdatagateway.sbe.v5.39.updatesgroups", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.venue = ProtoField.new("Venue", "euronext.optiq.marketdatagateway.sbe.v5.39.venue", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.version = ProtoField.new("Version", "euronext.optiq.marketdatagateway.sbe.v5.39.version", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.volatility_trade = ProtoField.new("Volatility Trade", "euronext.optiq.marketdatagateway.sbe.v5.39.volatilitytrade", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000080000)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.volume = ProtoField.new("Volume", "euronext.optiq.marketdatagateway.sbe.v5.39.volume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.wholesale_allowed = ProtoField.new("Wholesale Allowed", "euronext.optiq.marketdatagateway.sbe.v5.39.wholesaleallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)

-- Euronext Optiq MarketDataGateway Sbe 5.39 messages
euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_full_trade_information_message = ProtoField.new("Apa Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v5.39.apafulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_quotes_message = ProtoField.new("Apa Quotes Message", "euronext.optiq.marketdatagateway.sbe.v5.39.apaquotesmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_standing_data_message = ProtoField.new("Apa Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.39.apastandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_instrument_reference_message = ProtoField.new("Bf Instrument Reference Message", "euronext.optiq.marketdatagateway.sbe.v5.39.bfinstrumentreferencemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_instrument_suspension_message = ProtoField.new("Bf Instrument Suspension Message", "euronext.optiq.marketdatagateway.sbe.v5.39.bfinstrumentsuspensionmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_trade_message = ProtoField.new("Bf Trade Message", "euronext.optiq.marketdatagateway.sbe.v5.39.bftrademessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.bfnav_message = ProtoField.new("Bfnav Message", "euronext.optiq.marketdatagateway.sbe.v5.39.bfnavmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_standing_data_message = ProtoField.new("Contract Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.39.contractstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_of_day_message = ProtoField.new("End Of Day Message", "euronext.optiq.marketdatagateway.sbe.v5.39.endofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v5.39.endofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.full_trade_information_message = ProtoField.new("Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v5.39.fulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.health_status_message = ProtoField.new("Health Status Message", "euronext.optiq.marketdatagateway.sbe.v5.39.healthstatusmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_summary_message = ProtoField.new("Index Summary Message", "euronext.optiq.marketdatagateway.sbe.v5.39.indexsummarymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.lis_package_structure_message = ProtoField.new("Lis Package Structure Message", "euronext.optiq.marketdatagateway.sbe.v5.39.lispackagestructuremessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_order_update_message = ProtoField.new("Long Order Update Message", "euronext.optiq.marketdatagateway.sbe.v5.39.longorderupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_status_change_message = ProtoField.new("Market Status Change Message", "euronext.optiq.marketdatagateway.sbe.v5.39.marketstatuschangemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_update_message = ProtoField.new("Market Update Message", "euronext.optiq.marketdatagateway.sbe.v5.39.marketupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_update_message = ProtoField.new("Order Update Message", "euronext.optiq.marketdatagateway.sbe.v5.39.orderupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_standing_data_message = ProtoField.new("Outright Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.39.outrightstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_update_message = ProtoField.new("Price Update Message", "euronext.optiq.marketdatagateway.sbe.v5.39.priceupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "euronext.optiq.marketdatagateway.sbe.v5.39.realtimeindexmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.standing_data_message = ProtoField.new("Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.39.standingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "euronext.optiq.marketdatagateway.sbe.v5.39.startofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_of_snapshot_message = ProtoField.new("Start Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v5.39.startofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.statistics_message = ProtoField.new("Statistics Message", "euronext.optiq.marketdatagateway.sbe.v5.39.statisticsmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_data_message = ProtoField.new("Strategy Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.39.strategystandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.technical_notification_message = ProtoField.new("Technical Notification Message", "euronext.optiq.marketdatagateway.sbe.v5.39.technicalnotificationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetable_message = ProtoField.new("Timetable Message", "euronext.optiq.marketdatagateway.sbe.v5.39.timetablemessage", ftypes.STRING)

-- Euronext Optiq MarketDataGateway Sbe 5.39 generated fields
euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_group_index = ProtoField.new("Contract Emm Properties Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.contractemmpropertiesgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_group_index = ProtoField.new("Em M Pattern Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.emmpatternrepgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_group_index = ProtoField.new("Interest Payment Date Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.interestpaymentdaterepgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_group_index = ProtoField.new("Market States Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.marketstatesgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_group_index = ProtoField.new("New Stats Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.newstatsgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.not_used_group_1_group_index = ProtoField.new("Not Used Group 1 Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.notusedgroup1groupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_group_index = ProtoField.new("Orders Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.ordersgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_group_index = ProtoField.new("Outright Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.outrightrepgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_group_index = ProtoField.new("Package Components Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.packagecomponentsgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_group_index = ProtoField.new("Prices Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.pricesgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_group_index = ProtoField.new("Strategy Standing Datarep 1 Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.strategystandingdatarep1groupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_group_index = ProtoField.new("Timetables Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.timetablesgroupindex", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_group_index = ProtoField.new("Updates Group Index", "euronext.optiq.marketdatagateway.sbe.v5.39.updatesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.39 Element Dissection Options
show.apa_full_trade_information_message = true
show.apa_quotes_message = true
show.apa_standing_data_message = true
show.bf_instrument_reference_message = true
show.bf_instrument_suspension_message = true
show.bf_trade_message = true
show.bfnav_message = true
show.contract_emm_properties_group = true
show.contract_emm_properties_groups = true
show.contract_standing_data_message = true
show.em_m_pattern_rep_group = true
show.em_m_pattern_rep_groups = true
show.end_of_day_message = true
show.end_of_snapshot_message = true
show.full_trade_information_message = true
show.group_size_encoding = true
show.health_status_message = true
show.index_summary_message = true
show.interest_payment_date_rep_group = true
show.interest_payment_date_rep_groups = true
show.lis_package_structure_message = true
show.long_order_update_message = true
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

-- Register Euronext Optiq MarketDataGateway Sbe 5.39 Show Options
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_full_trade_information_message = Pref.bool("Show Apa Full Trade Information Message", show.apa_full_trade_information_message, "Parse and add Apa Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_quotes_message = Pref.bool("Show Apa Quotes Message", show.apa_quotes_message, "Parse and add Apa Quotes Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_standing_data_message = Pref.bool("Show Apa Standing Data Message", show.apa_standing_data_message, "Parse and add Apa Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_reference_message = Pref.bool("Show Bf Instrument Reference Message", show.bf_instrument_reference_message, "Parse and add Bf Instrument Reference Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_suspension_message = Pref.bool("Show Bf Instrument Suspension Message", show.bf_instrument_suspension_message, "Parse and add Bf Instrument Suspension Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_trade_message = Pref.bool("Show Bf Trade Message", show.bf_trade_message, "Parse and add Bf Trade Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bfnav_message = Pref.bool("Show Bfnav Message", show.bfnav_message, "Parse and add Bfnav Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_group = Pref.bool("Show Contract Emm Properties Group", show.contract_emm_properties_group, "Parse and add Contract Emm Properties Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_groups = Pref.bool("Show Contract Emm Properties Groups", show.contract_emm_properties_groups, "Parse and add Contract Emm Properties Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_standing_data_message = Pref.bool("Show Contract Standing Data Message", show.contract_standing_data_message, "Parse and add Contract Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_group = Pref.bool("Show Em M Pattern Rep Group", show.em_m_pattern_rep_group, "Parse and add Em M Pattern Rep Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_groups = Pref.bool("Show Em M Pattern Rep Groups", show.em_m_pattern_rep_groups, "Parse and add Em M Pattern Rep Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_full_trade_information_message = Pref.bool("Show Full Trade Information Message", show.full_trade_information_message, "Parse and add Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_health_status_message = Pref.bool("Show Health Status Message", show.health_status_message, "Parse and add Health Status Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_index_summary_message = Pref.bool("Show Index Summary Message", show.index_summary_message, "Parse and add Index Summary Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_group = Pref.bool("Show Interest Payment Date Rep Group", show.interest_payment_date_rep_group, "Parse and add Interest Payment Date Rep Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_groups = Pref.bool("Show Interest Payment Date Rep Groups", show.interest_payment_date_rep_groups, "Parse and add Interest Payment Date Rep Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_lis_package_structure_message = Pref.bool("Show Lis Package Structure Message", show.lis_package_structure_message, "Parse and add Lis Package Structure Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_long_order_update_message = Pref.bool("Show Long Order Update Message", show.long_order_update_message, "Parse and add Long Order Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_data_packet_header = Pref.bool("Show Market Data Packet Header", show.market_data_packet_header, "Parse and add Market Data Packet Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_group = Pref.bool("Show Market States Group", show.market_states_group, "Parse and add Market States Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_groups = Pref.bool("Show Market States Groups", show.market_states_groups, "Parse and add Market States Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_status_change_message = Pref.bool("Show Market Status Change Message", show.market_status_change_message, "Parse and add Market Status Change Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_update_message = Pref.bool("Show Market Update Message", show.market_update_message, "Parse and add Market Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_mm_protections = Pref.bool("Show Mm Protections", show.mm_protections, "Parse and add Mm Protections to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_group = Pref.bool("Show New Stats Group", show.new_stats_group, "Parse and add New Stats Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_groups = Pref.bool("Show New Stats Groups", show.new_stats_groups, "Parse and add New Stats Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_type_rules = Pref.bool("Show Order Type Rules", show.order_type_rules, "Parse and add Order Type Rules to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_update_message = Pref.bool("Show Order Update Message", show.order_update_message, "Parse and add Order Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_group = Pref.bool("Show Orders Group", show.orders_group, "Parse and add Orders Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_groups = Pref.bool("Show Orders Groups", show.orders_groups, "Parse and add Orders Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_group = Pref.bool("Show Outright Rep Group", show.outright_rep_group, "Parse and add Outright Rep Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_groups = Pref.bool("Show Outright Rep Groups", show.outright_rep_groups, "Parse and add Outright Rep Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_standing_data_message = Pref.bool("Show Outright Standing Data Message", show.outright_standing_data_message, "Parse and add Outright Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_group = Pref.bool("Show Package Components Group", show.package_components_group, "Parse and add Package Components Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_groups = Pref.bool("Show Package Components Groups", show.package_components_groups, "Parse and add Package Components Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_phase_qualifier = Pref.bool("Show Phase Qualifier", show.phase_qualifier, "Parse and add Phase Qualifier to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_price_update_message = Pref.bool("Show Price Update Message", show.price_update_message, "Parse and add Price Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_group = Pref.bool("Show Prices Group", show.prices_group, "Parse and add Prices Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_groups = Pref.bool("Show Prices Groups", show.prices_groups, "Parse and add Prices Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_real_time_index_message = Pref.bool("Show Real Time Index Message", show.real_time_index_message, "Parse and add Real Time Index Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_standing_data_message = Pref.bool("Show Standing Data Message", show.standing_data_message, "Parse and add Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_snapshot_message = Pref.bool("Show Start Of Snapshot Message", show.start_of_snapshot_message, "Parse and add Start Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_authorized = Pref.bool("Show Strategy Authorized", show.strategy_authorized, "Parse and add Strategy Authorized to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_data_message = Pref.bool("Show Strategy Standing Data Message", show.strategy_standing_data_message, "Parse and add Strategy Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_group = Pref.bool("Show Strategy Standing Datarep 1 Group", show.strategy_standing_datarep_1_group, "Parse and add Strategy Standing Datarep 1 Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_groups = Pref.bool("Show Strategy Standing Datarep 1 Groups", show.strategy_standing_datarep_1_groups, "Parse and add Strategy Standing Datarep 1 Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_technical_notification_message = Pref.bool("Show Technical Notification Message", show.technical_notification_message, "Parse and add Technical Notification Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetable_message = Pref.bool("Show Timetable Message", show.timetable_message, "Parse and add Timetable Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_group = Pref.bool("Show Timetables Group", show.timetables_group, "Parse and add Timetables Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_groups = Pref.bool("Show Timetables Groups", show.timetables_groups, "Parse and add Timetables Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_group = Pref.bool("Show Updates Group", show.updates_group, "Parse and add Updates Group to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_groups = Pref.bool("Show Updates Groups", show.updates_groups, "Parse and add Updates Groups to protocol tree")
euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function euronext_optiq_marketdatagateway_sbe_v5_39.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.apa_full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_full_trade_information_message then
    show.apa_full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_full_trade_information_message
    changed = true
  end
  if show.apa_quotes_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_quotes_message then
    show.apa_quotes_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_quotes_message
    changed = true
  end
  if show.apa_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_standing_data_message then
    show.apa_standing_data_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_apa_standing_data_message
    changed = true
  end
  if show.bf_instrument_reference_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_reference_message then
    show.bf_instrument_reference_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_reference_message
    changed = true
  end
  if show.bf_instrument_suspension_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_suspension_message then
    show.bf_instrument_suspension_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_instrument_suspension_message
    changed = true
  end
  if show.bf_trade_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_trade_message then
    show.bf_trade_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bf_trade_message
    changed = true
  end
  if show.bfnav_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bfnav_message then
    show.bfnav_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_bfnav_message
    changed = true
  end
  if show.contract_emm_properties_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_group then
    show.contract_emm_properties_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_group
    changed = true
  end
  if show.contract_emm_properties_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_groups then
    show.contract_emm_properties_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_emm_properties_groups
    changed = true
  end
  if show.contract_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_standing_data_message then
    show.contract_standing_data_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_contract_standing_data_message
    changed = true
  end
  if show.em_m_pattern_rep_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_group then
    show.em_m_pattern_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_group
    changed = true
  end
  if show.em_m_pattern_rep_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_groups then
    show.em_m_pattern_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_em_m_pattern_rep_groups
    changed = true
  end
  if show.end_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_day_message then
    show.end_of_day_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_full_trade_information_message then
    show.full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_full_trade_information_message
    changed = true
  end
  if show.group_size_encoding ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_group_size_encoding then
    show.group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_group_size_encoding
    changed = true
  end
  if show.health_status_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_health_status_message then
    show.health_status_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_health_status_message
    changed = true
  end
  if show.index_summary_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_index_summary_message then
    show.index_summary_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_index_summary_message
    changed = true
  end
  if show.interest_payment_date_rep_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_group then
    show.interest_payment_date_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_group
    changed = true
  end
  if show.interest_payment_date_rep_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_groups then
    show.interest_payment_date_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_interest_payment_date_rep_groups
    changed = true
  end
  if show.lis_package_structure_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_lis_package_structure_message then
    show.lis_package_structure_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_lis_package_structure_message
    changed = true
  end
  if show.long_order_update_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_long_order_update_message then
    show.long_order_update_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_long_order_update_message
    changed = true
  end
  if show.market_data_packet_header ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_data_packet_header then
    show.market_data_packet_header = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_data_packet_header
    changed = true
  end
  if show.market_states_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_group then
    show.market_states_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_group
    changed = true
  end
  if show.market_states_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_groups then
    show.market_states_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_states_groups
    changed = true
  end
  if show.market_status_change_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_status_change_message then
    show.market_status_change_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_status_change_message
    changed = true
  end
  if show.market_update_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_update_message then
    show.market_update_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_market_update_message
    changed = true
  end
  if show.message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message then
    show.message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message_header then
    show.message_header = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_message_header
    changed = true
  end
  if show.mm_protections ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_mm_protections then
    show.mm_protections = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_mm_protections
    changed = true
  end
  if show.new_stats_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_group then
    show.new_stats_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_group
    changed = true
  end
  if show.new_stats_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_groups then
    show.new_stats_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_new_stats_groups
    changed = true
  end
  if show.not_used_group_1_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.order_type_rules ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_type_rules then
    show.order_type_rules = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_type_rules
    changed = true
  end
  if show.order_update_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_update_message then
    show.order_update_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_order_update_message
    changed = true
  end
  if show.orders_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_group then
    show.orders_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_group
    changed = true
  end
  if show.orders_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_groups then
    show.orders_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_orders_groups
    changed = true
  end
  if show.outright_rep_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_group then
    show.outright_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_group
    changed = true
  end
  if show.outright_rep_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_groups then
    show.outright_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_rep_groups
    changed = true
  end
  if show.outright_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_standing_data_message then
    show.outright_standing_data_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_outright_standing_data_message
    changed = true
  end
  if show.package_components_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_group then
    show.package_components_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_group
    changed = true
  end
  if show.package_components_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_groups then
    show.package_components_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_package_components_groups
    changed = true
  end
  if show.packet ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet then
    show.packet = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet_flags then
    show.packet_flags = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_packet_flags
    changed = true
  end
  if show.phase_qualifier ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_phase_qualifier then
    show.phase_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_phase_qualifier
    changed = true
  end
  if show.price_update_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_price_update_message then
    show.price_update_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_price_update_message
    changed = true
  end
  if show.prices_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_group then
    show.prices_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_group
    changed = true
  end
  if show.prices_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_groups then
    show.prices_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_prices_groups
    changed = true
  end
  if show.real_time_index_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_real_time_index_message then
    show.real_time_index_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_real_time_index_message
    changed = true
  end
  if show.standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_standing_data_message then
    show.standing_data_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_standing_data_message
    changed = true
  end
  if show.start_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_day_message then
    show.start_of_day_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_snapshot_message then
    show.start_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_start_of_snapshot_message
    changed = true
  end
  if show.statistics_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_statistics_message then
    show.statistics_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_statistics_message
    changed = true
  end
  if show.strategy_authorized ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_authorized then
    show.strategy_authorized = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_authorized
    changed = true
  end
  if show.strategy_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_data_message then
    show.strategy_standing_data_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_data_message
    changed = true
  end
  if show.strategy_standing_datarep_1_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_group then
    show.strategy_standing_datarep_1_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_group
    changed = true
  end
  if show.strategy_standing_datarep_1_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_groups then
    show.strategy_standing_datarep_1_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_strategy_standing_datarep_1_groups
    changed = true
  end
  if show.technical_notification_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_technical_notification_message then
    show.technical_notification_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_technical_notification_message
    changed = true
  end
  if show.timetable_message ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetable_message then
    show.timetable_message = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetable_message
    changed = true
  end
  if show.timetables_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_group then
    show.timetables_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_group
    changed = true
  end
  if show.timetables_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_groups then
    show.timetables_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_timetables_groups
    changed = true
  end
  if show.trade_qualifier ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_trade_qualifier then
    show.trade_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_trade_qualifier
    changed = true
  end
  if show.updates_group ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_group then
    show.updates_group = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_group
    changed = true
  end
  if show.updates_groups ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_groups then
    show.updates_groups = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_updates_groups
    changed = true
  end
  if show.payload ~= euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_payload then
    show.payload = euronext_optiq_marketdatagateway_sbe_v5_39.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq MarketDataGateway Sbe 5.39
-----------------------------------------------------------------------

-- Size: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.snapshot_time = 8

-- Display: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.snapshot_time = function(value)
  return "Snapshot Time: "..value
end

-- Dissect: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.snapshot_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.snapshot_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.snapshot_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.snapshot_time, range, value, display)

  return offset + length, value
end

-- Size: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_md_seq_num = 8

-- Display: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_display.last_md_seq_num = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Md Seq Num: No Value"
  end

  return "Last Md Seq Num: "..value
end

-- Dissect: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_md_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.last_md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_md_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.snapshot_time

  return index
end

-- Display: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.end_of_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_md_seq_num(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.snapshot_time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_snapshot_message = function(buffer, offset, packet, parent)
  if show.end_of_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.end_of_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_of_snapshot_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.snapshot_time

  return index
end

-- Display: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.start_of_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_md_seq_num(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.snapshot_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_snapshot_message = function(buffer, offset, packet, parent)
  if show.start_of_snapshot_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_of_snapshot_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_snapshot_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.start_of_snapshot_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_snapshot_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Security Condition
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.security_condition = 1

-- Display: Security Condition
euronext_optiq_marketdatagateway_sbe_v5_39_display.security_condition = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Condition: No Value"
  end

  if value == "O" then
    return "Security Condition: Normal (O)"
  end
  if value == "D" then
    return "Security Condition: Ex Dividend (D)"
  end
  if value == "C" then
    return "Security Condition: Ex Cap (C)"
  end
  if value == "R" then
    return "Security Condition: Ex Rights (R)"
  end
  if value == "E" then
    return "Security Condition: Ex Entitlement (E)"
  end
  if value == "S" then
    return "Security Condition: Dealingstemporarilysuspended (S)"
  end
  if value == "N" then
    return "Security Condition: Not Listed (N)"
  end
  if value == 0 then
    return "Security Condition: No Value"
  end

  return "Security Condition: Unknown("..value..")"
end

-- Dissect: Security Condition
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.security_condition = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.security_condition
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.security_condition(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.security_condition, range, value, display)

  return offset + length, value
end

-- Size: Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time = 8

-- Display: Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.event_time = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.event_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index = 4

-- Display: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator = 1

-- Display: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.rebroadcast_indicator = function(value)
  return "Rebroadcast Indicator: "..value
end

-- Dissect: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.rebroadcast_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.rebroadcast_indicator, range, value, display)

  return offset + length, value
end

-- Size: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional = 8

-- Display: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.md_seq_num_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Seq Num Optional: No Value"
  end

  return "Md Seq Num Optional: "..value
end

-- Dissect: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.md_seq_num_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.md_seq_num_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_instrument_suspension_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.security_condition

  return index
end

-- Display: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_instrument_suspension_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_suspension_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String Enum with 8 values
  index, security_condition = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.security_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_suspension_message = function(buffer, offset, packet, parent)
  if show.bf_instrument_suspension_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_instrument_suspension_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_suspension_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_instrument_suspension_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_suspension_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_offer_price = 8

-- Display: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_offer_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Offer Price: No Value"
  end

  return "Nav Offer Price: "..value
end

-- Dissect: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_offer_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_offer_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_offer_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_bid_price = 8

-- Display: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_bid_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Bid Price: No Value"
  end

  return "Nav Bid Price: "..value
end

-- Dissect: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_bid_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_bid_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_bid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time_optional = 8

-- Display: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.event_time_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Event Time Optional: No Value"
  end

  return "Event Time Optional: "..value
end

-- Dissect: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.event_time_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.event_time_optional, range, value, display)

  return offset + length, value
end

-- Size: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_price = 8

-- Display: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Price: No Value"
  end

  return "Nav Price: "..value
end

-- Dissect: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.nav_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_price, range, value, display)

  return offset + length, value
end

-- Size: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator = 4

-- Display: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_modification_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Modification Indicator: No Value"
  end

  return "Mmt Modification Indicator: "..value
end

-- Dissect: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_transaction_id = 52

-- Display: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_transaction_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Transaction Id: No Value"
  end

  return "Mifid Transaction Id: "..value
end

-- Dissect: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_transaction_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_transaction_id
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_transaction_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_offer_date_time = 8

-- Display: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.bid_offer_date_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Offer Date Time: No Value"
  end

  return "Bid Offer Date Time: "..value
end

-- Dissect: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bid_offer_date_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_offer_date_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bid_offer_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bid_offer_date_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bfnav_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_offer_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_transaction_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_bid_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nav_offer_price

  return index
end

-- Display: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.bfnav_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bfnav_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_offer_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bid_offer_date_time(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_transaction_id(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Nav Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_price(buffer, index, packet, parent)

  -- Event Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, event_time_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time_optional(buffer, index, packet, parent)

  -- Nav Bid Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_bid_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_bid_price(buffer, index, packet, parent)

  -- Nav Offer Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_offer_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nav_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bfnav_message = function(buffer, offset, packet, parent)
  if show.bfnav_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bfnav_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bfnav_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bfnav_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bfnav_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_optional = 3

-- Display: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency Optional: No Value"
  end

  return "Trading Currency Optional: "..value
end

-- Dissect: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency_optional, range, value, display)

  return offset + length, value
end

-- Size: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_amount_traded = 8

-- Display: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_39_display.notional_amount_traded = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Notional Amount Traded: No Value"
  end

  return "Notional Amount Traded: "..value
end

-- Dissect: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_amount_traded = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_amount_traded
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.notional_amount_traded(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.notional_amount_traded, range, value, display)

  return offset + length, value
end

-- Size: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_notation = 3

-- Display: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quantity Notation: No Value"
  end

  return "Quantity Notation: "..value
end

-- Dissect: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_notation = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_notation
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation = 4

-- Display: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price Notation: No Value"
  end

  return "Mifid Price Notation: "..value
end

-- Dissect: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_notation = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_trading_mode = 1

-- Display: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_trading_mode = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mmt Trading Mode: No Value"
  end

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
  if value == "P" then
    return "Mmt Trading Mode: On Demand Auctionequal Frequent Batched Auction (P)"
  end
  if value == 0 then
    return "Mmt Trading Mode: No Value"
  end

  return "Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_trading_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_special_dividend_indicator = 4

-- Display: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_special_dividend_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Special Dividend Indicator: No Value"
  end

  return "Mmt Special Dividend Indicator: "..value
end

-- Dissect: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_special_dividend_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_benchmark_indicator = 4

-- Display: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_benchmark_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Benchmark Indicator: No Value"
  end

  return "Mmt Benchmark Indicator: "..value
end

-- Dissect: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_benchmark_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_agency_cross_trade_indicator = 4

-- Display: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_agency_cross_trade_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Agency Cross Trade Indicator: No Value"
  end

  return "Mmt Agency Cross Trade Indicator: "..value
end

-- Dissect: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_agency_cross_trade_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity = 8

-- Display: Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.offer_price = 8

-- Display: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.offer_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Price: No Value"
  end

  return "Offer Price: "..value
end

-- Dissect: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.offer_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.offer_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.offer_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_price = 8

-- Display: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.bid_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Price: No Value"
  end

  return "Bid Price: "..value
end

-- Dissect: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price = 8

-- Display: Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_trade_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_transaction_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_offer_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bid_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.offer_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_agency_cross_trade_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_benchmark_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_special_dividend_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_trading_mode

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_amount_traded

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_optional

  return index
end

-- Display: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_transaction_id(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_offer_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bid_offer_date_time(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bid_price(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.offer_price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String Nullable
  index, mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String Nullable
  index, mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String Nullable
  index, mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String Enum with 13 values
  index, mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_trading_mode(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String Nullable
  index, quantity_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_notation(buffer, index, packet, parent)

  -- Notional Amount Traded: 8 Byte Signed Fixed Width Integer Nullable
  index, notional_amount_traded = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_amount_traded(buffer, index, packet, parent)

  -- Trading Currency Optional: 3 Byte Ascii String Nullable
  index, trading_currency_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_trade_message = function(buffer, offset, packet, parent)
  if show.bf_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_trade_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date = 2

-- Display: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Interest Payment Date: No Value"
  end

  return "Interest Payment Date: "..value
end

-- Dissect: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date

  return index
end

-- Display: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date_rep_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Interest Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, interest_payment_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_group = function(buffer, offset, packet, parent)
  if show.interest_payment_date_rep_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date_rep_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_group_fields(buffer, offset, packet, element)
  end
end

-- Size: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_in_group = 1

-- Display: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length_short = 1

-- Display: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_39_display.block_length_short = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_length_short = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.block_length_short(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length_short

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_39_display.group_size_encoding = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_length_short(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.group_size_encoding, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.group_size_encoding(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local interest_payment_date_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + interest_payment_date_rep_group_count * 2

  return index
end

-- Display: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date_rep_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Interest Payment Date Rep Group
  for interest_payment_date_rep_group_index = 1, num_in_group do
    index, interest_payment_date_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_group(buffer, index, packet, parent)

    if interest_payment_date_rep_group ~= nil then
      local iteration = interest_payment_date_rep_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_group_index, interest_payment_date_rep_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.interest_payment_date_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.interest_payment_date_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.interest_payment_date_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_multiplier_decimals = 1

-- Display: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_multiplier_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Ratio Multiplier Decimals: No Value"
  end

  return "Ratio Multiplier Decimals: "..value
end

-- Dissect: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_multiplier_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_multiplier_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_multiplier_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Size: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.amount_decimals = 1

-- Display: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.amount_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Amount Decimals: No Value"
  end

  return "Amount Decimals: "..value
end

-- Dissect: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.amount_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.amount_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.amount_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.amount_decimals, range, value, display)

  return offset + length, value
end

-- Size: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_decimals = 1

-- Display: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Quantity Decimals: No Value"
  end

  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_index_level_decimals = 1

-- Display: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_index_level_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Index Level Decimals: No Value"
  end

  return "Price Index Level Decimals: "..value
end

-- Dissect: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_index_level_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_index_level_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_index_level_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_index_level_decimals, range, value, display)

  return offset + length, value
end

-- Size: Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_category = 1

-- Display: Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_category = function(value)
  if value == 1 then
    return "Instrument Category: Equities (1)"
  end
  if value == 2 then
    return "Instrument Category: Fixed Income (2)"
  end
  if value == 3 then
    return "Instrument Category: Warrants And Certificates (3)"
  end
  if value == 6 then
    return "Instrument Category: Trackers (6)"
  end
  if value == 7 then
    return "Instrument Category: Futures (7)"
  end
  if value == 10 then
    return "Instrument Category: Options (10)"
  end
  if value == 11 then
    return "Instrument Category: Indices (11)"
  end
  if value == 12 then
    return "Instrument Category: Euronext Funds Services (12)"
  end
  if value == 14 then
    return "Instrument Category: Inav Indicative Net Asset Value (14)"
  end
  if value == 15 then
    return "Instrument Category: Fund (15)"
  end
  if value == 16 then
    return "Instrument Category: Forex (16)"
  end
  if value == 254 then
    return "Instrument Category: Miscellaneous (254)"
  end

  return "Instrument Category: Unknown("..value..")"
end

-- Dissect: Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_category = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_category
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_category, range, value, display)

  return offset + length, value
end

-- Size: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.minimum_amount = 8

-- Display: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_39_display.minimum_amount = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Minimum Amount: No Value"
  end

  return "Minimum Amount: "..value
end

-- Dissect: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.minimum_amount = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.minimum_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.minimum_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.minimum_amount, range, value, display)

  return offset + length, value
end

-- Size: Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payment_frequency = 1

-- Display: Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_39_display.payment_frequency = function(value)
  if value == 1 then
    return "Payment Frequency: Annual (1)"
  end
  if value == 2 then
    return "Payment Frequency: Semi Annual (2)"
  end
  if value == 3 then
    return "Payment Frequency: Quarterly (3)"
  end
  if value == 4 then
    return "Payment Frequency: Monthly (4)"
  end
  if value == 5 then
    return "Payment Frequency: Bi Monthly (5)"
  end
  if value == 6 then
    return "Payment Frequency: Daily (6)"
  end
  if value == 7 then
    return "Payment Frequency: Migration Na (7)"
  end
  if value == 8 then
    return "Payment Frequency: Other (8)"
  end
  if value == 9 then
    return "Payment Frequency: No Coupon (9)"
  end
  if value == 10 then
    return "Payment Frequency: At Maturity (10)"
  end
  if value == 11 then
    return "Payment Frequency: Triannual (11)"
  end
  if value == 12 then
    return "Payment Frequency: Capitalization (12)"
  end
  if value == 13 then
    return "Payment Frequency: Imm Dates (13)"
  end
  if value == 14 then
    return "Payment Frequency: Bimestrial (14)"
  end
  if value == 15 then
    return "Payment Frequency: Weekly (15)"
  end
  if value == 255 then
    return "Payment Frequency: No Value"
  end

  return "Payment Frequency: Unknown("..value..")"
end

-- Dissect: Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payment_frequency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payment_frequency
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.payment_frequency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Size: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional = 6

-- Display: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.cfi_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Optional: No Value"
  end

  return "Cfi Optional: "..value
end

-- Dissect: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.cfi_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.cfi_optional, range, value, display)

  return offset + length, value
end

-- Size: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issuing_country = 3

-- Display: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_39_display.issuing_country = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuing Country: No Value"
  end

  return "Issuing Country: "..value
end

-- Dissect: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issuing_country = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issuing_country
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.issuing_country(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.issuing_country, range, value, display)

  return offset + length, value
end

-- Size: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_date = 2

-- Display: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Issue Date: No Value"
  end

  return "Issue Date: "..value
end

-- Dissect: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Size: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_in_euros = 8

-- Display: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_dividend_in_euros = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Dividend In Euros: No Value"
  end

  return "Gross Dividend In Euros: "..value
end

-- Dissect: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_dividend_in_euros = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_in_euros
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_dividend_in_euros(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_dividend_in_euros, range, value, display)

  return offset + length, value
end

-- Size: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.next_meeting = 8

-- Display: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_39_display.next_meeting = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Next Meeting: No Value"
  end

  return "Next Meeting: "..value
end

-- Dissect: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.next_meeting = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.next_meeting
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.next_meeting(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.next_meeting, range, value, display)

  return offset + length, value
end

-- Size: Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_description_attaching_to_a_dividend = 1

-- Display: Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_39_display.tax_description_attaching_to_a_dividend = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Tax Description Attaching To A Dividend: No Value"
  end

  if value == "D" then
    return "Tax Description Attaching To A Dividend: Deducedat Source (D)"
  end
  if value == 0 then
    return "Tax Description Attaching To A Dividend: No Value"
  end

  return "Tax Description Attaching To A Dividend: Unknown("..value..")"
end

-- Dissect: Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tax_description_attaching_to_a_dividend = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_description_attaching_to_a_dividend
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.tax_description_attaching_to_a_dividend(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.tax_description_attaching_to_a_dividend, range, value, display)

  return offset + length, value
end

-- Size: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_payment_date = 2

-- Display: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_payment_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dividend Payment Date: No Value"
  end

  return "Dividend Payment Date: "..value
end

-- Dissect: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_payment_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_payment_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_payment_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_payment_date, range, value, display)

  return offset + length, value
end

-- Size: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ex_dividend_date = 2

-- Display: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.ex_dividend_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Ex Dividend Date: No Value"
  end

  return "Ex Dividend Date: "..value
end

-- Dissect: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ex_dividend_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ex_dividend_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.ex_dividend_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ex_dividend_date, range, value, display)

  return offset + length, value
end

-- Size: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_rate = 8

-- Display: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_rate = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Dividend Rate: No Value"
  end

  return "Dividend Rate: "..value
end

-- Dissect: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_rate = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_rate
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_rate(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_rate, range, value, display)

  return offset + length, value
end

-- Size: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_record_date = 2

-- Display: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_record_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dividend Record Date: No Value"
  end

  return "Dividend Record Date: "..value
end

-- Dissect: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_record_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_record_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_record_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_record_date, range, value, display)

  return offset + length, value
end

-- Size: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_currency = 3

-- Display: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Dividend Currency: No Value"
  end

  return "Dividend Currency: "..value
end

-- Dissect: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dividend_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dividend_currency, range, value, display)

  return offset + length, value
end

-- Size: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_payable_per_unit = 8

-- Display: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_dividend_payable_per_unit = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Dividend Payable Per Unit: No Value"
  end

  return "Gross Dividend Payable Per Unit: "..value
end

-- Dissect: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_dividend_payable_per_unit = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_payable_per_unit
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_dividend_payable_per_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_dividend_payable_per_unit, range, value, display)

  return offset + length, value
end

-- Size: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_optional = 4

-- Display: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.mic_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "mic Optional: No Value"
  end

  return "mic Optional: "..value
end

-- Dissect: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mic_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic_optional, range, value, display)

  return offset + length, value
end

-- Size: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_price = 8

-- Display: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Closing Price: No Value"
  end

  return "Closing Price: "..value
end

-- Dissect: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date_optional = 8

-- Display: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.maturity_date_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date Optional: No Value"
  end

  return "Maturity Date Optional: "..value
end

-- Dissect: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.maturity_date_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.maturity_date_optional, range, value, display)

  return offset + length, value
end

-- Size: Coupon
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.coupon = 8

-- Display: Coupon
euronext_optiq_marketdatagateway_sbe_v5_39_display.coupon = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Coupon: No Value"
  end

  return "Coupon: "..value
end

-- Dissect: Coupon
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.coupon = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.coupon
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.coupon(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.coupon, range, value, display)

  return offset + length, value
end

-- Size: Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_of_cdsc_indicator = 1

-- Display: Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_of_cdsc_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Gross Of Cdsc Indicator: No Value"
  end

  if value == "N" then
    return "Gross Of Cdsc Indicator: No (N)"
  end
  if value == "Y" then
    return "Gross Of Cdsc Indicator: Yes (Y)"
  end
  if value == 0 then
    return "Gross Of Cdsc Indicator: No Value"
  end

  return "Gross Of Cdsc Indicator: Unknown("..value..")"
end

-- Dissect: Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_of_cdsc_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_of_cdsc_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.gross_of_cdsc_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.gross_of_cdsc_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_nav_price = 8

-- Display: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.last_nav_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Nav Price: No Value"
  end

  return "Last Nav Price: "..value
end

-- Dissect: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_nav_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_nav_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.last_nav_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_nav_price, range, value, display)

  return offset + length, value
end

-- Size: Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opened_closed_fund = 1

-- Display: Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_39_display.opened_closed_fund = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Opened Closed Fund: No Value"
  end

  if value == "O" then
    return "Opened Closed Fund: Open (O)"
  end
  if value == "C" then
    return "Opened Closed Fund: Closed (C)"
  end
  if value == 0 then
    return "Opened Closed Fund: No Value"
  end

  return "Opened Closed Fund: Unknown("..value..")"
end

-- Dissect: Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opened_closed_fund = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opened_closed_fund
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.opened_closed_fund(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.opened_closed_fund, range, value, display)

  return offset + length, value
end

-- Size: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.share_amount_in_issue = 8

-- Display: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_39_display.share_amount_in_issue = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Share Amount In Issue: No Value"
  end

  return "Share Amount In Issue: "..value
end

-- Dissect: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.share_amount_in_issue = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.share_amount_in_issue
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.share_amount_in_issue(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.share_amount_in_issue, range, value, display)

  return offset + length, value
end

-- Size: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_initial_listing = 2

-- Display: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_39_display.date_of_initial_listing = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Date Of Initial Listing: No Value"
  end

  return "Date Of Initial Listing: "..value
end

-- Dissect: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.date_of_initial_listing = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_initial_listing
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.date_of_initial_listing(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.date_of_initial_listing, range, value, display)

  return offset + length, value
end

-- Size: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_optional = 3

-- Display: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.currency_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency optional: No Value"
  end

  return "Currency optional: "..value
end

-- Dissect: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.currency_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency_optional, range, value, display)

  return offset + length, value
end

-- Size: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_instrument_name = 250

-- Display: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.long_instrument_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Instrument Name: No Value"
  end

  return "Long Instrument Name: "..value
end

-- Dissect: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_instrument_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_instrument_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.long_instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_instrument_name, range, value, display)

  return offset + length, value
end

-- Size: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_issuer_name = 250

-- Display: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.long_issuer_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Issuer Name: No Value"
  end

  return "Long Issuer Name: "..value
end

-- Dissect: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_issuer_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_issuer_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.long_issuer_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_issuer_name, range, value, display)

  return offset + length, value
end

-- Size: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.sedol_code = 7

-- Display: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.sedol_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sedol Code: No Value"
  end

  return "Sedol Code: "..value
end

-- Dissect: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.sedol_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.sedol_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.sedol_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.sedol_code, range, value, display)

  return offset + length, value
end

-- Size: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code_optional = 12

-- Display: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.isin_code_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code Optional: No Value"
  end

  return "Isin Code Optional: "..value
end

-- Dissect: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.isin_code_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.isin_code_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.isin_code_optional, range, value, display)

  return offset + length, value
end

-- Size: Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.optiq_segment = 1

-- Display: Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_39_display.optiq_segment = function(value)
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
  if value == 16 then
    return "Optiq Segment: Ibf (16)"
  end

  return "Optiq Segment: Unknown("..value..")"
end

-- Dissect: Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.optiq_segment = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.optiq_segment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.optiq_segment(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.optiq_segment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_instrument_reference_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.optiq_segment

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.sedol_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_issuer_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_instrument_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_initial_listing

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.share_amount_in_issue

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opened_closed_fund

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_nav_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_of_cdsc_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.coupon

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_payable_per_unit

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_record_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_rate

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ex_dividend_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dividend_payment_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_description_attaching_to_a_dividend

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.next_meeting

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.gross_dividend_in_euros

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issuing_country

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payment_frequency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.minimum_amount

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_category

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.security_condition

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_index_level_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.amount_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_multiplier_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.interest_payment_date_rep_groups(buffer, offset + index)

  return index
end

-- Display: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_instrument_reference_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.optiq_segment(buffer, index, packet, parent)

  -- Isin Code Optional: 12 Byte Ascii String Nullable
  index, isin_code_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.isin_code_optional(buffer, index, packet, parent)

  -- Sedol Code: 7 Byte Ascii String Nullable
  index, sedol_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.sedol_code(buffer, index, packet, parent)

  -- Long Issuer Name: 250 Byte Ascii String Nullable
  index, long_issuer_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_issuer_name(buffer, index, packet, parent)

  -- Long Instrument Name: 250 Byte Ascii String Nullable
  index, long_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_instrument_name(buffer, index, packet, parent)

  -- Currency optional: 3 Byte Ascii String Nullable
  index, currency_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency_optional(buffer, index, packet, parent)

  -- Date Of Initial Listing: 2 Byte Unsigned Fixed Width Integer Nullable
  index, date_of_initial_listing = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.date_of_initial_listing(buffer, index, packet, parent)

  -- Share Amount In Issue: 8 Byte Signed Fixed Width Integer Nullable
  index, share_amount_in_issue = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.share_amount_in_issue(buffer, index, packet, parent)

  -- Opened Closed Fund: 1 Byte Ascii String Enum with 3 values
  index, opened_closed_fund = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opened_closed_fund(buffer, index, packet, parent)

  -- Last Nav Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_nav_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_nav_price(buffer, index, packet, parent)

  -- Gross Of Cdsc Indicator: 1 Byte Ascii String Enum with 3 values
  index, gross_of_cdsc_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_of_cdsc_indicator(buffer, index, packet, parent)

  -- Coupon: 8 Byte Signed Fixed Width Integer Nullable
  index, coupon = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.coupon(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date_optional(buffer, index, packet, parent)

  -- Closing Price: 8 Byte Signed Fixed Width Integer Nullable
  index, closing_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_price(buffer, index, packet, parent)

  -- mic Optional: 4 Byte Ascii String Nullable
  index, mic_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic_optional(buffer, index, packet, parent)

  -- Gross Dividend Payable Per Unit: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_dividend_payable_per_unit = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_dividend_payable_per_unit(buffer, index, packet, parent)

  -- Dividend Currency: 3 Byte Ascii String Nullable
  index, dividend_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_currency(buffer, index, packet, parent)

  -- Dividend Record Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_record_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_record_date(buffer, index, packet, parent)

  -- Dividend Rate: 8 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_rate = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_rate(buffer, index, packet, parent)

  -- Ex Dividend Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, ex_dividend_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ex_dividend_date(buffer, index, packet, parent)

  -- Dividend Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_payment_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dividend_payment_date(buffer, index, packet, parent)

  -- Tax Description Attaching To A Dividend: 1 Byte Ascii String Enum with 2 values
  index, tax_description_attaching_to_a_dividend = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tax_description_attaching_to_a_dividend(buffer, index, packet, parent)

  -- Next Meeting: 8 Byte Ascii String Nullable
  index, next_meeting = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.next_meeting(buffer, index, packet, parent)

  -- Gross Dividend In Euros: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_dividend_in_euros = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.gross_dividend_in_euros(buffer, index, packet, parent)

  -- Issue Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, issue_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_date(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String Nullable
  index, issuing_country = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issuing_country(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi_optional(buffer, index, packet, parent)

  -- Payment Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, payment_frequency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payment_frequency(buffer, index, packet, parent)

  -- Minimum Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, minimum_amount = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.minimum_amount(buffer, index, packet, parent)

  -- Instrument Category: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, instrument_category = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_category(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String Enum with 8 values
  index, security_condition = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.security_condition(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Price Index Level Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_index_level_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_index_level_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_multiplier_decimals(buffer, index, packet, parent)

  -- Interest Payment Date Rep Groups: Struct of 2 fields
  index, interest_payment_date_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.interest_payment_date_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bf_instrument_reference_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_instrument_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.bf_instrument_reference_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bf_instrument_reference_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_reference_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_unique_identifier = 16

-- Display: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_unique_identifier = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Unique Identifier: No Value"
  end

  return "Trade Unique Identifier: "..value
end

-- Dissect: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_unique_identifier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_unique_identifier
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_unique_identifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_unique_identifier, range, value, display)

  return offset + length, value
end

-- Size: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_origin = 4

-- Display: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_origin = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Apa Origin: No Value"
  end

  return "Apa Origin: "..value
end

-- Dissect: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_origin = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_origin
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_origin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_origin, range, value, display)

  return offset + length, value
end

-- Size: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_trade_reference = 52

-- Display: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_display.long_trade_reference = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Trade Reference: No Value"
  end

  return "Long Trade Reference: "..value
end

-- Dissect: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_trade_reference = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_trade_reference
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.long_trade_reference(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_trade_reference, range, value, display)

  return offset + length, value
end

-- Size: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_emission_allowance_type = 4

-- Display: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_emission_allowance_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Emission Allowance Type: No Value"
  end

  return "Mifid Emission Allowance Type: "..value
end

-- Dissect: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_emission_allowance_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_emission_allowance_type
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_emission_allowance_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Size: Venue
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.venue = 11

-- Display: Venue
euronext_optiq_marketdatagateway_sbe_v5_39_display.venue = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Venue: No Value"
  end

  return "Venue: "..value
end

-- Dissect: Venue
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.venue = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.venue
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.venue(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.venue, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier_decimals = 1

-- Display: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_multiplier_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Multiplier Decimals: No Value"
  end

  return "Price Multiplier Decimals: "..value
end

-- Dissect: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_multiplier_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier = 4

-- Display: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_multiplier = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Price Multiplier: No Value"
  end

  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.original_report_timestamp = 8

-- Display: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_39_display.original_report_timestamp = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Original Report Timestamp: No Value"
  end

  return "Original Report Timestamp: "..value
end

-- Dissect: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.original_report_timestamp = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.original_report_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.original_report_timestamp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.original_report_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_reference = 30

-- Display: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_reference = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Reference: No Value"
  end

  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_reference = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_reference
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_reference(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_duplicative_indicator = 1

-- Display: Efficient Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_duplicative_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Duplicative Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_duplicative_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_post_trade_deferral = 1

-- Display: Efficient Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_post_trade_deferral = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Post Trade Deferral: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_post_trade_deferral
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_publication_mode = 1

-- Display: Efficient Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_publication_mode = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Publication Mode: No Value"
  end

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
    return "Efficient Mmt Publication Mode: Ilqd Size (5)"
  end
  if value == "6" then
    return "Efficient Mmt Publication Mode: Ilqd Lrgs (6)"
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_publication_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_algorithmic_indicator = 1

-- Display: Efficient Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_algorithmic_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Algorithmic Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_algorithmic_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_contributionto_price = 1

-- Display: Efficient Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_contributionto_price = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Contributionto Price: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_contributionto_price
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_off_book_automated_indicator = 1

-- Display: Efficient Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_off_book_automated_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Off Book Automated Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_off_book_automated_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_special_dividend_indicator = 1

-- Display: Efficient Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_special_dividend_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Special Dividend Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_special_dividend_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_benchmark_indicator = 1

-- Display: Efficient Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_benchmark_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Benchmark Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_benchmark_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_modification_indicator = 1

-- Display: Efficient Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_modification_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Modification Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_modification_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_agency_cross_trade_indicator = 1

-- Display: Efficient Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_agency_cross_trade_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Agency Cross Trade Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_agency_cross_trade_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_negotiation_indicator = 1

-- Display: Efficient Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_negotiation_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Negotiation Indicator: No Value"
  end

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
    return "Efficient Mmt Negotiation Indicator: Ilqd Size (6)"
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_negotiation_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_transaction_category = 1

-- Display: Efficient Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_transaction_category = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Transaction Category: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_transaction_category
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_trading_mode = 1

-- Display: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_trading_mode = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Efficient Mmt Trading Mode: No Value"
  end

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
  if value == "P" then
    return "Efficient Mmt Trading Mode: On Demand Auctionequal Frequent Batched Auction (P)"
  end
  if value == 0 then
    return "Efficient Mmt Trading Mode: No Value"
  end

  return "Efficient Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_trading_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_market_mechanism = 1

-- Display: Efficient Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_market_mechanism = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.efficient_mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.efficient_mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_clearing_flag = 5

-- Display: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_clearing_flag = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Clearing Flag: No Value"
  end

  return "Mifid Clearing Flag: "..value
end

-- Dissect: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_clearing_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_clearing_flag
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_clearing_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_clearing_flag, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_currency = 3

-- Display: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.notional_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Notional Currency: No Value"
  end

  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_notional_amount = 20

-- Display: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_notional_amount = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Notional Amount: No Value"
  end

  return "Mifid Notional Amount: "..value
end

-- Dissect: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_notional_amount = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_notional_amount
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_notional_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity_measurement_unit = 20

-- Display: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_quantity_measurement_unit = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity Measurement Unit: No Value"
  end

  return "Mifid Quantity Measurement Unit: "..value
end

-- Dissect: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity_measurement_unit = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity_measurement_unit
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_quantity_measurement_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_quantity_measurement_unit, range, value, display)

  return offset + length, value
end

-- Size: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_qty_in_msrmt_unit_notation = 25

-- Display: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_qty_in_msrmt_unit_notation = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Qty In Msrmt Unit Notation: No Value"
  end

  return "Mifid Qty In Msrmt Unit Notation: "..value
end

-- Dissect: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_qty_in_msrmt_unit_notation = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_qty_in_msrmt_unit_notation
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_qty_in_msrmt_unit_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_qty_in_msrmt_unit_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_currency = 3

-- Display: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Currency: No Value"
  end

  return "Mifid Currency: "..value
end

-- Dissect: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_currency, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity = 20

-- Display: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_quantity = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity: No Value"
  end

  return "Mifid Quantity: "..value
end

-- Dissect: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_optional = 20

-- Display: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price Optional: No Value"
  end

  return "Mifid Price Optional: "..value
end

-- Dissect: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price_optional, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_optional = 12

-- Display: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Optional: No Value"
  end

  return "Mifid Instrument Id Optional: "..value
end

-- Dissect: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type_optional = 4

-- Display: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_type_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Type Optional: No Value"
  end

  return "Mifid Instrument Id Type Optional: "..value
end

-- Dissect: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_type_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_type_optional, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_type = 1

-- Display: Trade Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_type = function(value)
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
  if value == 46 then
    return "Trade Type: Non Standard Settlement (46)"
  end
  if value == 47 then
    return "Trade Type: Repurchase Agreement Repo (47)"
  end
  if value == 48 then
    return "Trade Type: Exchange Granted Trade (48)"
  end
  if value == 49 then
    return "Trade Type: Other (49)"
  end
  if value == 50 then
    return "Trade Type: Odd Lot (50)"
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
  if value == 103 then
    return "Trade Type: Issuing Or Tender Offer Trade (103)"
  end
  if value == 104 then
    return "Trade Type: Rfq Trade (104)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Size: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.publication_date_time = 27

-- Display: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.publication_date_time = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Publication Date Time: No Value"
  end

  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.publication_date_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.publication_date_time
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.publication_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Size: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_date_time = 27

-- Display: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_date_time = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Date Time: No Value"
  end

  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_date_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_date_time
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Size: Emm
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm = 1

-- Display: Emm
euronext_optiq_marketdatagateway_sbe_v5_39_display.emm = function(value)
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

  return "Emm: Unknown("..value..")"
end

-- Dissect: Emm
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.emm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.emm, range, value, display)

  return offset + length, value
end

-- Size: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num = 8

-- Display: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_display.md_seq_num = function(value)
  return "Md Seq Num: "..value
end

-- Dissect: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.md_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_full_trade_information_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.publication_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_transaction_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_qty_in_msrmt_unit_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity_measurement_unit

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_notional_amount

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_clearing_flag

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_market_mechanism

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_trading_mode

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_transaction_category

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_negotiation_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_agency_cross_trade_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_modification_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_benchmark_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_special_dividend_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_off_book_automated_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_contributionto_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_algorithmic_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_publication_mode

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_post_trade_deferral

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.efficient_mmt_duplicative_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_reference

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.original_report_timestamp

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.venue

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_emission_allowance_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_trade_reference

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_origin

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_unique_identifier

  return index
end

-- Display: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_full_trade_information_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, trade_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type Optional: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type_optional(buffer, index, packet, parent)

  -- Mifid Instrument Id Optional: 12 Byte Ascii String Nullable
  index, mifid_instrument_id_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_optional(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_transaction_id(buffer, index, packet, parent)

  -- Mifid Price Optional: 20 Byte Ascii String Nullable
  index, mifid_price_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_optional(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_currency(buffer, index, packet, parent)

  -- Mifid Qty In Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mifid_qty_in_msrmt_unit_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_qty_in_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mifid Notional Amount: 20 Byte Ascii String Nullable
  index, mifid_notional_amount = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_currency(buffer, index, packet, parent)

  -- Mifid Clearing Flag: 5 Byte Ascii String Nullable
  index, mifid_clearing_flag = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_clearing_flag(buffer, index, packet, parent)

  -- Efficient Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, efficient_mmt_market_mechanism = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_market_mechanism(buffer, index, packet, parent)

  -- Efficient Mmt Trading Mode: 1 Byte Ascii String Enum with 13 values
  index, efficient_mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_trading_mode(buffer, index, packet, parent)

  -- Efficient Mmt Transaction Category: 1 Byte Ascii String Enum with 6 values
  index, efficient_mmt_transaction_category = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_transaction_category(buffer, index, packet, parent)

  -- Efficient Mmt Negotiation Indicator: 1 Byte Ascii String Enum with 9 values
  index, efficient_mmt_negotiation_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Agency Cross Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Modification Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_modification_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Benchmark Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Special Dividend Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_off_book_automated_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Contributionto Price: 1 Byte Ascii String Enum with 5 values
  index, efficient_mmt_contributionto_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_contributionto_price(buffer, index, packet, parent)

  -- Efficient Mmt Algorithmic Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_algorithmic_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Publication Mode: 1 Byte Ascii String Enum with 8 values
  index, efficient_mmt_publication_mode = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_publication_mode(buffer, index, packet, parent)

  -- Efficient Mmt Post Trade Deferral: 1 Byte Ascii String Enum with 13 values
  index, efficient_mmt_post_trade_deferral = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Efficient Mmt Duplicative Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_duplicative_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.efficient_mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.venue(buffer, index, packet, parent)

  -- Mifid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mifid_emission_allowance_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_emission_allowance_type(buffer, index, packet, parent)

  -- Long Trade Reference: 52 Byte Ascii String Nullable
  index, long_trade_reference = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_trade_reference(buffer, index, packet, parent)

  -- Apa Origin: 4 Byte Ascii String Nullable
  index, apa_origin = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_origin(buffer, index, packet, parent)

  -- Trade Unique Identifier: 16 Byte Ascii String Nullable
  index, trade_unique_identifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_unique_identifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_full_trade_information_message = function(buffer, offset, packet, parent)
  if show.apa_full_trade_information_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_full_trade_information_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_full_trade_information_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_full_trade_information_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_full_trade_information_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_method = 1

-- Display: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_method = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Method: No Value"
  end

  return "Settlement Method: "..value
end

-- Dissect: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_method = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_method
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_method(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_method, range, value, display)

  return offset + length, value
end

-- Size: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_date = 8

-- Display: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.expiry_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expiry Date: No Value"
  end

  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiry_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_date
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.expiry_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Size: Exer Style
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exer_style = 1

-- Display: Exer Style
euronext_optiq_marketdatagateway_sbe_v5_39_display.exer_style = function(value)
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
  if value == 5 then
    return "Exer Style: Periodic (5)"
  end
  if value == 255 then
    return "Exer Style: No Value"
  end

  return "Exer Style: Unknown("..value..")"
end

-- Dissect: Exer Style
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exer_style = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exer_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.exer_style(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.exer_style, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals = 1

-- Display: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals: No Value"
  end

  return "Strike Price Decimals: "..value
end

-- Dissect: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price = 8

-- Display: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Option Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.option_type = 1

-- Display: Option Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.option_type = function(value)
  if value == 1 then
    return "Option Type: Call (1)"
  end
  if value == 2 then
    return "Option Type: Put (2)"
  end
  if value == 3 then
    return "Option Type: Other (3)"
  end
  if value == 255 then
    return "Option Type: No Value"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.option_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.option_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.option_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_term = 8

-- Display: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_index_term = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Term: No Value"
  end

  return "Underlying Index Term: "..value
end

-- Dissect: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_index_term = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_term
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_index_term(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_index_term, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_name = 25

-- Display: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_index_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Name: No Value"
  end

  return "Underlying Index Name: "..value
end

-- Dissect: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_index_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_index_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_index_name, range, value, display)

  return offset + length, value
end

-- Size: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_isin_code = 12

-- Display: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_isin_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin Code: No Value"
  end

  return "Underlying Isin Code: "..value
end

-- Dissect: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_isin_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_isin_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_isin_code, range, value, display)

  return offset + length, value
end

-- Size: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.second_notional_currency = 3

-- Display: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.second_notional_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Second Notional Currency: No Value"
  end

  return "Second Notional Currency: "..value
end

-- Dissect: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.second_notional_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.second_notional_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.second_notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.second_notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_instrument_name = 102

-- Display: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.full_instrument_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Full Instrument Name: No Value"
  end

  return "Full Instrument Name: "..value
end

-- Dissect: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_instrument_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_instrument_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.full_instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.full_instrument_name, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id = 12

-- Display: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id: No Value"
  end

  return "Mifid Instrument Id: "..value
end

-- Dissect: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type = 4

-- Display: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Type: No Value"
  end

  return "Mifid Instrument Id Type: "..value
end

-- Dissect: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_instrument_id_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_instrument_id_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_instrument_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.second_notional_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_isin_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_index_term

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.option_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exer_style

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_method

  return index
end

-- Display: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_standing_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_instrument_name(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi_optional(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_currency(buffer, index, packet, parent)

  -- Second Notional Currency: 3 Byte Ascii String Nullable
  index, second_notional_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.second_notional_currency(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Index Name: 25 Byte Ascii String Nullable
  index, underlying_index_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_index_name(buffer, index, packet, parent)

  -- Underlying Index Term: 8 Byte Ascii String Nullable
  index, underlying_index_term = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_index_term(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, option_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.option_type(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, exer_style = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exer_style(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date_optional(buffer, index, packet, parent)

  -- Expiry Date: 8 Byte Ascii String Nullable
  index, expiry_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiry_date(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_standing_data_message = function(buffer, offset, packet, parent)
  if show.apa_standing_data_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_standing_data_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_standing_data_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_standing_data_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_standing_data_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price = 20

-- Display: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price: No Value"
  end

  return "Mifid Price: "..value
end

-- Dissect: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_price, range, value, display)

  return offset + length, value
end

-- Size: Quote Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_update_type = 1

-- Display: Quote Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.quote_update_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quote_update_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quote_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quote_update_type, range, value, display)

  return offset + length, value
end

-- Size: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lei_code = 20

-- Display: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.lei_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lei Code: No Value"
  end

  return "Lei Code: "..value
end

-- Dissect: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lei_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lei_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.lei_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.lei_code, range, value, display)

  return offset + length, value
end

-- Size: Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency = 3

-- Display: Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Mic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic = 4

-- Display: Mic
euronext_optiq_marketdatagateway_sbe_v5_39_display.mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic, range, value, display)

  return offset + length, value
end

-- Calculate size of: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_quotes_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lei_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_update_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_origin

  return index
end

-- Display: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_quotes_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_quotes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency(buffer, index, packet, parent)

  -- Lei Code: 20 Byte Ascii String
  index, lei_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lei_code(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Quote Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_update_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quote_update_type(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String
  index, mifid_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity(buffer, index, packet, parent)

  -- Apa Origin: 4 Byte Ascii String Nullable
  index, apa_origin = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_origin(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_quotes_message = function(buffer, offset, packet, parent)
  if show.apa_quotes_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.apa_quotes_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_quotes_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.apa_quotes_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_quotes_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_qty = 8

-- Display: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_last_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_px = 8

-- Display: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_last_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_ratio = 4

-- Display: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_symbol_index = 4

-- Display: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_symbol_index = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.package_components_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_ratio

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_px

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_last_qty

  return index
end

-- Display: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.package_components_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_last_px = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_qty = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_last_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_group = function(buffer, offset, packet, parent)
  if show.package_components_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.package_components_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.package_components_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local package_components_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + package_components_group_count * 24

  return index
end

-- Display: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.package_components_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Package Components Group
  for package_components_group_index = 1, num_in_group do
    index, package_components_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_group(buffer, index, packet, parent)

    if package_components_group ~= nil then
      local iteration = package_components_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_group_index, package_components_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.package_components_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.package_components_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.package_components_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.package_components_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_groups_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_code = 1

-- Display: Strategy Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_code = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Strategy Code: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_execution_id = 52

-- Display: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_execution_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Execution Id: No Value"
  end

  return "Mifid Execution Id: "..value
end

-- Dissect: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_execution_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_execution_id
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifid_execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifid_execution_id, range, value, display)

  return offset + length, value
end

-- Size: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_symbol_index = 4

-- Display: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_symbol_index = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lis_package_structure_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_execution_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.package_components_groups(buffer, offset + index)

  return index
end

-- Display: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.lis_package_structure_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lis_package_structure_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_code(buffer, index, packet, parent)

  -- Package Components Groups: Struct of 2 fields
  index, package_components_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.package_components_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lis_package_structure_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lis_package_structure_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lis_package_structure_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.lis_package_structure_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.lis_package_structure_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lis_package_structure_message_fields(buffer, offset, packet, parent)
end

-- Size: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.peg_offset = 1

-- Display: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_39_display.peg_offset = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.peg_offset
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_quantity = 8

-- Display: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Quantity: No Value"
  end

  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Side
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_side = 1

-- Display: Order Side
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_side = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Order Px
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_px = 8

-- Display: Order Px
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_px, range, value, display)

  return offset + length, value
end

-- Size: Order Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_type = 1

-- Display: Order Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.previous_priority = 8

-- Display: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_39_display.previous_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Previous Priority: No Value"
  end

  return "Previous Priority: "..value
end

-- Dissect: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.previous_priority = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.previous_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.previous_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.previous_priority, range, value, display)

  return offset + length, value
end

-- Size: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_priority = 8

-- Display: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_priority = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Size: Action Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.action_type = 1

-- Display: Action Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.action_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.action_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.action_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.action_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.orders_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.action_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_priority

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.previous_priority

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_px

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_side

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.peg_offset

  return index
end

-- Display: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.orders_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, action_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.action_type(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_priority(buffer, index, packet, parent)

  -- Previous Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, previous_priority = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.previous_priority(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, order_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_px(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_side(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_quantity(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.peg_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_group = function(buffer, offset, packet, parent)
  if show.orders_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.orders_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.orders_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + orders_group_count * 40

  return index
end

-- Display: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.orders_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Orders Group
  for orders_group_index = 1, num_in_group do
    index, orders_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_group(buffer, index, packet, parent)

    if orders_group ~= nil then
      local iteration = orders_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_group_index, orders_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.orders_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.orders_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.orders_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.orders_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_order_update_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.orders_groups(buffer, offset + index)

  return index
end

-- Display: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.long_order_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_order_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.long_order_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_order_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_order_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  return index
end

-- Display: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_rep_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_group = function(buffer, offset, packet, parent)
  if show.outright_rep_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_rep_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local outright_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + outright_rep_group_count * 1

  return index
end

-- Display: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_rep_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Outright Rep Group
  for outright_rep_group_index = 1, num_in_group do
    index, outright_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_group(buffer, index, packet, parent)

    if outright_rep_group ~= nil then
      local iteration = outright_rep_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_group_index, outright_rep_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiration_date = 2

-- Display: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.expiration_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Expiration Date: No Value"
  end

  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_multiplier = 8

-- Display: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_multiplier = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lot Multiplier: No Value"
  end

  return "Lot Multiplier: "..value
end

-- Dissect: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_multiplier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_unit = 8

-- Display: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_unit = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trading Unit: No Value"
  end

  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_unit = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_unit
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_symbol_index = 4

-- Display: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_symbol_index = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Symbol Index: No Value"
  end

  return "Underlying Symbol Index: "..value
end

-- Dissect: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_derivatives_instrument_trading_code = 18

-- Display: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_derivatives_instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Derivatives Instrument Trading Code: No Value"
  end

  return "Underlying Derivatives Instrument Trading Code: "..value
end

-- Dissect: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_derivatives_instrument_trading_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Expiry Cycle Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_cycle_type = 1

-- Display: Expiry Cycle Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.expiry_cycle_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiry_cycle_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_cycle_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.expiry_cycle_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.expiry_cycle_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_type = 1

-- Display: Derivatives Instrument Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code_optional = 18

-- Display: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_trading_code_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Derivatives Instrument Trading Code Optional: No Value"
  end

  return "Derivatives Instrument Trading Code Optional: "..value
end

-- Dissect: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_trading_code_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_trading_code_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_trading_code_optional, range, value, display)

  return offset + length, value
end

-- Size: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.days_to_expiry = 2

-- Display: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_display.days_to_expiry = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Days To Expiry: No Value"
  end

  return "Days To Expiry: "..value
end

-- Dissect: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.days_to_expiry = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.days_to_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.days_to_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.days_to_expiry, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_trading_date = 2

-- Display: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.last_trading_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Last Trading Date: No Value"
  end

  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_trading_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_trading_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size = 8

-- Display: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date = 8

-- Display: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.maturity_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code = 12

-- Display: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.isin_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code: No Value"
  end

  return "Isin Code: "..value
end

-- Dissect: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.isin_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_event_date = 2

-- Display: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_event_date = function(value)
  return "Instrument Event Date: "..value
end

-- Dissect: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_event_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_event_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_event_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_event_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_trading_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.days_to_expiry

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiry_cycle_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_derivatives_instrument_trading_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_unit

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.expiration_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_rep_groups(buffer, offset + index)

  return index
end

-- Display: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_standing_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_event_date(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.isin_code(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi_optional(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer
  index, lot_size = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price(buffer, index, packet, parent)

  -- Last Trading Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, last_trading_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_trading_date(buffer, index, packet, parent)

  -- Days To Expiry: 2 Byte Unsigned Fixed Width Integer Nullable
  index, days_to_expiry = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.days_to_expiry(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code Optional: 18 Byte Ascii String Nullable
  index, derivatives_instrument_trading_code_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_trading_code_optional(buffer, index, packet, parent)

  -- Derivatives Instrument Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, derivatives_instrument_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_type(buffer, index, packet, parent)

  -- Expiry Cycle Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, expiry_cycle_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiry_cycle_type(buffer, index, packet, parent)

  -- Underlying Derivatives Instrument Trading Code: 18 Byte Ascii String Nullable
  index, underlying_derivatives_instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_unit(buffer, index, packet, parent)

  -- Lot Multiplier: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_multiplier(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expiration_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.expiration_date(buffer, index, packet, parent)

  -- Outright Rep Groups: Struct of 2 fields
  index, outright_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.outright_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.outright_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_unhalt_delay = 4

-- Display: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_unhalt_delay = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Collar Unhalt Delay: No Value"
  end

  return "Collar Unhalt Delay: "..value
end

-- Dissect: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_unhalt_delay = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_unhalt_delay
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_unhalt_delay(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_unhalt_delay, range, value, display)

  return offset + length, value
end

-- Size: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_max_unhalt_nb = 1

-- Display: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_max_unhalt_nb = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Max Unhalt Nb: No Value"
  end

  return "Collar Max Unhalt Nb: "..value
end

-- Dissect: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_max_unhalt_nb = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_max_unhalt_nb
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_max_unhalt_nb(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_max_unhalt_nb, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Collar Logic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dynamic_collar_logic = 1

-- Display: Dynamic Collar Logic
euronext_optiq_marketdatagateway_sbe_v5_39_display.dynamic_collar_logic = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dynamic_collar_logic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dynamic_collar_logic
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dynamic_collar_logic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dynamic_collar_logic, range, value, display)

  return offset + length, value
end

-- Size: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_authorized = 8

-- Display: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_authorized = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_authorized_bits = function(buffer, offset, packet, parent)

  -- Reserved 16: 16 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_16, buffer(offset, 8))

  -- Put Straddle Versus Sell A Call Or A Put: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_straddle_versus_sell_a_call_or_a_put, buffer(offset, 8))

  -- Put Spread Versus Sell A Call: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_spread_versus_sell_a_call, buffer(offset, 8))

  -- Call Spread Versus Sell A Put: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_spread_versus_sell_a_put, buffer(offset, 8))

  -- Iron Condor: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_condor, buffer(offset, 8))

  -- Iron Condor Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_condor_versus_underlying, buffer(offset, 8))

  -- Buy Write: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.buy_write, buffer(offset, 8))

  -- Condor Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.condor_versus_underlying, buffer(offset, 8))

  -- Straddle Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_versus_underlying, buffer(offset, 8))

  -- Synthetic: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.synthetic, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Put Spread Versus Call Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.put_spread_versus_call_versus_underlying, buffer(offset, 8))

  -- Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Exchange For Physical: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.exchange_for_physical, buffer(offset, 8))

  -- Strangle Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strangle_versus_underlying, buffer(offset, 8))

  -- Combo Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.combo_versus_underlying, buffer(offset, 8))

  -- Iron Butterfly Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_butterfly_versus_underlying, buffer(offset, 8))

  -- Two By One Call Or Put Ratio Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.two_by_one_call_or_put_ratio_spread_versus_underlying, buffer(offset, 8))

  -- Guts Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.guts_versus_underlying, buffer(offset, 8))

  -- Call Put Diagonal Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_put_diagonal_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Calendar Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Spread Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_spread_versus_underlying, buffer(offset, 8))

  -- Call Spread Versus Put Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_spread_versus_put_versus_underlying, buffer(offset, 8))

  -- Butterfly Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.butterfly_versus_underlying, buffer(offset, 8))

  -- Ladder Versus Underlying: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ladder_versus_underlying, buffer(offset, 8))

  -- Reduced Tick Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reduced_tick_spread, buffer(offset, 8))

  -- Bundle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.bundle, buffer(offset, 8))

  -- Box: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.box, buffer(offset, 8))

  -- Condor: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.condor, buffer(offset, 8))

  -- Volatility Trade: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.volatility_trade, buffer(offset, 8))

  -- Straddle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle, buffer(offset, 8))

  -- Conversion Reversal: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.conversion_reversal, buffer(offset, 8))

  -- Simple Inter Commodity Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.simple_inter_commodity_spread, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_straddle_calendar_spread, buffer(offset, 8))

  -- Pack: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.pack, buffer(offset, 8))

  -- Straddle Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.straddle_calendar_spread, buffer(offset, 8))

  -- Strip: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strip, buffer(offset, 8))

  -- Ladder: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ladder, buffer(offset, 8))

  -- Strangle: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strangle, buffer(offset, 8))

  -- Combo: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.combo, buffer(offset, 8))

  -- Iron Butterfly: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.iron_butterfly, buffer(offset, 8))

  -- Two By One Ratio Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.two_by_one_ratio_spread, buffer(offset, 8))

  -- Guts: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.guts, buffer(offset, 8))

  -- Diagonal Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.diagonal_calendar_spread, buffer(offset, 8))

  -- Calendar Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.calendar_spread, buffer(offset, 8))

  -- Spread: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.spread, buffer(offset, 8))

  -- Call Or Put Cabinet: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_or_put_cabinet, buffer(offset, 8))

  -- Butterfly: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.butterfly, buffer(offset, 8))

  -- Jelly Roll: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.jelly_roll, buffer(offset, 8))
end

-- Dissect: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_authorized = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_authorized(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_authorized, range, display)

  if show.strategy_authorized then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_authorized_bits(buffer, offset, packet, element)
  end

  return offset + 8, range
end

-- Size: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size_optional = 8

-- Display: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_size_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lot Size Optional: No Value"
  end

  return "Lot Size Optional: "..value
end

-- Dissect: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.lot_size_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.lot_size_optional, range, value, display)

  return offset + length, value
end

-- Size: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pattern_id = 2

-- Display: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.pattern_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Pattern Id: No Value"
  end

  return "Pattern Id: "..value
end

-- Dissect: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pattern_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pattern_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.pattern_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.pattern_id, range, value, display)

  return offset + length, value
end

-- Size: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tick_size_index_id = 2

-- Display: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.tick_size_index_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Tick Size Index Id: No Value"
  end

  return "Tick Size Index Id: "..value
end

-- Dissect: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tick_size_index_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tick_size_index_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.tick_size_index_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.tick_size_index_id, range, value, display)

  return offset + length, value
end

-- Size: Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm_optional = 1

-- Display: Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.emm_optional = function(value)
  if value == 1 then
    return "Emm Optional: Cashand Derivative Central Order Book (1)"
  end
  if value == 2 then
    return "Emm Optional: Nav Trading Facility (2)"
  end
  if value == 4 then
    return "Emm Optional: Derivatives Wholesales (4)"
  end
  if value == 5 then
    return "Emm Optional: Cash On Exchange Offbook (5)"
  end
  if value == 6 then
    return "Emm Optional: Euronextoffexchangetradereports (6)"
  end
  if value == 7 then
    return "Emm Optional: Derivatives On Exchange Offbook (7)"
  end
  if value == 8 then
    return "Emm Optional: Etfmtfnav Central Order Book (8)"
  end
  if value == 9 then
    return "Emm Optional: Listednottraded (9)"
  end
  if value == 15 then
    return "Emm Optional: Delta Neutral Contingency Leg (15)"
  end
  if value == 99 then
    return "Emm Optional: Not Applicable (99)"
  end
  if value == 255 then
    return "Emm Optional: No Value"
  end

  return "Emm Optional: Unknown("..value..")"
end

-- Dissect: Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.emm_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.emm_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_emm_properties_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tick_size_index_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pattern_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_authorized

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dynamic_collar_logic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_max_unhalt_nb

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_unhalt_delay

  return index
end

-- Display: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_emm_properties_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm_optional(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tick_size_index_id(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pattern_id(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size_optional(buffer, index, packet, parent)

  -- Strategy Authorized: Struct of 49 fields
  index, strategy_authorized = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_authorized(buffer, index, packet, parent)

  -- Dynamic Collar Logic: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, dynamic_collar_logic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dynamic_collar_logic(buffer, index, packet, parent)

  -- Collar Max Unhalt Nb: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_max_unhalt_nb = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_max_unhalt_nb(buffer, index, packet, parent)

  -- Collar Unhalt Delay: 4 Byte Unsigned Fixed Width Integer Nullable
  index, collar_unhalt_delay = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_unhalt_delay(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_group = function(buffer, offset, packet, parent)
  if show.contract_emm_properties_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_emm_properties_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_emm_properties_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local contract_emm_properties_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + contract_emm_properties_group_count * 27

  return index
end

-- Display: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_emm_properties_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Contract Emm Properties Group
  for contract_emm_properties_group_index = 1, num_in_group do
    index, contract_emm_properties_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_group(buffer, index, packet, parent)

    if contract_emm_properties_group ~= nil then
      local iteration = contract_emm_properties_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_group_index, contract_emm_properties_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_emm_properties_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_emm_properties_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_emm_properties_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_emm_properties_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_groups_fields(buffer, offset, packet, parent)
end

-- Size: Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pricing_algorithm = 1

-- Display: Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_39_display.pricing_algorithm = function(value)
  if value == 0 then
    return "Pricing Algorithm: Standard (0)"
  end
  if value == 1 then
    return "Pricing Algorithm: Total Return Future (1)"
  end
  if value == 2 then
    return "Pricing Algorithm: Market On Close (2)"
  end
  if value == 3 then
    return "Pricing Algorithm: Standardwith Negative Prices (3)"
  end

  return "Pricing Algorithm: Unknown("..value..")"
end

-- Dissect: Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pricing_algorithm = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pricing_algorithm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.pricing_algorithm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.pricing_algorithm, range, value, display)

  return offset + length, value
end

-- Size: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifidii_liquid_flag = 1

-- Display: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_39_display.mifidii_liquid_flag = function(value)
  return "Mifidii Liquid Flag: "..value
end

-- Dissect: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifidii_liquid_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifidii_liquid_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mifidii_liquid_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mifidii_liquid_flag, range, value, display)

  return offset + length, value
end

-- Size: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_expansion_factor = 1

-- Display: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_expansion_factor = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Expansion Factor: No Value"
  end

  return "Collar Expansion Factor: "..value
end

-- Dissect: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_expansion_factor = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_expansion_factor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.collar_expansion_factor(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.collar_expansion_factor, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Trading Interruption
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_trading_interruption = 1

-- Display: Reference Price Origin In Trading Interruption
euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_trading_interruption = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_trading_interruption = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_trading_interruption
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_trading_interruption(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_trading_interruption, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_continuous = 1

-- Display: Reference Price Origin In Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_continuous = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_continuous = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_continuous
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_continuous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_continuous, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Opening Call
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_opening_call = 1

-- Display: Reference Price Origin In Opening Call
euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_opening_call = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_opening_call = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_opening_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_price_origin_in_opening_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_price_origin_in_opening_call, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Market Model
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_market_model = 1

-- Display: Derivatives Market Model
euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_market_model = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_market_model = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_market_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_market_model(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_market_model, range, value, display)

  return offset + length, value
end

-- Size: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_spread_table_id = 2

-- Display: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_spread_table_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Reference Spread Table Id: No Value"
  end

  return "Reference Spread Table Id: "..value
end

-- Dissect: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_spread_table_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_spread_table_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.reference_spread_table_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reference_spread_table_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Policy
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_policy = 1

-- Display: Trading Policy
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_policy = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_policy = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_policy
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_policy(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_policy, range, value, display)

  return offset + length, value
end

-- Size: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.edsp_tick_size = 8

-- Display: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_display.edsp_tick_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Edsp Tick Size: No Value"
  end

  return "Edsp Tick Size: "..value
end

-- Dissect: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.edsp_tick_size = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.edsp_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.edsp_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.edsp_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_tick_size = 8

-- Display: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_tick_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Settlement Tick Size: No Value"
  end

  return "Settlement Tick Size: "..value
end

-- Dissect: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_tick_size = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mother_stock_isin = 12

-- Display: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_39_display.mother_stock_isin = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mother Stock Isin: No Value"
  end

  return "Mother Stock Isin: "..value
end

-- Dissect: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mother_stock_isin = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mother_stock_isin
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mother_stock_isin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mother_stock_isin, range, value, display)

  return offset + length, value
end

-- Size: Underlying Subtype
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_subtype = 1

-- Display: Underlying Subtype
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_subtype = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_subtype = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_subtype
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_subtype(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_subtype, range, value, display)

  return offset + length, value
end

-- Size: Inst Unit Exp
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.inst_unit_exp = 1

-- Display: Inst Unit Exp
euronext_optiq_marketdatagateway_sbe_v5_39_display.inst_unit_exp = function(value)
  if value == 1 then
    return "Inst Unit Exp: Units (1)"
  end
  if value == 2 then
    return "Inst Unit Exp: Percentageof Nominal Excluding Accrued Interest Clean (2)"
  end
  if value == 3 then
    return "Inst Unit Exp: Basis Points (3)"
  end
  if value == 4 then
    return "Inst Unit Exp: Percentage Mixed (4)"
  end
  if value == 5 then
    return "Inst Unit Exp: Percentageof Nominal Including Accrued Interest Dirty (5)"
  end
  if value == 7 then
    return "Inst Unit Exp: Yield (7)"
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.inst_unit_exp = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.inst_unit_exp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.inst_unit_exp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.inst_unit_exp, range, value, display)

  return offset + length, value
end

-- Size: Contract Trading Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_trading_type = 1

-- Display: Contract Trading Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_trading_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_trading_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_trading_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_trading_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_trading_type, range, value, display)

  return offset + length, value
end

-- Size: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mm_protections = 1

-- Display: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_39_display.mm_protections = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mm_protections_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_6, buffer(offset, 1))

  -- Volume: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.volume, buffer(offset, 1))

  -- Delta: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.delta, buffer(offset, 1))
end

-- Dissect: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mm_protections = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mm_protections(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mm_protections, range, display)

  if show.mm_protections then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mm_protections_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals_ratio = 1

-- Display: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price_decimals_ratio = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals Ratio: No Value"
  end

  return "Strike Price Decimals Ratio: "..value
end

-- Dissect: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price_decimals_ratio = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_price_decimals_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_price_decimals_ratio, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency = 3

-- Display: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency: No Value"
  end

  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Size: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_type_rules = 2

-- Display: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_type_rules = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type_rules_bits = function(buffer, offset, packet, parent)

  -- Reserved 10: 10 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_10, buffer(offset, 2))

  -- Trade At Settlement: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_at_settlement, buffer(offset, 2))

  -- Market On Open Moo: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_on_open_moo, buffer(offset, 2))

  -- Stop Limit: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.stop_limit, buffer(offset, 2))

  -- Stop Stop Loss: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.stop_stop_loss, buffer(offset, 2))

  -- Limit: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.limit, buffer(offset, 2))

  -- Market: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market, buffer(offset, 2))
end

-- Dissect: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type_rules = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_type_rules(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_type_rules, range, display)

  if show.order_type_rules then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type_rules_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_expiry = 4

-- Display: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_expiry = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Expiry: No Value"
  end

  return "Underlying Expiry: "..value
end

-- Dissect: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_expiry = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_expiry, range, value, display)

  return offset + length, value
end

-- Size: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_mic = 4

-- Display: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Mic: No Value"
  end

  return "Underlying Mic: "..value
end

-- Dissect: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_mic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_mic
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_mic, range, value, display)

  return offset + length, value
end

-- Size: Product Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.product_code = 4

-- Display: Product Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.product_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Code: No Value"
  end

  return "Product Code: "..value
end

-- Dissect: Product Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.product_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.product_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.product_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.product_code, range, value, display)

  return offset + length, value
end

-- Size: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange = 3

-- Display: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_39_display.country_of_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Exchange: No Value"
  end

  return "Country Of Exchange: "..value
end

-- Dissect: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.country_of_exchange = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.country_of_exchange(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.country_of_exchange, range, value, display)

  return offset + length, value
end

-- Size: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.main_depositary = 5

-- Display: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_39_display.main_depositary = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Main Depositary: No Value"
  end

  return "Main Depositary: "..value
end

-- Dissect: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.main_depositary = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.main_depositary
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.main_depositary(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Size: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals_optional = 1

-- Display: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_decimals_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Ratio Decimals Optional: No Value"
  end

  return "Ratio Decimals Optional: "..value
end

-- Dissect: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_decimals_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_decimals_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_decimals_optional, range, value, display)

  return offset + length, value
end

-- Size: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals_optional = 1

-- Display: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_decimals_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Decimals Optional: No Value"
  end

  return "Price Decimals Optional: "..value
end

-- Dissect: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_decimals_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_decimals_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_decimals_optional, range, value, display)

  return offset + length, value
end

-- Size: Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_type = 1

-- Display: Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Underlying Type: No Value"
  end

  if value == "A" then
    return "Underlying Type: Basketwith Commodity (A)"
  end
  if value == "B" then
    return "Underlying Type: Basket (B)"
  end
  if value == "C" then
    return "Underlying Type: Commodity (C)"
  end
  if value == "D" then
    return "Underlying Type: Depositary Receipt (D)"
  end
  if value == "F" then
    return "Underlying Type: Future (F)"
  end
  if value == "G" then
    return "Underlying Type: Currency Leveraged Index (G)"
  end
  if value == "H" then
    return "Underlying Type: Other (H)"
  end
  if value == "I" then
    return "Underlying Type: Index (I)"
  end
  if value == "J" then
    return "Underlying Type: Bonds (J)"
  end
  if value == "K" then
    return "Underlying Type: Stock Dividend (K)"
  end
  if value == "L" then
    return "Underlying Type: Leveraged Index (L)"
  end
  if value == "N" then
    return "Underlying Type: Interest Rate (N)"
  end
  if value == "O" then
    return "Underlying Type: Other Derivative (O)"
  end
  if value == "P" then
    return "Underlying Type: Commodity Index (P)"
  end
  if value == "Q" then
    return "Underlying Type: Commodity Leveraged Index (Q)"
  end
  if value == "R" then
    return "Underlying Type: Right (R)"
  end
  if value == "S" then
    return "Underlying Type: Stock (S)"
  end
  if value == "T" then
    return "Underlying Type: Credit (T)"
  end
  if value == "U" then
    return "Underlying Type: Fund (U)"
  end
  if value == "V" then
    return "Underlying Type: Currency (V)"
  end
  if value == "W" then
    return "Underlying Type: Stock Warrant (W)"
  end
  if value == "X" then
    return "Underlying Type: Exchange Rate (X)"
  end
  if value == "Z" then
    return "Underlying Type: Security Leveraged Index (Z)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.underlying_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_type = 1

-- Display: Contract Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Contract Type: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_name = 60

-- Display: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contract Name: No Value"
  end

  return "Contract Name: "..value
end

-- Dissect: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_name, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exchange_code = 1

-- Display: Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.exchange_code = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exchange Code: No Value"
  end

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
  if value == "U" then
    return "Exchange Code: Milan Cash Underlying (U)"
  end
  if value == "I" then
    return "Exchange Code: Milan Index Derivatives (I)"
  end
  if value == "E" then
    return "Exchange Code: Milan Equity Derivatives (E)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exchange_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_event_date = 2

-- Display: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_event_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Contract Event Date: No Value"
  end

  return "Contract Event Date: "..value
end

-- Dissect: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_event_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_event_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_event_date, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.partition_id = 2

-- Display: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.partition_id = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.partition_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.partition_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.optiq_segment

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.partition_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_event_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exchange_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exer_style

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.amount_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.main_depositary

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.product_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_isin_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_expiry

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_type_rules

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_method

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals_ratio

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mm_protections

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_trading_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.inst_unit_exp

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_subtype

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mother_stock_isin

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_tick_size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.edsp_tick_size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_policy

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_spread_table_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_market_model

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_unit

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_opening_call

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_continuous

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.reference_price_origin_in_trading_interruption

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.collar_expansion_factor

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifidii_liquid_flag

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pricing_algorithm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_emm_properties_groups(buffer, offset + index)

  return index
end

-- Display: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_standing_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.partition_id(buffer, index, packet, parent)

  -- Contract Event Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, contract_event_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_event_date(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 21 values
  index, exchange_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exchange_code(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, exer_style = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exer_style(buffer, index, packet, parent)

  -- Contract Name: 60 Byte Ascii String
  index, contract_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_name(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 4 values
  index, contract_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_type(buffer, index, packet, parent)

  -- Underlying Type: 1 Byte Ascii String Enum with 23 values
  index, underlying_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_type(buffer, index, packet, parent)

  -- Price Decimals Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_decimals_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_decimals_optional(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_decimals_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_decimals_optional(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.main_depositary(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String
  index, country_of_exchange = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.country_of_exchange(buffer, index, packet, parent)

  -- Product Code: 4 Byte Ascii String
  index, product_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.product_code(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Expiry: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_expiry = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_expiry(buffer, index, packet, parent)

  -- Order Type Rules: Struct of 7 fields
  index, order_type_rules = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_type_rules(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_method(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency(buffer, index, packet, parent)

  -- Strike Price Decimals Ratio: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals_ratio = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price_decimals_ratio(buffer, index, packet, parent)

  -- Mm Protections: Struct of 3 fields
  index, mm_protections = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mm_protections(buffer, index, packet, parent)

  -- Contract Trading Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, contract_trading_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_trading_type(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Underlying Subtype: 1 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, underlying_subtype = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_subtype(buffer, index, packet, parent)

  -- Mother Stock Isin: 12 Byte Ascii String Nullable
  index, mother_stock_isin = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mother_stock_isin(buffer, index, packet, parent)

  -- Settlement Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_tick_size = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_tick_size(buffer, index, packet, parent)

  -- Edsp Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, edsp_tick_size = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.edsp_tick_size(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Policy: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_policy = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_policy(buffer, index, packet, parent)

  -- Reference Spread Table Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, reference_spread_table_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_spread_table_id(buffer, index, packet, parent)

  -- Derivatives Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, derivatives_market_model = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_market_model(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_unit(buffer, index, packet, parent)

  -- Reference Price Origin In Opening Call: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_opening_call = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_opening_call(buffer, index, packet, parent)

  -- Reference Price Origin In Continuous: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_continuous = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_continuous(buffer, index, packet, parent)

  -- Reference Price Origin In Trading Interruption: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_trading_interruption = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.reference_price_origin_in_trading_interruption(buffer, index, packet, parent)

  -- Collar Expansion Factor: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_expansion_factor = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.collar_expansion_factor(buffer, index, packet, parent)

  -- Mifidii Liquid Flag: 1 Byte Unsigned Fixed Width Integer
  index, mifidii_liquid_flag = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifidii_liquid_flag(buffer, index, packet, parent)

  -- Pricing Algorithm: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, pricing_algorithm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pricing_algorithm(buffer, index, packet, parent)

  -- Lot Multiplier: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_multiplier(buffer, index, packet, parent)

  -- Contract Emm Properties Groups: Struct of 2 fields
  index, contract_emm_properties_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_emm_properties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.contract_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.contract_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_buy_sell = 1

-- Display: Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_buy_sell = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Buy Sell: No Value"
  end

  if value == "B" then
    return "Leg Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Leg Buy Sell: Sell (S)"
  end

  return "Leg Buy Sell: Unknown("..value..")"
end

-- Dissect: Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_buy_sell = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_buy_sell
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_buy_sell(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_price = 8

-- Display: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.leg_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_datarep_1_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_ratio

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.leg_buy_sell

  return index
end

-- Display: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_datarep_1_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_price(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Buy Sell: 1 Byte Ascii String Enum with 2 values
  index, leg_buy_sell = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.leg_buy_sell(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_group = function(buffer, offset, packet, parent)
  if show.strategy_standing_datarep_1_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_datarep_1_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_datarep_1_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_standing_datarep_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_standing_datarep_1_group_count * 17

  return index
end

-- Display: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_datarep_1_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Strategy Standing Datarep 1 Group
  for strategy_standing_datarep_1_group_index = 1, num_in_group do
    index, strategy_standing_datarep_1_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_group(buffer, index, packet, parent)

    if strategy_standing_datarep_1_group ~= nil then
      local iteration = strategy_standing_datarep_1_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_group_index, strategy_standing_datarep_1_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_datarep_1_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_datarep_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_datarep_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_datarep_1_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_groups_fields(buffer, offset, packet, parent)
end

-- Size: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code = 18

-- Display: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Derivatives Instrument Trading Code: No Value"
  end

  return "Derivatives Instrument Trading Code: "..value
end

-- Dissect: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_data_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.derivatives_instrument_trading_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.exchange_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_datarep_1_groups(buffer, offset + index)

  return index
end

-- Display: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String
  index, derivatives_instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 21 values
  index, exchange_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.exchange_code(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_code(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi_optional(buffer, index, packet, parent)

  -- Strategy Standing Datarep 1 Groups: Struct of 2 fields
  index, strategy_standing_datarep_1_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_datarep_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strategy_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strategy_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_time = 8

-- Display: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.liquidation_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Liquidation Time: No Value"
  end

  return "Liquidation Time: "..value
end

-- Dissect: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquidation_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.liquidation_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquidation_time, range, value, display)

  return offset + length, value
end

-- Size: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_level = 8

-- Display: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.liquidation_level = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Liquidation Level: No Value"
  end

  return "Liquidation Level: "..value
end

-- Dissect: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquidation_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.liquidation_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquidation_level, range, value, display)

  return offset + length, value
end

-- Size: Low Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_time = 8

-- Display: Low Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.low_time = function(value)
  return "Low Time: "..value
end

-- Dissect: Low Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.low_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.low_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.low_time, range, value, display)

  return offset + length, value
end

-- Size: Low Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_level = 8

-- Display: Low Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.low_level = function(value)
  return "Low Level: "..value
end

-- Dissect: Low Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.low_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.low_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.low_level, range, value, display)

  return offset + length, value
end

-- Size: High Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_time = 8

-- Display: High Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.high_time = function(value)
  return "High Time: "..value
end

-- Dissect: High Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.high_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.high_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.high_time, range, value, display)

  return offset + length, value
end

-- Size: High Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_level = 8

-- Display: High Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.high_level = function(value)
  return "High Level: "..value
end

-- Dissect: High Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.high_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.high_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.high_level, range, value, display)

  return offset + length, value
end

-- Size: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prct_varfrom_prev_close = 8

-- Display: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_39_display.prct_varfrom_prev_close = function(value)
  return "Prct Varfrom Prev Close: "..value
end

-- Dissect: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prct_varfrom_prev_close = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prct_varfrom_prev_close
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.prct_varfrom_prev_close(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.prct_varfrom_prev_close, range, value, display)

  return offset + length, value
end

-- Size: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_time = 8

-- Display: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_reference_time = function(value)
  return "Closing Reference Time: "..value
end

-- Dissect: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_reference_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_reference_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_reference_time, range, value, display)

  return offset + length, value
end

-- Size: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_level = 8

-- Display: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_reference_level = function(value)
  return "Closing Reference Level: "..value
end

-- Dissect: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_reference_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.closing_reference_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.closing_reference_level, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_time = 8

-- Display: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.confirmed_reference_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Confirmed Reference Time: No Value"
  end

  return "Confirmed Reference Time: "..value
end

-- Dissect: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.confirmed_reference_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.confirmed_reference_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.confirmed_reference_time, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_level = 8

-- Display: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.confirmed_reference_level = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Confirmed Reference Level: No Value"
  end

  return "Confirmed Reference Level: "..value
end

-- Dissect: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.confirmed_reference_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.confirmed_reference_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.confirmed_reference_level, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_time = 8

-- Display: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_level = 8

-- Display: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.opening_level = function(value)
  return "Opening Level: "..value
end

-- Dissect: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opening_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.opening_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.opening_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_summary_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.opening_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.confirmed_reference_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.closing_reference_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prct_varfrom_prev_close

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.high_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.low_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquidation_time

  return index
end

-- Display: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.index_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Opening Level: 8 Byte Signed Fixed Width Integer
  index, opening_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opening_level(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Unsigned Fixed Width Integer
  index, opening_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.opening_time(buffer, index, packet, parent)

  -- Confirmed Reference Level: 8 Byte Signed Fixed Width Integer Nullable
  index, confirmed_reference_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.confirmed_reference_level(buffer, index, packet, parent)

  -- Confirmed Reference Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, confirmed_reference_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.confirmed_reference_time(buffer, index, packet, parent)

  -- Closing Reference Level: 8 Byte Signed Fixed Width Integer
  index, closing_reference_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_reference_level(buffer, index, packet, parent)

  -- Closing Reference Time: 8 Byte Unsigned Fixed Width Integer
  index, closing_reference_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.closing_reference_time(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prct_varfrom_prev_close(buffer, index, packet, parent)

  -- High Level: 8 Byte Signed Fixed Width Integer
  index, high_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.high_level(buffer, index, packet, parent)

  -- High Time: 8 Byte Unsigned Fixed Width Integer
  index, high_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.high_time(buffer, index, packet, parent)

  -- Low Level: 8 Byte Signed Fixed Width Integer
  index, low_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.low_level(buffer, index, packet, parent)

  -- Low Time: 8 Byte Unsigned Fixed Width Integer
  index, low_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.low_time(buffer, index, packet, parent)

  -- Liquidation Level: 8 Byte Signed Fixed Width Integer Nullable
  index, liquidation_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquidation_level(buffer, index, packet, parent)

  -- Liquidation Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, liquidation_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquidation_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_summary_message = function(buffer, offset, packet, parent)
  if show.index_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_summary_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.index_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_value = 8

-- Display: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_39_display.stats_update_value = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stats Update Value: No Value"
  end

  return "Stats Update Value: "..value
end

-- Dissect: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.stats_update_value = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_value
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.stats_update_value(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.stats_update_value, range, value, display)

  return offset + length, value
end

-- Size: Stats Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_type = 1

-- Display: Stats Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.stats_update_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.stats_update_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.stats_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.stats_update_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.new_stats_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.stats_update_value

  return index
end

-- Display: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.new_stats_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stats Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, stats_update_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.stats_update_type(buffer, index, packet, parent)

  -- Stats Update Value: 8 Byte Signed Fixed Width Integer Nullable
  index, stats_update_value = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.stats_update_value(buffer, index, packet, parent)

  return index
end

-- Dissect: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_group = function(buffer, offset, packet, parent)
  if show.new_stats_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.new_stats_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.new_stats_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local new_stats_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + new_stats_group_count * 9

  return index
end

-- Display: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.new_stats_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: New Stats Group
  for new_stats_group_index = 1, num_in_group do
    index, new_stats_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_group(buffer, index, packet, parent)

    if new_stats_group ~= nil then
      local iteration = new_stats_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_group_index, new_stats_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_stats_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.new_stats_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.new_stats_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.new_stats_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.new_stats_groups(buffer, offset + index)

  return index
end

-- Display: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.statistics_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- New Stats Groups: Struct of 2 fields
  index, new_stats_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.new_stats_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.statistics_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.statistics_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.statistics_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.statistics_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.statistics_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.statistics_message_fields(buffer, offset, packet, parent)
end

-- Size: Index Price Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_price_code = 1

-- Display: Index Price Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.index_price_code = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_price_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_price_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.index_price_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_price_code, range, value, display)

  return offset + length, value
end

-- Size: Index Level Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level_type = 1

-- Display: Index Level Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.index_level_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_level_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.index_level_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_level_type, range, value, display)

  return offset + length, value
end

-- Size: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_traded_instruments = 2

-- Display: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_39_display.num_traded_instruments = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Num Traded Instruments: No Value"
  end

  return "Num Traded Instruments: "..value
end

-- Dissect: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.num_traded_instruments = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_traded_instruments
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.num_traded_instruments(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.num_traded_instruments, range, value, display)

  return offset + length, value
end

-- Size: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pctg_of_capitalization = 8

-- Display: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_39_display.pctg_of_capitalization = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Pctg Of Capitalization: No Value"
  end

  return "Pctg Of Capitalization: "..value
end

-- Dissect: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pctg_of_capitalization = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pctg_of_capitalization
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.pctg_of_capitalization(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.pctg_of_capitalization, range, value, display)

  return offset + length, value
end

-- Size: Index Level
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level = 8

-- Display: Index Level
euronext_optiq_marketdatagateway_sbe_v5_39_display.index_level = function(value)
  return "Index Level: "..value
end

-- Dissect: Index Level
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_level = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.index_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.index_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.real_time_index_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pctg_of_capitalization

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prct_varfrom_prev_close

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.num_traded_instruments

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_level_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_price_code

  return index
end

-- Display: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.real_time_index_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.real_time_index_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Index Level: 8 Byte Signed Fixed Width Integer
  index, index_level = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_level(buffer, index, packet, parent)

  -- Pctg Of Capitalization: 8 Byte Unsigned Fixed Width Integer Nullable
  index, pctg_of_capitalization = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pctg_of_capitalization(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prct_varfrom_prev_close(buffer, index, packet, parent)

  -- Num Traded Instruments: 2 Byte Unsigned Fixed Width Integer Nullable
  index, num_traded_instruments = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.num_traded_instruments(buffer, index, packet, parent)

  -- Index Level Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, index_level_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_level_type(buffer, index, packet, parent)

  -- Index Price Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, index_price_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_price_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.real_time_index_message = function(buffer, offset, packet, parent)
  if show.real_time_index_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.real_time_index_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.real_time_index_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.real_time_index_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.real_time_index_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Anonymous
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.anonymous = 1

-- Display: Anonymous
euronext_optiq_marketdatagateway_sbe_v5_39_display.anonymous = function(value)
  if value == 0 then
    return "Anonymous: No (0)"
  end
  if value == 1 then
    return "Anonymous: Yes (1)"
  end
  if value == 255 then
    return "Anonymous: No Value"
  end

  return "Anonymous: Unknown("..value..")"
end

-- Dissect: Anonymous
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.anonymous = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.anonymous
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.anonymous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.anonymous, range, value, display)

  return offset + length, value
end

-- Size: Market Model
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_model = 1

-- Display: Market Model
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_model = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_model = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_model(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_model, range, value, display)

  return offset + length, value
end

-- Calculate size of: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.em_m_pattern_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pattern_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tick_size_index_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_model

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.inst_unit_exp

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.anonymous

  return index
end

-- Display: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.em_m_pattern_rep_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pattern_id(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tick_size_index_id(buffer, index, packet, parent)

  -- Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, market_model = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_model(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size_optional(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Anonymous: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, anonymous = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.anonymous(buffer, index, packet, parent)

  return index
end

-- Dissect: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_group = function(buffer, offset, packet, parent)
  if show.em_m_pattern_rep_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.em_m_pattern_rep_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.em_m_pattern_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local em_m_pattern_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + em_m_pattern_rep_group_count * 16

  return index
end

-- Display: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.em_m_pattern_rep_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Em M Pattern Rep Group
  for em_m_pattern_rep_group_index = 1, num_in_group do
    index, em_m_pattern_rep_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_group(buffer, index, packet, parent)

    if em_m_pattern_rep_group ~= nil then
      local iteration = em_m_pattern_rep_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_group_index, em_m_pattern_rep_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.em_m_pattern_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.em_m_pattern_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.em_m_pattern_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.em_m_pattern_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pool_factor = 4

-- Display: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_39_display.pool_factor = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Pool Factor: No Value"
  end

  return "Pool Factor: "..value
end

-- Dissect: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pool_factor = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pool_factor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.pool_factor(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.pool_factor, range, value, display)

  return offset + length, value
end

-- Size: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_continuous = 8

-- Display: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_quantity_continuous = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Quantity Continuous: No Value"
  end

  return "Max Order Quantity Continuous: "..value
end

-- Dissect: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_quantity_continuous = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_continuous
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_quantity_continuous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_quantity_continuous, range, value, display)

  return offset + length, value
end

-- Size: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_call = 8

-- Display: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_quantity_call = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Quantity Call: No Value"
  end

  return "Max Order Quantity Call: "..value
end

-- Dissect: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_quantity_call = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_call
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_quantity_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_quantity_call, range, value, display)

  return offset + length, value
end

-- Size: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_continuous = 8

-- Display: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_amount_continuous = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Amount Continuous: No Value"
  end

  return "Max Order Amount Continuous: "..value
end

-- Dissect: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_amount_continuous = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_continuous
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_amount_continuous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_amount_continuous, range, value, display)

  return offset + length, value
end

-- Size: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_call = 8

-- Display: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_amount_call = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Amount Call: No Value"
  end

  return "Max Order Amount Call: "..value
end

-- Dissect: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_amount_call = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_call
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.max_order_amount_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.max_order_amount_call, range, value, display)

  return offset + length, value
end

-- Size: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_mnemonic = 6

-- Display: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_display.long_mnemonic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Mnemonic: No Value"
  end

  return "Long Mnemonic: "..value
end

-- Dissect: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_mnemonic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_mnemonic
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.long_mnemonic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.long_mnemonic, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_eod = 8

-- Display: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_eod = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade Eod: No Value"
  end

  return "Threshold Lis Post Trade Eod: "..value
end

-- Dissect: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_eod = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_eod
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_eod(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_eod, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_120mn = 8

-- Display: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_120mn = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 120mn: No Value"
  end

  return "Threshold Lis Post Trade 120mn: "..value
end

-- Dissect: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_120mn = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_120mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_120mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_120mn, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_60mn = 8

-- Display: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_60mn = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 60mn: No Value"
  end

  return "Threshold Lis Post Trade 60mn: "..value
end

-- Dissect: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_60mn = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_60mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.threshold_lis_post_trade_60mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.threshold_lis_post_trade_60mn, range, value, display)

  return offset + length, value
end

-- Size: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb_code = 8

-- Display: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.icb_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb Code: No Value"
  end

  return "Icb Code: "..value
end

-- Dissect: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.icb_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.icb_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.icb_code, range, value, display)

  return offset + length, value
end

-- Size: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_of_reference_mic = 4

-- Display: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_of_reference_mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Of Reference Mic: No Value"
  end

  return "Market Of Reference Mic: "..value
end

-- Dissect: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_of_reference_mic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_of_reference_mic
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_of_reference_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_of_reference_mic, range, value, display)

  return offset + length, value
end

-- Size: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquid_instrument_indicator = 1

-- Display: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.liquid_instrument_indicator = function(value)
  -- Check if field has value
  if value == 255 then
    return "Liquid Instrument Indicator: No Value"
  end

  return "Liquid Instrument Indicator: "..value
end

-- Dissect: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquid_instrument_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquid_instrument_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.liquid_instrument_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.liquid_instrument_indicator, range, value, display)

  return offset + length, value
end

-- Size: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price_decimals = 1

-- Display: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_price_decimals = function(value)
  -- Check if field has value
  if value == 255 then
    return "Issue Price Decimals: No Value"
  end

  return "Issue Price Decimals: "..value
end

-- Dissect: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_price_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nominal_currency = 3

-- Display: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.nominal_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nominal Currency: No Value"
  end

  return "Nominal Currency: "..value
end

-- Dissect: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nominal_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nominal_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.nominal_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nominal_currency, range, value, display)

  return offset + length, value
end

-- Size: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price = 8

-- Display: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Issue Price: No Value"
  end

  return "Issue Price: "..value
end

-- Dissect: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.issue_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.issue_price, range, value, display)

  return offset + length, value
end

-- Size: Repo Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_indicator = 1

-- Display: Repo Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.repo_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.repo_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.repo_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market Admission
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_market_admission = 1

-- Display: Type Of Market Admission
euronext_optiq_marketdatagateway_sbe_v5_39_display.type_of_market_admission = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Type Of Market Admission: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.type_of_market_admission = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_market_admission
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.type_of_market_admission(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Size: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_corporate_event = 2

-- Display: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_39_display.type_of_corporate_event = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Type Of Corporate Event: No Value"
  end

  return "Type Of Corporate Event: "..value
end

-- Dissect: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.type_of_corporate_event = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_corporate_event
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.type_of_corporate_event(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Size: Tax Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_code = 1

-- Display: Tax Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.tax_code = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tax_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.tax_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency = 3

-- Display: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_delay = 2

-- Display: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_delay = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Delay: No Value"
  end

  return "Settlement Delay: "..value
end

-- Dissect: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_delay = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_delay
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_delay(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_delay, range, value, display)

  return offset + length, value
end

-- Size: Par Value
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.par_value = 8

-- Display: Par Value
euronext_optiq_marketdatagateway_sbe_v5_39_display.par_value = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Par Value: No Value"
  end

  return "Par Value: "..value
end

-- Dissect: Par Value
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.par_value = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.par_value
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.par_value(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.par_value, range, value, display)

  return offset + length, value
end

-- Size: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_instrument_circulating = 8

-- Display: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_39_display.number_instrument_circulating = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Number Instrument Circulating: No Value"
  end

  return "Number Instrument Circulating: "..value
end

-- Dissect: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.number_instrument_circulating = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_instrument_circulating
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.number_instrument_circulating(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.number_instrument_circulating, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency_indicator = 1

-- Display: Strike Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_currency_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_currency_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.strike_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_indicator = 1

-- Display: Trading Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_coefficient = 4

-- Display: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_39_display.currency_coefficient = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Currency Coefficient: No Value"
  end

  return "Currency Coefficient: "..value
end

-- Dissect: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency_coefficient = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_coefficient
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.currency_coefficient(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.currency_coefficient, range, value, display)

  return offset + length, value
end

-- Size: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mnemonic = 5

-- Display: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_display.mnemonic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mnemonic: No Value"
  end

  return "Mnemonic: "..value
end

-- Dissect: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mnemonic = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mnemonic
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mnemonic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mnemonic, range, value, display)

  return offset + length, value
end

-- Size: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange_optional = 3

-- Display: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.country_of_exchange_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Exchange Optional: No Value"
  end

  return "Country Of Exchange Optional: "..value
end

-- Dissect: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.country_of_exchange_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.country_of_exchange_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.country_of_exchange_optional, range, value, display)

  return offset + length, value
end

-- Size: Mic List
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_list = 20

-- Display: Mic List
euronext_optiq_marketdatagateway_sbe_v5_39_display.mic_list = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic List: No Value"
  end

  return "Mic List: "..value
end

-- Dissect: Mic List
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic_list = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_list
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mic_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Size: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maximum_decimals_in_quantity = 1

-- Display: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_display.maximum_decimals_in_quantity = function(value)
  -- Check if field has value
  if value == 255 then
    return "Maximum Decimals In Quantity: No Value"
  end

  return "Maximum Decimals In Quantity: "..value
end

-- Dissect: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maximum_decimals_in_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maximum_decimals_in_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.maximum_decimals_in_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.maximum_decimals_in_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_adjusted_closing_price = 8

-- Display: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.last_adjusted_closing_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Adjusted Closing Price: No Value"
  end

  return "Last Adjusted Closing Price: "..value
end

-- Dissect: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_adjusted_closing_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_adjusted_closing_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.last_adjusted_closing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.last_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Icb
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb = 16

-- Display: Icb
euronext_optiq_marketdatagateway_sbe_v5_39_display.icb = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb: No Value"
  end

  return "Icb: "..value
end

-- Dissect: Icb
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.icb = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.icb(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.icb, range, value, display)

  return offset + length, value
end

-- Size: Guarantee Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.guarantee_indicator = 1

-- Display: Guarantee Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.guarantee_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.guarantee_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.guarantee_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.guarantee_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.guarantee_indicator, range, value, display)

  return offset + length, value
end

-- Size: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.first_settlement_date = 2

-- Display: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.first_settlement_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "First Settlement Date: No Value"
  end

  return "First Settlement Date: "..value
end

-- Dissect: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.first_settlement_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.first_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.first_settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.depositary_list = 20

-- Display: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_39_display.depositary_list = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Depositary List: No Value"
  end

  return "Depositary List: "..value
end

-- Dissect: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.depositary_list = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.depositary_list
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.depositary_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.depositary_list, range, value, display)

  return offset + length, value
end

-- Size: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_last_trade = 2

-- Display: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_39_display.date_of_last_trade = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Date Of Last Trade: No Value"
  end

  return "Date Of Last Trade: "..value
end

-- Dissect: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.date_of_last_trade = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_last_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.date_of_last_trade(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Size: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_min_quantity = 4

-- Display: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_min_quantity = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Dark Min Quantity: No Value"
  end

  return "Dark Min Quantity: "..value
end

-- Dissect: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_min_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_min_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_min_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_min_quantity, range, value, display)

  return offset + length, value
end

-- Size: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_lis_threshold = 8

-- Display: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_lis_threshold = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Dark Lis Threshold: No Value"
  end

  return "Dark Lis Threshold: "..value
end

-- Dissect: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_lis_threshold = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_lis_threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_lis_threshold(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_lis_threshold, range, value, display)

  return offset + length, value
end

-- Size: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_eligibility = 1

-- Display: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_eligibility = function(value)
  -- Check if field has value
  if value == 255 then
    return "Dark Eligibility: No Value"
  end

  return "Dark Eligibility: "..value
end

-- Dissect: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_eligibility = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_eligibility
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.dark_eligibility(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.dark_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Cfi
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi = 6

-- Display: Cfi
euronext_optiq_marketdatagateway_sbe_v5_39_display.cfi = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi: No Value"
  end

  return "Cfi: "..value
end

-- Dissect: Cfi
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.cfi(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.cfi, range, value, display)

  return offset + length, value
end

-- Size: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals = 1

-- Display: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_decimals = function(value)
  return "Ratio Decimals: "..value
end

-- Dissect: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.ratio_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.ratio_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals = 1

-- Display: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_decimals = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_decimals = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_group_code = 2

-- Display: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_group_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_group_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_group_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_trading_code = 15

-- Display: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_trading_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Trading Code: No Value"
  end

  return "Instrument Trading Code: "..value
end

-- Dissect: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_trading_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_trading_code
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_name = 18

-- Display: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Name: No Value"
  end

  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_name = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_name
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.standing_data_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.optiq_segment

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.partition_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_instrument_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_name

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_trading_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_group_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.isin_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.amount_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.ratio_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.cfi

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_event_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_eligibility

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_lis_threshold

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.dark_min_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.date_of_last_trade

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.depositary_list

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.main_depositary

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.first_settlement_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.guarantee_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issuing_country

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.last_adjusted_closing_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lot_size_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maturity_date_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.maximum_decimals_in_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mic_list

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.country_of_exchange_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mnemonic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.underlying_isin_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_coefficient

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_currency_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_instrument_circulating

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.par_value

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.inst_unit_exp

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_delay

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.tax_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_corporate_event

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.type_of_market_admission

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.nominal_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.issue_price_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strike_price_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.liquid_instrument_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_of_reference_mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.icb_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_60mn

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_120mn

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.threshold_lis_post_trade_eod

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_mnemonic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_call

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_amount_continuous

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_call

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.max_order_quantity_continuous

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pool_factor

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.em_m_pattern_rep_groups(buffer, offset + index)

  return index
end

-- Display: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.standing_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.partition_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_instrument_name(buffer, index, packet, parent)

  -- Instrument Name: 18 Byte Ascii String
  index, instrument_name = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_name(buffer, index, packet, parent)

  -- Instrument Trading Code: 15 Byte Ascii String Nullable
  index, instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_trading_code(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_group_code(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.isin_code(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer
  index, ratio_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.ratio_decimals(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.cfi(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_event_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price(buffer, index, packet, parent)

  -- Dark Eligibility: 1 Byte Unsigned Fixed Width Integer Nullable
  index, dark_eligibility = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_eligibility(buffer, index, packet, parent)

  -- Dark Lis Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, dark_lis_threshold = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_lis_threshold(buffer, index, packet, parent)

  -- Dark Min Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, dark_min_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.dark_min_quantity(buffer, index, packet, parent)

  -- Date Of Last Trade: 2 Byte Unsigned Fixed Width Integer Nullable
  index, date_of_last_trade = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.date_of_last_trade(buffer, index, packet, parent)

  -- Depositary List: 20 Byte Ascii String Nullable
  index, depositary_list = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.depositary_list(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.main_depositary(buffer, index, packet, parent)

  -- First Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, first_settlement_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.first_settlement_date(buffer, index, packet, parent)

  -- Guarantee Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, guarantee_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.guarantee_indicator(buffer, index, packet, parent)

  -- Icb: 16 Byte Ascii String Nullable
  index, icb = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.icb(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String Nullable
  index, issuing_country = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issuing_country(buffer, index, packet, parent)

  -- Last Adjusted Closing Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_adjusted_closing_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.last_adjusted_closing_price(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lot_size_optional(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maturity_date_optional(buffer, index, packet, parent)

  -- Maximum Decimals In Quantity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, maximum_decimals_in_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.maximum_decimals_in_quantity(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic(buffer, index, packet, parent)

  -- Mic List: 20 Byte Ascii String Nullable
  index, mic_list = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mic_list(buffer, index, packet, parent)

  -- Country Of Exchange Optional: 3 Byte Ascii String Nullable
  index, country_of_exchange_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.country_of_exchange_optional(buffer, index, packet, parent)

  -- Mnemonic: 5 Byte Ascii String Nullable
  index, mnemonic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mnemonic(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Trading Currency Optional: 3 Byte Ascii String Nullable
  index, trading_currency_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency_optional(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency_coefficient(buffer, index, packet, parent)

  -- Trading Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_currency_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_currency_indicator(buffer, index, packet, parent)

  -- Strike Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, strike_currency_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_currency_indicator(buffer, index, packet, parent)

  -- Number Instrument Circulating: 8 Byte Unsigned Fixed Width Integer Nullable
  index, number_instrument_circulating = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.number_instrument_circulating(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer Nullable
  index, par_value = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.par_value(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String Nullable
  index, quantity_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_notation(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Settlement Delay: 2 Byte Ascii String Nullable
  index, settlement_delay = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_delay(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String Nullable
  index, strike_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_currency(buffer, index, packet, parent)

  -- Tax Code: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, tax_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.tax_code(buffer, index, packet, parent)

  -- Type Of Corporate Event: 2 Byte Ascii String Nullable
  index, type_of_corporate_event = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.type_of_corporate_event(buffer, index, packet, parent)

  -- Type Of Market Admission: 1 Byte Ascii String Enum with 17 values
  index, type_of_market_admission = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.type_of_market_admission(buffer, index, packet, parent)

  -- Repo Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, repo_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.repo_indicator(buffer, index, packet, parent)

  -- Issue Price: 8 Byte Signed Fixed Width Integer Nullable
  index, issue_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_price(buffer, index, packet, parent)

  -- Nominal Currency: 3 Byte Ascii String Nullable
  index, nominal_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.nominal_currency(buffer, index, packet, parent)

  -- Issue Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, issue_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.issue_price_decimals(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Liquid Instrument Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, liquid_instrument_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.liquid_instrument_indicator(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Icb Code: 8 Byte Ascii String Nullable
  index, icb_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.icb_code(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 60mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_60mn = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_60mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 120mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_120mn = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_120mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade Eod: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_eod = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.threshold_lis_post_trade_eod(buffer, index, packet, parent)

  -- Long Mnemonic: 6 Byte Ascii String Nullable
  index, long_mnemonic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_mnemonic(buffer, index, packet, parent)

  -- Max Order Amount Call: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_amount_call = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_amount_call(buffer, index, packet, parent)

  -- Max Order Amount Continuous: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_amount_continuous = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_amount_continuous(buffer, index, packet, parent)

  -- Max Order Quantity Call: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_quantity_call = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_quantity_call(buffer, index, packet, parent)

  -- Max Order Quantity Continuous: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_quantity_continuous = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.max_order_quantity_continuous(buffer, index, packet, parent)

  -- Pool Factor: 4 Byte Unsigned Fixed Width Integer Nullable
  index, pool_factor = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pool_factor(buffer, index, packet, parent)

  -- Em M Pattern Rep Groups: Struct of 2 fields
  index, em_m_pattern_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.em_m_pattern_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event = 1

-- Display: Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_39_display.scheduled_event = function(value)
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
  if value == 16 then
    return "Scheduled Event: Closing Price (16)"
  end
  if value == 255 then
    return "Scheduled Event: No Value"
  end

  return "Scheduled Event: Unknown("..value..")"
end

-- Dissect: Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.scheduled_event = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.scheduled_event(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.scheduled_event, range, value, display)

  return offset + length, value
end

-- Size: Session
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session = 1

-- Display: Session
euronext_optiq_marketdatagateway_sbe_v5_39_display.session = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.session(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.session, range, value, display)

  return offset + length, value
end

-- Size: Order Entry Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_entry_qualifier = 1

-- Display: Order Entry Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_entry_qualifier = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_entry_qualifier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_entry_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_entry_qualifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Trading Period
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period = 1

-- Display: Trading Period
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_period = function(value)
  if value == 1 then
    return "Trading Period: Opening (1)"
  end
  if value == 2 then
    return "Trading Period: Standard (2)"
  end
  if value == 3 then
    return "Trading Period: Closing (3)"
  end

  return "Trading Period: Unknown("..value..")"
end

-- Dissect: Trading Period
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_period = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_period(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_period, range, value, display)

  return offset + length, value
end

-- Size: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_qualifier = 2

-- Display: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_qualifier = function(buffer, packet, parent)
  local display = ""

  -- Is Execution Prevention Across All Firms flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Execution Prevention Across All Firms|"
  end
  -- Is Quoting Period flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Quoting Period|"
  end
  -- Is Stressed Market Conditions flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Stressed Market Conditions|"
  end
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_qualifier_bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_5, buffer(offset, 2))

  -- Execution Prevention Across All Firms: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.execution_prevention_across_all_firms, buffer(offset, 2))

  -- Quoting Period: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quoting_period, buffer(offset, 2))

  -- Exceptional Market Conditions: 2 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.exceptional_market_conditions, buffer(offset, 2))

  -- Stressed Market Conditions: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.stressed_market_conditions, buffer(offset, 2))

  -- Wholesale Allowed: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.wholesale_allowed, buffer(offset, 2))

  -- Suspended: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.suspended, buffer(offset, 2))

  -- Random Uncrossing: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.random_uncrossing, buffer(offset, 2))

  -- Trading At Last: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_at_last, buffer(offset, 2))

  -- Call Bbo Only: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.call_bbo_only, buffer(offset, 2))

  -- No Qualifier: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.no_qualifier, buffer(offset, 2))
end

-- Dissect: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_qualifier = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_qualifier, range, display)

  if show.phase_qualifier then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Phase Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_id = 1

-- Display: Phase Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_id = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_id, range, value, display)

  return offset + length, value
end

-- Size: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_time = 8

-- Display: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_time = function(value)
  return "Phase Time: "..value
end

-- Dissect: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.phase_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.phase_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetables_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_qualifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_entry_qualifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event

  return index
end

-- Display: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.timetables_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Phase Time: 8 Byte Unsigned Fixed Width Integer
  index, phase_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_time(buffer, index, packet, parent)

  -- Phase Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, phase_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_id(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 11 fields
  index, phase_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_qualifier(buffer, index, packet, parent)

  -- Trading Period: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_period = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_period(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_entry_qualifier(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, scheduled_event = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.scheduled_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_group = function(buffer, offset, packet, parent)
  if show.timetables_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.timetables_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetables_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local timetables_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + timetables_group_count * 15

  return index
end

-- Display: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.timetables_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Timetables Group
  for timetables_group_index = 1, num_in_group do
    index, timetables_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_group(buffer, index, packet, parent)

    if timetables_group ~= nil then
      local iteration = timetables_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_group_index, timetables_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetables_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetables_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.timetables_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetables_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_groups_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index_optional = 4

-- Display: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.symbol_index_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index Optional: No Value"
  end

  return "Symbol Index Optional: "..value
end

-- Dissect: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.symbol_index_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.symbol_index_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetable_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.pattern_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetables_groups(buffer, offset + index)

  return index
end

-- Display: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.timetable_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm_optional(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.pattern_id(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- Timetables Groups: Struct of 2 fields
  index, timetables_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetables_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetable_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetable_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetable_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.timetable_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.timetable_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetable_message_fields(buffer, offset, packet, parent)
end

-- Size: Instrument State
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_state = 1

-- Display: Instrument State
euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_state = function(value)
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
  if value == 21 then
    return "Instrument State: Reserved Future Limit Interruption Protection (21)"
  end
  if value == 22 then
    return "Instrument State: Suspended Waiting For Market Operations (22)"
  end
  if value == 255 then
    return "Instrument State: No Value"
  end

  return "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_state = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.instrument_state(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Size: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event_time = 8

-- Display: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.scheduled_event_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Scheduled Event Time: No Value"
  end

  return "Scheduled Event Time: "..value
end

-- Dissect: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.scheduled_event_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.scheduled_event_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.scheduled_event_time, range, value, display)

  return offset + length, value
end

-- Size: Quote Spread Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_spread_multiplier = 1

-- Display: Quote Spread Multiplier
euronext_optiq_marketdatagateway_sbe_v5_39_display.quote_spread_multiplier = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quote_spread_multiplier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_spread_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quote_spread_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quote_spread_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Price Limits
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_limits = 1

-- Display: Price Limits
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_limits = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_limits = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_limits
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_limits(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_limits, range, value, display)

  return offset + length, value
end

-- Size: Trading Side
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_side = 1

-- Display: Trading Side
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_side = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_side, range, value, display)

  return offset + length, value
end

-- Size: Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period_optional = 1

-- Display: Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_period_optional = function(value)
  if value == 1 then
    return "Trading Period Optional: Opening (1)"
  end
  if value == 2 then
    return "Trading Period Optional: Standard (2)"
  end
  if value == 3 then
    return "Trading Period Optional: Closing (3)"
  end
  if value == 255 then
    return "Trading Period Optional: No Value"
  end

  return "Trading Period Optional: Unknown("..value..")"
end

-- Dissect: Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_period_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trading_period_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trading_period_optional, range, value, display)

  return offset + length, value
end

-- Size: Status Reason
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.status_reason = 1

-- Display: Status Reason
euronext_optiq_marketdatagateway_sbe_v5_39_display.status_reason = function(value)
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
  if value == 25 then
    return "Status Reason: Dueto Main Market (25)"
  end
  if value == 255 then
    return "Status Reason: No Value"
  end

  return "Status Reason: Unknown("..value..")"
end

-- Dissect: Status Reason
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.status_reason = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.status_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.status_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.status_reason, range, value, display)

  return offset + length, value
end

-- Size: Book State
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.book_state = 1

-- Display: Book State
euronext_optiq_marketdatagateway_sbe_v5_39_display.book_state = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.book_state = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.book_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.book_state(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.book_state, range, value, display)

  return offset + length, value
end

-- Size: Change Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.change_type = 1

-- Display: Change Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.change_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.change_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.change_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.change_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.change_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_states_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.change_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.book_state

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.status_reason

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.phase_qualifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_period_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_side

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_limits

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quote_spread_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_entry_qualifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.scheduled_event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.instrument_state

  return index
end

-- Display: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_states_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, change_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.change_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Book State: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, book_state = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.book_state(buffer, index, packet, parent)

  -- Status Reason: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, status_reason = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.status_reason(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 11 fields
  index, phase_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.phase_qualifier(buffer, index, packet, parent)

  -- Trading Period Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_period_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_period_optional(buffer, index, packet, parent)

  -- Trading Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_side = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_side(buffer, index, packet, parent)

  -- Price Limits: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, price_limits = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_limits(buffer, index, packet, parent)

  -- Quote Spread Multiplier: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_spread_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quote_spread_multiplier(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_entry_qualifier(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, scheduled_event = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.scheduled_event(buffer, index, packet, parent)

  -- Scheduled Event Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, scheduled_event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.scheduled_event_time(buffer, index, packet, parent)

  -- Instrument State: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, instrument_state = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.instrument_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_group = function(buffer, offset, packet, parent)
  if show.market_states_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_states_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_states_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local market_states_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + market_states_group_count * 33

  return index
end

-- Display: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_states_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Market States Group
  for market_states_group_index = 1, num_in_group do
    index, market_states_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_group(buffer, index, packet, parent)

    if market_states_group ~= nil then
      local iteration = market_states_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_group_index, market_states_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_states_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_states_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_states_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_states_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_status_change_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_states_groups(buffer, offset + index)

  return index
end

-- Display: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_status_change_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_status_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Market States Groups: Struct of 2 fields
  index, market_states_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_states_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_status_change_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_status_change_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_status_change_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_status_change_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_status_change_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_status_change_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.not_used_group_1_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_1_group_count * 0

  return index
end

-- Display: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.not_used_group_1_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.not_used_group_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Not Used Group 1 Group
  for not_used_group_1_group_index = 1, num_in_group do
    index, not_used_group_1_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.not_used_group_1_group(buffer, index, packet, parent)

    if not_used_group_1_group ~= nil then
      local iteration = not_used_group_1_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.not_used_group_1_group_index, not_used_group_1_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.not_used_group_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.not_used_group_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.not_used_group_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.not_used_group_1_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.not_used_group_1_groups_fields(buffer, offset, packet, parent)
end

-- Size: Mmt Publication Mode Size Specific
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_size_specific = 4

-- Display: Mmt Publication Mode Size Specific
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode_size_specific = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Publication Mode Size Specific: No Value"
  end

  return "Mmt Publication Mode Size Specific: "..value
end

-- Dissect: Mmt Publication Mode Size Specific
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode_size_specific = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_size_specific
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode_size_specific(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode_size_specific, range, value, display)

  return offset + length, value
end

-- Size: Mmt Publication Mode Illiquid
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_illiquid = 4

-- Display: Mmt Publication Mode Illiquid
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode_illiquid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Publication Mode Illiquid: No Value"
  end

  return "Mmt Publication Mode Illiquid: "..value
end

-- Dissect: Mmt Publication Mode Illiquid
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode_illiquid = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_illiquid
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode_illiquid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode_illiquid, range, value, display)

  return offset + length, value
end

-- Size: Mmt Contingent Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contingent_transaction_indicator = 4

-- Display: Mmt Contingent Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_contingent_transaction_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Contingent Transaction Indicator: No Value"
  end

  return "Mmt Contingent Transaction Indicator: "..value
end

-- Dissect: Mmt Contingent Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_contingent_transaction_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contingent_transaction_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_contingent_transaction_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_contingent_transaction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Portfolio Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_portfolio_transaction_indicator = 4

-- Display: Mmt Portfolio Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_portfolio_transaction_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Portfolio Transaction Indicator: No Value"
  end

  return "Mmt Portfolio Transaction Indicator: "..value
end

-- Dissect: Mmt Portfolio Transaction Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_portfolio_transaction_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_portfolio_transaction_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_portfolio_transaction_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_portfolio_transaction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale = 4

-- Display: Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale: No Value"
  end

  return "Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale: "..value
end

-- Dissect: Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale, range, value, display)

  return offset + length, value
end

-- Size: Missing Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.missing_price = 4

-- Display: Missing Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.missing_price = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Missing Price: No Value"
  end

  return "Missing Price: "..value
end

-- Dissect: Missing Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.missing_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.missing_price
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.missing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.missing_price, range, value, display)

  return offset + length, value
end

-- Size: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_settlement_date = 2

-- Display: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.repo_settlement_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Repo Settlement Date: No Value"
  end

  return "Repo Settlement Date: "..value
end

-- Dissect: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.repo_settlement_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.repo_settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.repo_settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_date = 2

-- Display: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settlement Date: No Value"
  end

  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Message Price Notation
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message_price_notation = 1

-- Display: Message Price Notation
euronext_optiq_marketdatagateway_sbe_v5_39_display.message_price_notation = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_price_notation = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message_price_notation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.message_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.evaluated_price = 8

-- Display: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.evaluated_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.evaluated_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.evaluated_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.evaluated_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Size: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_time_vwap = 4

-- Display: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_display.end_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_time_vwap = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.end_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_time_vwap = 4

-- Display: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_display.start_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_time_vwap = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.start_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Transparency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transparency_indicator = 1

-- Display: Transparency Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.transparency_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.transparency_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transparency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.transparency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.transparency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Trade Code
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_trade_code = 1

-- Display: Block Trade Code
euronext_optiq_marketdatagateway_sbe_v5_39_display.block_trade_code = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Block Trade Code: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_trade_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_trade_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.block_trade_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_trade_code, range, value, display)

  return offset + length, value
end

-- Size: Effective Date Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.effective_date_indicator = 1

-- Display: Effective Date Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.effective_date_indicator = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.effective_date_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.effective_date_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.effective_date_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.effective_date_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transaction_type = 1

-- Display: Transaction Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.transaction_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.transaction_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transaction_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.transaction_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_qualifier = 1

-- Display: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_qualifier = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_qualifier_bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.trade_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_duplicative_indicator = 4

-- Display: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_duplicative_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Duplicative Indicator: No Value"
  end

  return "Mmt Duplicative Indicator: "..value
end

-- Dissect: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_duplicative_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_post_trade_deferral = 4

-- Display: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_post_trade_deferral = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Post Trade Deferral: No Value"
  end

  return "Mmt Post Trade Deferral: "..value
end

-- Dissect: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_post_trade_deferral
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode = 4

-- Display: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Publication Mode: No Value"
  end

  return "Mmt Publication Mode: "..value
end

-- Dissect: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_algorithmic_indicator = 4

-- Display: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_algorithmic_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Algorithmic Indicator: No Value"
  end

  return "Mmt Algorithmic Indicator: "..value
end

-- Dissect: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_algorithmic_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contributionto_price = 4

-- Display: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_contributionto_price = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Contributionto Price: No Value"
  end

  return "Mmt Contributionto Price: "..value
end

-- Dissect: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contributionto_price
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_off_book_automated_indicator = 1

-- Display: Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_off_book_automated_indicator = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mmt Off Book Automated Indicator: No Value"
  end

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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_off_book_automated_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator_char_4_optional = 4

-- Display: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_modification_indicator_char_4_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Modification Indicator char 4 optional: No Value"
  end

  return "Mmt Modification Indicator char 4 optional: "..value
end

-- Dissect: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_modification_indicator_char_4_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator_char_4_optional
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_modification_indicator_char_4_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_modification_indicator_char_4_optional, range, value, display)

  return offset + length, value
end

-- Size: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_negotiation_indicator = 4

-- Display: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_negotiation_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Negotiation Indicator: No Value"
  end

  return "Mmt Negotiation Indicator: "..value
end

-- Dissect: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_negotiation_indicator
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_transaction_category = 4

-- Display: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_transaction_category = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Transaction Category: No Value"
  end

  return "Mmt Transaction Category: "..value
end

-- Dissect: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_transaction_category
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_market_mechanism = 1

-- Display: Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_market_mechanism = function(value)
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
  if value == 8 then
    return "Mmt Market Mechanism: Hybrid System (8)"
  end
  if value == 9 then
    return "Mmt Market Mechanism: Any Other Excluding Hybrid (9)"
  end
  if value == 255 then
    return "Mmt Market Mechanism: No Value"
  end

  return "Mmt Market Mechanism: Unknown("..value..")"
end

-- Dissect: Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Calculate size of: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_trade_information_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trading_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.publication_date_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_type_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_instrument_id_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_execution_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_price_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_qty_in_msrmt_unit_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_quantity_measurement_unit

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_notional_amount

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.notional_currency

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_clearing_flag

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_market_mechanism

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_trading_mode

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_transaction_category

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_negotiation_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_agency_cross_trade_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_modification_indicator_char_4_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_benchmark_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_special_dividend_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_off_book_automated_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contributionto_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_algorithmic_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_post_trade_deferral

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_duplicative_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_qualifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transaction_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.effective_date_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_trade_code

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_reference

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.original_report_timestamp

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.transparency_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.currency_coefficient

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_multiplier_decimals

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.venue

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_time_vwap

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_time_vwap

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mifid_emission_allowance_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_of_reference_mic

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.evaluated_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message_price_notation

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.settlement_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.repo_settlement_date

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.trade_unique_identifier

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.missing_price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_portfolio_transaction_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_contingent_transaction_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_illiquid

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.mmt_publication_mode_size_specific

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.full_trade_information_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, trade_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type Optional: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_type_optional(buffer, index, packet, parent)

  -- Mifid Instrument Id Optional: 12 Byte Ascii String Nullable
  index, mifid_instrument_id_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_instrument_id_optional(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Mifid Price Optional: 20 Byte Ascii String Nullable
  index, mifid_price_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_optional(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_currency(buffer, index, packet, parent)

  -- Mifid Qty In Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mifid_qty_in_msrmt_unit_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_qty_in_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mifid Notional Amount: 20 Byte Ascii String Nullable
  index, mifid_notional_amount = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.notional_currency(buffer, index, packet, parent)

  -- Mifid Clearing Flag: 5 Byte Ascii String Nullable
  index, mifid_clearing_flag = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_clearing_flag(buffer, index, packet, parent)

  -- Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, mmt_market_mechanism = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_market_mechanism(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String Enum with 13 values
  index, mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_trading_mode(buffer, index, packet, parent)

  -- Mmt Transaction Category: 4 Byte Ascii String Nullable
  index, mmt_transaction_category = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_transaction_category(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: 4 Byte Ascii String Nullable
  index, mmt_negotiation_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String Nullable
  index, mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Mmt Modification Indicator char 4 optional: 4 Byte Ascii String Nullable
  index, mmt_modification_indicator_char_4_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_modification_indicator_char_4_optional(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String Nullable
  index, mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String Nullable
  index, mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, mmt_off_book_automated_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Mmt Contributionto Price: 4 Byte Ascii String Nullable
  index, mmt_contributionto_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_contributionto_price(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: 4 Byte Ascii String Nullable
  index, mmt_algorithmic_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Mmt Publication Mode: 4 Byte Ascii String Nullable
  index, mmt_publication_mode = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral: 4 Byte Ascii String Nullable
  index, mmt_post_trade_deferral = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Mmt Duplicative Indicator: 4 Byte Ascii String Nullable
  index, mmt_duplicative_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_qualifier(buffer, index, packet, parent)

  -- Transaction Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, transaction_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.transaction_type(buffer, index, packet, parent)

  -- Effective Date Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, effective_date_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.effective_date_indicator(buffer, index, packet, parent)

  -- Block Trade Code: 1 Byte Ascii String Enum with 4 values
  index, block_trade_code = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_trade_code(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Transparency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, transparency_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.transparency_indicator(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.currency_coefficient(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.venue(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_time_vwap(buffer, index, packet, parent)

  -- Mifid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mifid_emission_allowance_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mifid_emission_allowance_type(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.evaluated_price(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_price_notation(buffer, index, packet, parent)

  -- Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.settlement_date(buffer, index, packet, parent)

  -- Repo Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, repo_settlement_date = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.repo_settlement_date(buffer, index, packet, parent)

  -- Trade Unique Identifier: 16 Byte Ascii String Nullable
  index, trade_unique_identifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.trade_unique_identifier(buffer, index, packet, parent)

  -- Missing Price: 4 Byte Ascii String Nullable
  index, missing_price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.missing_price(buffer, index, packet, parent)

  -- Mmt Pre Trade Transparency Waiver Relatedto Sizeand Scale: 4 Byte Ascii String Nullable
  index, mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_pre_trade_transparency_waiver_relatedto_sizeand_scale(buffer, index, packet, parent)

  -- Mmt Portfolio Transaction Indicator: 4 Byte Ascii String Nullable
  index, mmt_portfolio_transaction_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_portfolio_transaction_indicator(buffer, index, packet, parent)

  -- Mmt Contingent Transaction Indicator: 4 Byte Ascii String Nullable
  index, mmt_contingent_transaction_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_contingent_transaction_indicator(buffer, index, packet, parent)

  -- Mmt Publication Mode Illiquid: 4 Byte Ascii String Nullable
  index, mmt_publication_mode_illiquid = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode_illiquid(buffer, index, packet, parent)

  -- Mmt Publication Mode Size Specific: 4 Byte Ascii String Nullable
  index, mmt_publication_mode_size_specific = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.mmt_publication_mode_size_specific(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_trade_information_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.full_trade_information_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_trade_information_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.full_trade_information_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.full_trade_information_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_trade_information_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_qualifier = 1

-- Display: Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_qualifier = function(value)
  if value == 1 then
    return "Price Qualifier: Last Adjusted Closing Price (1)"
  end
  if value == 2 then
    return "Price Qualifier: Last Traded Price (2)"
  end
  if value == 3 then
    return "Price Qualifier: Volume Weighted Average Price (3)"
  end
  if value == 4 then
    return "Price Qualifier: Closing Uncrossing Price (4)"
  end
  if value == 5 then
    return "Price Qualifier: Valuation Price (5)"
  end
  if value == 6 then
    return "Price Qualifier: Averageof Bbo (6)"
  end
  if value == 7 then
    return "Price Qualifier: Averageof Best Bid (7)"
  end
  if value == 8 then
    return "Price Qualifier: Updatedby Market Operations (8)"
  end
  if value == 9 then
    return "Price Qualifier: Closing Priceof Reference Market (9)"
  end
  if value == 255 then
    return "Price Qualifier: No Value"
  end

  return "Price Qualifier: Unknown("..value..")"
end

-- Dissect: Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_qualifier = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_qualifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty Side
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty_side = 1

-- Display: Imbalance Qty Side
euronext_optiq_marketdatagateway_sbe_v5_39_display.imbalance_qty_side = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.imbalance_qty_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.imbalance_qty_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.imbalance_qty_side, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty = 8

-- Display: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_39_display.imbalance_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Dissect: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.imbalance_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_optional = 8

-- Display: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity Optional: No Value"
  end

  return "Quantity Optional: "..value
end

-- Dissect: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.quantity_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.quantity_optional, range, value, display)

  return offset + length, value
end

-- Size: Price Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_type = 1

-- Display: Price Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_type = function(value)
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
  if value == 33 then
    return "Price Type: Closing Price (33)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prices_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.imbalance_qty_side

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_qualifier

  return index
end

-- Display: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.prices_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 23 values
  index, price_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_optional(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_qty = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.imbalance_qty(buffer, index, packet, parent)

  -- Imbalance Qty Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, imbalance_qty_side = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.imbalance_qty_side(buffer, index, packet, parent)

  -- Price Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, price_qualifier = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_qualifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_group = function(buffer, offset, packet, parent)
  if show.prices_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.prices_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prices_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local prices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + prices_group_count * 31

  return index
end

-- Display: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.prices_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Prices Group
  for prices_group_index = 1, num_in_group do
    index, prices_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_group(buffer, index, packet, parent)

    if prices_group ~= nil then
      local iteration = prices_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_group_index, prices_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.prices_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prices_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.prices_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.prices_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_update_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.prices_groups(buffer, offset + index)

  return index
end

-- Display: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.price_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Prices Groups: Struct of 2 fields
  index, prices_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.prices_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.price_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.price_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.price_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_update_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.order_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.order_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.order_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_of_orders = 2

-- Display: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_39_display.number_of_orders = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.number_of_orders = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_of_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Size: Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.update_type = 1

-- Display: Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.update_type = function(value)
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
  if value == 101 then
    return "Update Type: High Order Price Control Collar (101)"
  end
  if value == 102 then
    return "Update Type: Low Order Price Control Collar (102)"
  end
  if value == 103 then
    return "Update Type: Order Price Control Collar Reference Price (103)"
  end
  if value == 104 then
    return "Update Type: Issuing Or Tender Offer Trade (104)"
  end
  if value == 105 then
    return "Update Type: Rfq Trade (105)"
  end
  if value == 106 then
    return "Update Type: Flip Spread (106)"
  end
  if value == 107 then
    return "Update Type: Flip Reference Price (107)"
  end
  if value == 254 then
    return "Update Type: Clear Book (254)"
  end

  return "Update Type: Unknown("..value..")"
end

-- Dissect: Update Type
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.update_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.update_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.updates_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.update_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.number_of_orders

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.quantity_optional

  return index
end

-- Display: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_39_display.updates_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 96 values
  index, update_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.update_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index(buffer, index, packet, parent)

  -- Number Of Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_orders = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.number_of_orders(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.quantity_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_group = function(buffer, offset, packet, parent)
  if show.updates_group then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.updates_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.updates_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local updates_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + updates_group_count * 23

  return index
end

-- Display: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_39_display.updates_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Updates Group
  for updates_group_index = 1, num_in_group do
    index, updates_group = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_group(buffer, index, packet, parent)

    if updates_group ~= nil then
      local iteration = updates_group:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_group_index, updates_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.updates_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.updates_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.updates_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.updates_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_update_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.emm

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.updates_groups(buffer, offset + index)

  return index
end

-- Display: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  -- Updates Groups: Struct of 2 fields
  index, updates_groups = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.updates_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_end_time = 8

-- Display: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.retransmission_end_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission End Time: No Value"
  end

  return "Retransmission End Time: "..value
end

-- Dissect: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.retransmission_end_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_end_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.retransmission_end_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.retransmission_end_time, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_start_time = 8

-- Display: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.retransmission_start_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission Start Time: No Value"
  end

  return "Retransmission Start Time: "..value
end

-- Dissect: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.retransmission_start_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_start_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.retransmission_start_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.retransmission_start_time, range, value, display)

  return offset + length, value
end

-- Size: Technical Notification Type
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.technical_notification_type = 1

-- Display: Technical Notification Type
euronext_optiq_marketdatagateway_sbe_v5_39_display.technical_notification_type = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.technical_notification_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.technical_notification_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.technical_notification_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.technical_notification_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num_optional

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.technical_notification_type

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.rebroadcast_indicator

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_start_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.retransmission_end_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.symbol_index_optional

  return index
end

-- Display: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.technical_notification_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num_optional(buffer, index, packet, parent)

  -- Technical Notification Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, technical_notification_type = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_type(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Retransmission Start Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_start_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.retransmission_start_time(buffer, index, packet, parent)

  -- Retransmission End Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_end_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.retransmission_end_time(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.symbol_index_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_message = function(buffer, offset, packet, parent)
  if show.technical_notification_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.technical_notification_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.technical_notification_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.health_status_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.event_time

  return index
end

-- Display: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.health_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.health_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.health_status_message = function(buffer, offset, packet, parent)
  if show.health_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.health_status_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.health_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.health_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.health_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session_trading_day = 2

-- Display: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_39_display.session_trading_day = function(value)
  return "Session Trading Day: "..value
end

-- Dissect: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session_trading_day = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session_trading_day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.session_trading_day(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.session_trading_day, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_of_day_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session_trading_day

  return index
end

-- Display: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.end_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session_trading_day(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  if show.end_of_day_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.end_of_day_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_day_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.end_of_day_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_day_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_of_day_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.md_seq_num

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.session_trading_day

  return index
end

-- Display: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.md_seq_num(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.session_trading_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.start_of_day_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_day_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.start_of_day_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_day_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payload = function(buffer, offset, template_id)
  -- Size of Start Of Day Message
  if template_id == 1101 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if template_id == 1102 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_of_day_message(buffer, offset)
  end
  -- Size of Health Status Message
  if template_id == 1103 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.health_status_message(buffer, offset)
  end
  -- Size of Technical Notification Message
  if template_id == 1106 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.technical_notification_message(buffer, offset)
  end
  -- Size of Market Update Message
  if template_id == 1001 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_update_message(buffer, offset)
  end
  -- Size of Order Update Message
  if template_id == 1002 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.order_update_message(buffer, offset)
  end
  -- Size of Price Update Message
  if template_id == 1003 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.price_update_message(buffer, offset)
  end
  -- Size of Full Trade Information Message
  if template_id == 1004 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.full_trade_information_message(buffer, offset)
  end
  -- Size of Market Status Change Message
  if template_id == 1005 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_status_change_message(buffer, offset)
  end
  -- Size of Timetable Message
  if template_id == 1006 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.timetable_message(buffer, offset)
  end
  -- Size of Standing Data Message
  if template_id == 1007 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.standing_data_message(buffer, offset)
  end
  -- Size of Real Time Index Message
  if template_id == 1008 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.real_time_index_message(buffer, offset)
  end
  -- Size of Statistics Message
  if template_id == 1009 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.statistics_message(buffer, offset)
  end
  -- Size of Index Summary Message
  if template_id == 1011 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.index_summary_message(buffer, offset)
  end
  -- Size of Strategy Standing Data Message
  if template_id == 1012 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.strategy_standing_data_message(buffer, offset)
  end
  -- Size of Contract Standing Data Message
  if template_id == 1013 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.contract_standing_data_message(buffer, offset)
  end
  -- Size of Outright Standing Data Message
  if template_id == 1014 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.outright_standing_data_message(buffer, offset)
  end
  -- Size of Long Order Update Message
  if template_id == 1015 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.long_order_update_message(buffer, offset)
  end
  -- Size of Lis Package Structure Message
  if template_id == 1016 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.lis_package_structure_message(buffer, offset)
  end
  -- Size of Apa Quotes Message
  if template_id == 1026 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_quotes_message(buffer, offset)
  end
  -- Size of Apa Standing Data Message
  if template_id == 1027 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_standing_data_message(buffer, offset)
  end
  -- Size of Apa Full Trade Information Message
  if template_id == 1028 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.apa_full_trade_information_message(buffer, offset)
  end
  -- Size of Bf Instrument Reference Message
  if template_id == 1201 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_instrument_reference_message(buffer, offset)
  end
  -- Size of Bf Trade Message
  if template_id == 1202 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_trade_message(buffer, offset)
  end
  -- Size of Bfnav Message
  if template_id == 1203 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bfnav_message(buffer, offset)
  end
  -- Size of Bf Instrument Suspension Message
  if template_id == 1204 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.bf_instrument_suspension_message(buffer, offset)
  end
  -- Size of Start Of Snapshot Message
  if template_id == 2101 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.start_of_snapshot_message(buffer, offset)
  end
  -- Size of End Of Snapshot Message
  if template_id == 2102 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_size_of.end_of_snapshot_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
euronext_optiq_marketdatagateway_sbe_v5_39_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Start Of Day Message
  if template_id == 1101 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if template_id == 1102 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Health Status Message
  if template_id == 1103 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.health_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Technical Notification Message
  if template_id == 1106 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.technical_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Update Message
  if template_id == 1001 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if template_id == 1002 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.order_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Update Message
  if template_id == 1003 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.price_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Full Trade Information Message
  if template_id == 1004 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.full_trade_information_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Change Message
  if template_id == 1005 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_status_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Timetable Message
  if template_id == 1006 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.timetable_message(buffer, offset, packet, parent)
  end
  -- Dissect Standing Data Message
  if template_id == 1007 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Real Time Index Message
  if template_id == 1008 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.real_time_index_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if template_id == 1009 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if template_id == 1011 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.index_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Standing Data Message
  if template_id == 1012 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.strategy_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Contract Standing Data Message
  if template_id == 1013 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.contract_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Standing Data Message
  if template_id == 1014 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.outright_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Order Update Message
  if template_id == 1015 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.long_order_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Lis Package Structure Message
  if template_id == 1016 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.lis_package_structure_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Quotes Message
  if template_id == 1026 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_quotes_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Standing Data Message
  if template_id == 1027 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_standing_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Apa Full Trade Information Message
  if template_id == 1028 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.apa_full_trade_information_message(buffer, offset, packet, parent)
  end
  -- Dissect Bf Instrument Reference Message
  if template_id == 1201 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Bf Trade Message
  if template_id == 1202 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Bfnav Message
  if template_id == 1203 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bfnav_message(buffer, offset, packet, parent)
  end
  -- Dissect Bf Instrument Suspension Message
  if template_id == 1204 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.bf_instrument_suspension_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Snapshot Message
  if template_id == 2101 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.start_of_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 2102 then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.end_of_snapshot_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.payload(buffer, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.payload, range, display)

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.version = 2

-- Display: Version
euronext_optiq_marketdatagateway_sbe_v5_39_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.version = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.version(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.schema_id = 2

-- Display: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.template_id = 2

-- Display: Template Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.template_id = function(value)
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
  if value == 1015 then
    return "Template Id: Long Order Update Message (1015)"
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
  if value == 1201 then
    return "Template Id: Bf Instrument Reference Message (1201)"
  end
  if value == 1202 then
    return "Template Id: Bf Trade Message (1202)"
  end
  if value == 1203 then
    return "Template Id: Bfnav Message (1203)"
  end
  if value == 1204 then
    return "Template Id: Bf Instrument Suspension Message (1204)"
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.template_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.template_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length = 2

-- Display: Block Length
euronext_optiq_marketdatagateway_sbe_v5_39_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_length = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.block_length(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.block_length

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.template_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.schema_id

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.version

  return index
end

-- Display: Message Header
euronext_optiq_marketdatagateway_sbe_v5_39_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, template_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Size: Frame
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.frame = 2

-- Display: Frame
euronext_optiq_marketdatagateway_sbe_v5_39_display.frame = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.frame = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.frame
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.frame(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.frame

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_marketdatagateway_sbe_v5_39_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.frame(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 28 branches
  index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.channel_id = 2

-- Display: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_39_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_flags = 2

-- Display: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_flags = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Bits: 6 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.reserved_bits, buffer(offset, 2))

  -- Has Status Message: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_status_message, buffer(offset, 2))

  -- Has End Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_end_of_day_snapshot, buffer(offset, 2))

  -- Has Start Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.has_start_of_day_snapshot, buffer(offset, 2))

  -- Psn High Weight: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.psn_high_weight, buffer(offset, 2))

  -- Mdg Restart Count: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.mdg_restart_count, buffer(offset, 2))

  -- Compression: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.compression, buffer(offset, 2))
end

-- Dissect: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_flags(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_flags, range, display)

  if show.packet_flags then
    euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_flags_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_sequence_number = 4

-- Display: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_sequence_number = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_sequence_number = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_sequence_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_time = 8

-- Display: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_time = function(value)
  return "Packet Time: "..value
end

-- Dissect: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.packet_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.packet_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_39_size_of.market_data_packet_header = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_time

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_sequence_number

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.packet_flags

  index = index + euronext_optiq_marketdatagateway_sbe_v5_39_size_of.channel_id

  return index
end

-- Display: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_39_display.market_data_packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_data_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Time: 8 Byte Unsigned Fixed Width Integer
  index, packet_time = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_time(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_sequence_number(buffer, index, packet, parent)

  -- Packet Flags: Struct of 7 fields
  index, packet_flags = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet_flags(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_data_packet_header = function(buffer, offset, packet, parent)
  if show.market_data_packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39.fields.market_data_packet_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_data_packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_39_display.market_data_packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_data_packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.market_data_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = euronext_optiq_marketdatagateway_sbe_v5_39_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function euronext_optiq_marketdatagateway_sbe_v5_39.init()
end

-- Dissector for Euronext Optiq MarketDataGateway Sbe 5.39
function euronext_optiq_marketdatagateway_sbe_v5_39.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = euronext_optiq_marketdatagateway_sbe_v5_39.name

  -- Dissect protocol
  local protocol = parent:add(euronext_optiq_marketdatagateway_sbe_v5_39, buffer(), euronext_optiq_marketdatagateway_sbe_v5_39.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_marketdatagateway_sbe_v5_39_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, euronext_optiq_marketdatagateway_sbe_v5_39)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.euronext_optiq_marketdatagateway_sbe_v5_39_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(24, 2):le_uint()

  if value == 339 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq MarketDataGateway Sbe 5.39
local function euronext_optiq_marketdatagateway_sbe_v5_39_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.euronext_optiq_marketdatagateway_sbe_v5_39_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = euronext_optiq_marketdatagateway_sbe_v5_39
  euronext_optiq_marketdatagateway_sbe_v5_39.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq MarketDataGateway Sbe 5.39
euronext_optiq_marketdatagateway_sbe_v5_39:register_heuristic("udp", euronext_optiq_marketdatagateway_sbe_v5_39_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 5.39
--   Date: Thursday, October 24, 2024
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
