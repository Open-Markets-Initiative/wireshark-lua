-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.33 Protocol
local omi_euronext_optiq_marketdatagateway_sbe_v5_33 = Proto("Euronext.Optiq.MarketDataGateway.Sbe.v5.33.Lua", "Euronext Optiq MarketDataGateway Sbe 5.33")

-- Protocol table
local euronext_optiq_marketdatagateway_sbe_v5_33 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.33 Fields
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.marketdatagateway.sbe.v5.33.actiontype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.marketdatagateway.sbe.v5.33.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.amount_decimals = ProtoField.new("Amount Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.amountdecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.anonymous = ProtoField.new("Anonymous", "euronext.optiq.marketdatagateway.sbe.v5.33.anonymous", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_origin = ProtoField.new("Apa Origin", "euronext.optiq.marketdatagateway.sbe.v5.33.apaorigin", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bid_offer_date_time = ProtoField.new("Bid Offer Date Time", "euronext.optiq.marketdatagateway.sbe.v5.33.bidofferdatetime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bid_price = ProtoField.new("Bid Price", "euronext.optiq.marketdatagateway.sbe.v5.33.bidprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.marketdatagateway.sbe.v5.33.blocklength", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_length_short = ProtoField.new("Block Length Short", "euronext.optiq.marketdatagateway.sbe.v5.33.blocklengthshort", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_trade_code = ProtoField.new("Block Trade Code", "euronext.optiq.marketdatagateway.sbe.v5.33.blocktradecode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.book_state = ProtoField.new("Book State", "euronext.optiq.marketdatagateway.sbe.v5.33.bookstate", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.box = ProtoField.new("Box", "euronext.optiq.marketdatagateway.sbe.v5.33.box", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000200000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bundle = ProtoField.new("Bundle", "euronext.optiq.marketdatagateway.sbe.v5.33.bundle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000400000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.butterfly = ProtoField.new("Butterfly", "euronext.optiq.marketdatagateway.sbe.v5.33.butterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000002)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.butterfly_versus_underlying = ProtoField.new("Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.butterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000002000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.buy_write = ProtoField.new("Buy Write", "euronext.optiq.marketdatagateway.sbe.v5.33.buywrite", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000040000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.calendar_spread = ProtoField.new("Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.calendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000010)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_bbo_only = ProtoField.new("Call Bbo Only", "euronext.optiq.marketdatagateway.sbe.v5.33.callbboonly", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_cabinet = ProtoField.new("Call Or Put Cabinet", "euronext.optiq.marketdatagateway.sbe.v5.33.callorputcabinet", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000004)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_calendar_spread_versus_underlying = ProtoField.new("Call Or Put Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.callorputcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000010000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_spread_versus_underlying = ProtoField.new("Call Or Put Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.callorputspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000008000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_put_diagonal_calendar_spread_versus_underlying = ProtoField.new("Call Put Diagonal Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.callputdiagonalcalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000020000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_spread_versus_put_versus_underlying = ProtoField.new("Call Spread Versus Put Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.callspreadversusputversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000004000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_spread_versus_sell_a_put = ProtoField.new("Call Spread Versus Sell A Put", "euronext.optiq.marketdatagateway.sbe.v5.33.callspreadversussellaput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000200000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.cfi = ProtoField.new("Cfi", "euronext.optiq.marketdatagateway.sbe.v5.33.cfi", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.cfi_optional = ProtoField.new("Cfi Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.cfioptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.change_type = ProtoField.new("Change Type", "euronext.optiq.marketdatagateway.sbe.v5.33.changetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.channel_id = ProtoField.new("Channel Id", "euronext.optiq.marketdatagateway.sbe.v5.33.channelid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_price = ProtoField.new("Closing Price", "euronext.optiq.marketdatagateway.sbe.v5.33.closingprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_reference_level = ProtoField.new("Closing Reference Level", "euronext.optiq.marketdatagateway.sbe.v5.33.closingreferencelevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_reference_time = ProtoField.new("Closing Reference Time", "euronext.optiq.marketdatagateway.sbe.v5.33.closingreferencetime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_expansion_factor = ProtoField.new("Collar Expansion Factor", "euronext.optiq.marketdatagateway.sbe.v5.33.collarexpansionfactor", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_max_unhalt_nb = ProtoField.new("Collar Max Unhalt Nb", "euronext.optiq.marketdatagateway.sbe.v5.33.collarmaxunhaltnb", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_unhalt_delay = ProtoField.new("Collar Unhalt Delay", "euronext.optiq.marketdatagateway.sbe.v5.33.collarunhaltdelay", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.combo = ProtoField.new("Combo", "euronext.optiq.marketdatagateway.sbe.v5.33.combo", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000200)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.combo_versus_underlying = ProtoField.new("Combo Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.comboversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000200000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.compression = ProtoField.new("Compression", "euronext.optiq.marketdatagateway.sbe.v5.33.compression", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.condor = ProtoField.new("Condor", "euronext.optiq.marketdatagateway.sbe.v5.33.condor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000100000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.condor_versus_underlying = ProtoField.new("Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.condorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000020000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.confirmed_reference_level = ProtoField.new("Confirmed Reference Level", "euronext.optiq.marketdatagateway.sbe.v5.33.confirmedreferencelevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.confirmed_reference_time = ProtoField.new("Confirmed Reference Time", "euronext.optiq.marketdatagateway.sbe.v5.33.confirmedreferencetime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_group = ProtoField.new("Contract Emm Properties Group", "euronext.optiq.marketdatagateway.sbe.v5.33.contractemmpropertiesgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_groups = ProtoField.new("Contract Emm Properties Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.contractemmpropertiesgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_event_date = ProtoField.new("Contract Event Date", "euronext.optiq.marketdatagateway.sbe.v5.33.contracteventdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_name = ProtoField.new("Contract Name", "euronext.optiq.marketdatagateway.sbe.v5.33.contractname", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.33.contractsymbolindex", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_trading_type = ProtoField.new("Contract Trading Type", "euronext.optiq.marketdatagateway.sbe.v5.33.contracttradingtype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_type = ProtoField.new("Contract Type", "euronext.optiq.marketdatagateway.sbe.v5.33.contracttype", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.conversion_reversal = ProtoField.new("Conversion Reversal", "euronext.optiq.marketdatagateway.sbe.v5.33.conversionreversal", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000020000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.country_of_exchange = ProtoField.new("Country Of Exchange", "euronext.optiq.marketdatagateway.sbe.v5.33.countryofexchange", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.country_of_exchange_optional = ProtoField.new("Country Of Exchange Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.countryofexchangeoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.coupon = ProtoField.new("Coupon", "euronext.optiq.marketdatagateway.sbe.v5.33.coupon", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency = ProtoField.new("Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.currency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency_coefficient = ProtoField.new("Currency Coefficient", "euronext.optiq.marketdatagateway.sbe.v5.33.currencycoefficient", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency_optional = ProtoField.new("Currency optional", "euronext.optiq.marketdatagateway.sbe.v5.33.currencyoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_eligibility = ProtoField.new("Dark Eligibility", "euronext.optiq.marketdatagateway.sbe.v5.33.darkeligibility", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_lis_threshold = ProtoField.new("Dark Lis Threshold", "euronext.optiq.marketdatagateway.sbe.v5.33.darklisthreshold", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_min_quantity = ProtoField.new("Dark Min Quantity", "euronext.optiq.marketdatagateway.sbe.v5.33.darkminquantity", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.date_of_initial_listing = ProtoField.new("Date Of Initial Listing", "euronext.optiq.marketdatagateway.sbe.v5.33.dateofinitiallisting", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "euronext.optiq.marketdatagateway.sbe.v5.33.dateoflasttrade", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.days_to_expiry = ProtoField.new("Days To Expiry", "euronext.optiq.marketdatagateway.sbe.v5.33.daystoexpiry", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.marketdatagateway.sbe.v5.33.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.delta = ProtoField.new("Delta", "euronext.optiq.marketdatagateway.sbe.v5.33.delta", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.depositary_list = ProtoField.new("Depositary List", "euronext.optiq.marketdatagateway.sbe.v5.33.depositarylist", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_trading_code = ProtoField.new("Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.33.derivativesinstrumenttradingcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_trading_code_optional = ProtoField.new("Derivatives Instrument Trading Code Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.derivativesinstrumenttradingcodeoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_type = ProtoField.new("Derivatives Instrument Type", "euronext.optiq.marketdatagateway.sbe.v5.33.derivativesinstrumenttype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_market_model = ProtoField.new("Derivatives Market Model", "euronext.optiq.marketdatagateway.sbe.v5.33.derivativesmarketmodel", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_calendar_spread = ProtoField.new("Diagonal Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.diagonalcalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000020)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_straddle_calendar_spread = ProtoField.new("Diagonal Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.diagonalstraddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000008000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_straddle_calendar_spread_versus_underlying = ProtoField.new("Diagonal Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.diagonalstraddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000004000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_currency = ProtoField.new("Dividend Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.dividendcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_payment_date = ProtoField.new("Dividend Payment Date", "euronext.optiq.marketdatagateway.sbe.v5.33.dividendpaymentdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_rate = ProtoField.new("Dividend Rate", "euronext.optiq.marketdatagateway.sbe.v5.33.dividendrate", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_record_date = ProtoField.new("Dividend Record Date", "euronext.optiq.marketdatagateway.sbe.v5.33.dividendrecorddate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dynamic_collar_logic = ProtoField.new("Dynamic Collar Logic", "euronext.optiq.marketdatagateway.sbe.v5.33.dynamiccollarlogic", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.edsp_tick_size = ProtoField.new("Edsp Tick Size", "euronext.optiq.marketdatagateway.sbe.v5.33.edspticksize", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.effective_date_indicator = ProtoField.new("Effective Date Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.effectivedateindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_agency_cross_trade_indicator = ProtoField.new("Efficient Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtagencycrosstradeindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_algorithmic_indicator = ProtoField.new("Efficient Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtalgorithmicindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_benchmark_indicator = ProtoField.new("Efficient Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtbenchmarkindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_contributionto_price = ProtoField.new("Efficient Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtcontributiontoprice", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_duplicative_indicator = ProtoField.new("Efficient Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtduplicativeindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_market_mechanism = ProtoField.new("Efficient Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtmarketmechanism", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_modification_indicator = ProtoField.new("Efficient Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtmodificationindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_negotiation_indicator = ProtoField.new("Efficient Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtnegotiationindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_off_book_automated_indicator = ProtoField.new("Efficient Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtoffbookautomatedindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_post_trade_deferral = ProtoField.new("Efficient Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtposttradedeferral", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_publication_mode = ProtoField.new("Efficient Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtpublicationmode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_special_dividend_indicator = ProtoField.new("Efficient Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmtspecialdividendindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_trading_mode = ProtoField.new("Efficient Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmttradingmode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_transaction_category = ProtoField.new("Efficient Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v5.33.efficientmmttransactioncategory", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_group = ProtoField.new("Em M Pattern Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.33.emmpatternrepgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_groups = ProtoField.new("Em M Pattern Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.emmpatternrepgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.emm = ProtoField.new("Emm", "euronext.optiq.marketdatagateway.sbe.v5.33.emm", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.emm_optional = ProtoField.new("Emm Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.emmoptional", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.marketdatagateway.sbe.v5.33.endtimevwap", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.marketdatagateway.sbe.v5.33.evaluatedprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.event_time = ProtoField.new("Event Time", "euronext.optiq.marketdatagateway.sbe.v5.33.eventtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.event_time_optional = ProtoField.new("Event Time Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.eventtimeoptional", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ex_dividend_date = ProtoField.new("Ex Dividend Date", "euronext.optiq.marketdatagateway.sbe.v5.33.exdividenddate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exceptional_market_conditions = ProtoField.new("Exceptional Market Conditions", "euronext.optiq.marketdatagateway.sbe.v5.33.exceptionalmarketconditions", ftypes.UINT16, nil, base.DEC, 0x0180)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exchange_code = ProtoField.new("Exchange Code", "euronext.optiq.marketdatagateway.sbe.v5.33.exchangecode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exchange_for_physical = ProtoField.new("Exchange For Physical", "euronext.optiq.marketdatagateway.sbe.v5.33.exchangeforphysical", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000800000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.execution_prevention_across_all_firms = ProtoField.new("Execution Prevention Across All Firms", "euronext.optiq.marketdatagateway.sbe.v5.33.executionpreventionacrossallfirms", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exer_style = ProtoField.new("Exer Style", "euronext.optiq.marketdatagateway.sbe.v5.33.exerstyle", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiration_date = ProtoField.new("Expiration Date", "euronext.optiq.marketdatagateway.sbe.v5.33.expirationdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiry_cycle_type = ProtoField.new("Expiry Cycle Type", "euronext.optiq.marketdatagateway.sbe.v5.33.expirycycletype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiry_date = ProtoField.new("Expiry Date", "euronext.optiq.marketdatagateway.sbe.v5.33.expirydate", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.first_settlement_date = ProtoField.new("First Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.33.firstsettlementdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.marketdatagateway.sbe.v5.33.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.frame = ProtoField.new("Frame", "euronext.optiq.marketdatagateway.sbe.v5.33.frame", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.full_instrument_name = ProtoField.new("Full Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.33.fullinstrumentname", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_dividend_in_euros = ProtoField.new("Gross Dividend In Euros", "euronext.optiq.marketdatagateway.sbe.v5.33.grossdividendineuros", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_dividend_payable_per_unit = ProtoField.new("Gross Dividend Payable Per Unit", "euronext.optiq.marketdatagateway.sbe.v5.33.grossdividendpayableperunit", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_of_cdsc_indicator = ProtoField.new("Gross Of Cdsc Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.grossofcdscindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.marketdatagateway.sbe.v5.33.groupsizeencoding", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guarantee_indicator = ProtoField.new("Guarantee Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.guaranteeindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guts = ProtoField.new("Guts", "euronext.optiq.marketdatagateway.sbe.v5.33.guts", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000040)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guts_versus_underlying = ProtoField.new("Guts Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.gutsversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000040000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_end_of_day_snapshot = ProtoField.new("Has End Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v5.33.hasendofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_start_of_day_snapshot = ProtoField.new("Has Start Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v5.33.hasstartofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_status_message = ProtoField.new("Has Status Message", "euronext.optiq.marketdatagateway.sbe.v5.33.hasstatusmessage", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.high_level = ProtoField.new("High Level", "euronext.optiq.marketdatagateway.sbe.v5.33.highlevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.high_time = ProtoField.new("High Time", "euronext.optiq.marketdatagateway.sbe.v5.33.hightime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.icb = ProtoField.new("Icb", "euronext.optiq.marketdatagateway.sbe.v5.33.icb", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.icb_code = ProtoField.new("Icb Code", "euronext.optiq.marketdatagateway.sbe.v5.33.icbcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "euronext.optiq.marketdatagateway.sbe.v5.33.imbalanceqty", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "euronext.optiq.marketdatagateway.sbe.v5.33.imbalanceqtyside", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_level = ProtoField.new("Index Level", "euronext.optiq.marketdatagateway.sbe.v5.33.indexlevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_level_type = ProtoField.new("Index Level Type", "euronext.optiq.marketdatagateway.sbe.v5.33.indexleveltype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_price_code = ProtoField.new("Index Price Code", "euronext.optiq.marketdatagateway.sbe.v5.33.indexpricecode", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.inst_unit_exp = ProtoField.new("Inst Unit Exp", "euronext.optiq.marketdatagateway.sbe.v5.33.instunitexp", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_category = ProtoField.new("Instrument Category", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumentcategory", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_event_date = ProtoField.new("Instrument Event Date", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumenteventdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumentgroupcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_name = ProtoField.new("Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumentname", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_state = ProtoField.new("Instrument State", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumentstate", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_trading_code = ProtoField.new("Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.33.instrumenttradingcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "euronext.optiq.marketdatagateway.sbe.v5.33.interestpaymentdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_group = ProtoField.new("Interest Payment Date Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.33.interestpaymentdaterepgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_groups = ProtoField.new("Interest Payment Date Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.interestpaymentdaterepgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_butterfly = ProtoField.new("Iron Butterfly", "euronext.optiq.marketdatagateway.sbe.v5.33.ironbutterfly", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000100)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_butterfly_versus_underlying = ProtoField.new("Iron Butterfly Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.ironbutterflyversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000100000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_condor = ProtoField.new("Iron Condor", "euronext.optiq.marketdatagateway.sbe.v5.33.ironcondor", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000100000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_condor_versus_underlying = ProtoField.new("Iron Condor Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.ironcondorversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000080000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.isin_code = ProtoField.new("Isin Code", "euronext.optiq.marketdatagateway.sbe.v5.33.isincode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.isin_code_optional = ProtoField.new("Isin Code Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.isincodeoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_date = ProtoField.new("Issue Date", "euronext.optiq.marketdatagateway.sbe.v5.33.issuedate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_price = ProtoField.new("Issue Price", "euronext.optiq.marketdatagateway.sbe.v5.33.issueprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_price_decimals = ProtoField.new("Issue Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.issuepricedecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issuing_country = ProtoField.new("Issuing Country", "euronext.optiq.marketdatagateway.sbe.v5.33.issuingcountry", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.jelly_roll = ProtoField.new("Jelly Roll", "euronext.optiq.marketdatagateway.sbe.v5.33.jellyroll", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000001)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ladder = ProtoField.new("Ladder", "euronext.optiq.marketdatagateway.sbe.v5.33.ladder", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000800)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ladder_versus_underlying = ProtoField.new("Ladder Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.ladderversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000001000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_adjusted_closing_price = ProtoField.new("Last Adjusted Closing Price", "euronext.optiq.marketdatagateway.sbe.v5.33.lastadjustedclosingprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_md_seq_num = ProtoField.new("Last Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v5.33.lastmdseqnum", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_nav_price = ProtoField.new("Last Nav Price", "euronext.optiq.marketdatagateway.sbe.v5.33.lastnavprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_trading_date = ProtoField.new("Last Trading Date", "euronext.optiq.marketdatagateway.sbe.v5.33.lasttradingdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "euronext.optiq.marketdatagateway.sbe.v5.33.legbuysell", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.marketdatagateway.sbe.v5.33.leglastpx", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.marketdatagateway.sbe.v5.33.leglastqty", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.marketdatagateway.sbe.v5.33.legprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.marketdatagateway.sbe.v5.33.legratio", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.33.legsymbolindex", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lei_code = ProtoField.new("Lei Code", "euronext.optiq.marketdatagateway.sbe.v5.33.leicode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.limit = ProtoField.new("Limit", "euronext.optiq.marketdatagateway.sbe.v5.33.limit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquid_instrument_indicator = ProtoField.new("Liquid Instrument Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.liquidinstrumentindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquidation_level = ProtoField.new("Liquidation Level", "euronext.optiq.marketdatagateway.sbe.v5.33.liquidationlevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquidation_time = ProtoField.new("Liquidation Time", "euronext.optiq.marketdatagateway.sbe.v5.33.liquidationtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_instrument_name = ProtoField.new("Long Instrument Name", "euronext.optiq.marketdatagateway.sbe.v5.33.longinstrumentname", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_issuer_name = ProtoField.new("Long Issuer Name", "euronext.optiq.marketdatagateway.sbe.v5.33.longissuername", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_mnemonic = ProtoField.new("Long Mnemonic", "euronext.optiq.marketdatagateway.sbe.v5.33.longmnemonic", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_trade_reference = ProtoField.new("Long Trade Reference", "euronext.optiq.marketdatagateway.sbe.v5.33.longtradereference", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_multiplier = ProtoField.new("Lot Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.33.lotmultiplier", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_size = ProtoField.new("Lot Size", "euronext.optiq.marketdatagateway.sbe.v5.33.lotsize", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_size_optional = ProtoField.new("Lot Size Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.lotsizeoptional", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.low_level = ProtoField.new("Low Level", "euronext.optiq.marketdatagateway.sbe.v5.33.lowlevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.low_time = ProtoField.new("Low Time", "euronext.optiq.marketdatagateway.sbe.v5.33.lowtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.main_depositary = ProtoField.new("Main Depositary", "euronext.optiq.marketdatagateway.sbe.v5.33.maindepositary", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market = ProtoField.new("Market", "euronext.optiq.marketdatagateway.sbe.v5.33.market", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "euronext.optiq.marketdatagateway.sbe.v5.33.marketdatapacketheader", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_model = ProtoField.new("Market Model", "euronext.optiq.marketdatagateway.sbe.v5.33.marketmodel", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_of_reference_mic = ProtoField.new("Market Of Reference Mic", "euronext.optiq.marketdatagateway.sbe.v5.33.marketofreferencemic", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_on_open_moo = ProtoField.new("Market On Open Moo", "euronext.optiq.marketdatagateway.sbe.v5.33.marketonopenmoo", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_group = ProtoField.new("Market States Group", "euronext.optiq.marketdatagateway.sbe.v5.33.marketstatesgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_groups = ProtoField.new("Market States Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.marketstatesgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maturity_date = ProtoField.new("Maturity Date", "euronext.optiq.marketdatagateway.sbe.v5.33.maturitydate", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maturity_date_optional = ProtoField.new("Maturity Date Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.maturitydateoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_amount_call = ProtoField.new("Max Order Amount Call", "euronext.optiq.marketdatagateway.sbe.v5.33.maxorderamountcall", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_amount_continuous = ProtoField.new("Max Order Amount Continuous", "euronext.optiq.marketdatagateway.sbe.v5.33.maxorderamountcontinuous", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_quantity_call = ProtoField.new("Max Order Quantity Call", "euronext.optiq.marketdatagateway.sbe.v5.33.maxorderquantitycall", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_quantity_continuous = ProtoField.new("Max Order Quantity Continuous", "euronext.optiq.marketdatagateway.sbe.v5.33.maxorderquantitycontinuous", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maximum_decimals_in_quantity = ProtoField.new("Maximum Decimals In Quantity", "euronext.optiq.marketdatagateway.sbe.v5.33.maximumdecimalsinquantity", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.md_seq_num = ProtoField.new("Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v5.33.mdseqnum", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.md_seq_num_optional = ProtoField.new("Md Seq Num Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.mdseqnumoptional", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mdg_restart_count = ProtoField.new("Mdg Restart Count", "euronext.optiq.marketdatagateway.sbe.v5.33.mdgrestartcount", ftypes.UINT16, nil, base.DEC, 0x000E)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message = ProtoField.new("Message", "euronext.optiq.marketdatagateway.sbe.v5.33.message", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.marketdatagateway.sbe.v5.33.messageheader", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.marketdatagateway.sbe.v5.33.messagepricenotation", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic = ProtoField.new("Mic", "euronext.optiq.marketdatagateway.sbe.v5.33.mic", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic_list = ProtoField.new("Mic List", "euronext.optiq.marketdatagateway.sbe.v5.33.miclist", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic_optional = ProtoField.new("mic Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.micoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_clearing_flag = ProtoField.new("Mifid Clearing Flag", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidclearingflag", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_currency = ProtoField.new("Mifid Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_emission_allowance_type = ProtoField.new("Mifid Emission Allowance Type", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidemissionallowancetype", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_execution_id = ProtoField.new("Mifid Execution Id", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidexecutionid", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id = ProtoField.new("Mifid Instrument Id", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidinstrumentid", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_optional = ProtoField.new("Mifid Instrument Id Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidinstrumentidoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_type = ProtoField.new("Mifid Instrument Id Type", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidinstrumentidtype", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_type_optional = ProtoField.new("Mifid Instrument Id Type Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidinstrumentidtypeoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_notional_amount = ProtoField.new("Mifid Notional Amount", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidnotionalamount", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price = ProtoField.new("Mifid Price", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidprice", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price_notation = ProtoField.new("Mifid Price Notation", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidpricenotation", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price_optional = ProtoField.new("Mifid Price Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidpriceoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_qty_in_msrmt_unit_notation = ProtoField.new("Mifid Qty In Msrmt Unit Notation", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidqtyinmsrmtunitnotation", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_quantity = ProtoField.new("Mifid Quantity", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidquantity", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_quantity_measurement_unit = ProtoField.new("Mifid Quantity Measurement Unit", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidquantitymeasurementunit", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_transaction_id = ProtoField.new("Mifid Transaction Id", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidtransactionid", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifidii_liquid_flag = ProtoField.new("Mifidii Liquid Flag", "euronext.optiq.marketdatagateway.sbe.v5.33.mifidiiliquidflag", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.minimum_amount = ProtoField.new("Minimum Amount", "euronext.optiq.marketdatagateway.sbe.v5.33.minimumamount", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mm_protections = ProtoField.new("Mm Protections", "euronext.optiq.marketdatagateway.sbe.v5.33.mmprotections", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_agency_cross_trade_indicator = ProtoField.new("Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtagencycrosstradeindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtalgorithmicindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_benchmark_indicator = ProtoField.new("Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtbenchmarkindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_contributionto_price = ProtoField.new("Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtcontributiontoprice", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_duplicative_indicator = ProtoField.new("Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtduplicativeindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtmarketmechanism", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtmodificationindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_modification_indicator_char_4_optional = ProtoField.new("Mmt Modification Indicator char 4 optional", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtmodificationindicatorchar4optional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtnegotiationindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_off_book_automated_indicator = ProtoField.new("Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtoffbookautomatedindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_post_trade_deferral = ProtoField.new("Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtposttradedeferral", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_publication_mode = ProtoField.new("Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtpublicationmode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.mmtspecialdividendindicator", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v5.33.mmttradingmode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v5.33.mmttransactioncategory", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mnemonic = ProtoField.new("Mnemonic", "euronext.optiq.marketdatagateway.sbe.v5.33.mnemonic", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mother_stock_isin = ProtoField.new("Mother Stock Isin", "euronext.optiq.marketdatagateway.sbe.v5.33.motherstockisin", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_bid_price = ProtoField.new("Nav Bid Price", "euronext.optiq.marketdatagateway.sbe.v5.33.navbidprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_offer_price = ProtoField.new("Nav Offer Price", "euronext.optiq.marketdatagateway.sbe.v5.33.navofferprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_price = ProtoField.new("Nav Price", "euronext.optiq.marketdatagateway.sbe.v5.33.navprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.marketdatagateway.sbe.v5.33.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_group = ProtoField.new("New Stats Group", "euronext.optiq.marketdatagateway.sbe.v5.33.newstatsgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_groups = ProtoField.new("New Stats Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.newstatsgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.next_meeting = ProtoField.new("Next Meeting", "euronext.optiq.marketdatagateway.sbe.v5.33.nextmeeting", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.no_qualifier = ProtoField.new("No Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.33.noqualifier", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nominal_currency = ProtoField.new("Nominal Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.nominalcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.notusedgroup1groups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.notional_amount_traded = ProtoField.new("Notional Amount Traded", "euronext.optiq.marketdatagateway.sbe.v5.33.notionalamounttraded", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.notional_currency = ProtoField.new("Notional Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.notionalcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.marketdatagateway.sbe.v5.33.numingroup", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.num_traded_instruments = ProtoField.new("Num Traded Instruments", "euronext.optiq.marketdatagateway.sbe.v5.33.numtradedinstruments", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.number_instrument_circulating = ProtoField.new("Number Instrument Circulating", "euronext.optiq.marketdatagateway.sbe.v5.33.numberinstrumentcirculating", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.number_of_orders = ProtoField.new("Number Of Orders", "euronext.optiq.marketdatagateway.sbe.v5.33.numberoforders", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.offer_price = ProtoField.new("Offer Price", "euronext.optiq.marketdatagateway.sbe.v5.33.offerprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opened_closed_fund = ProtoField.new("Opened Closed Fund", "euronext.optiq.marketdatagateway.sbe.v5.33.openedclosedfund", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opening_level = ProtoField.new("Opening Level", "euronext.optiq.marketdatagateway.sbe.v5.33.openinglevel", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opening_time = ProtoField.new("Opening Time", "euronext.optiq.marketdatagateway.sbe.v5.33.openingtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.marketdatagateway.sbe.v5.33.optiontype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.optiq_segment = ProtoField.new("Optiq Segment", "euronext.optiq.marketdatagateway.sbe.v5.33.optiqsegment", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_entry_qualifier = ProtoField.new("Order Entry Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.33.orderentryqualifier", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.marketdatagateway.sbe.v5.33.orderpriority", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.marketdatagateway.sbe.v5.33.orderpx", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_quantity = ProtoField.new("Order Quantity", "euronext.optiq.marketdatagateway.sbe.v5.33.orderquantity", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_side = ProtoField.new("Order Side", "euronext.optiq.marketdatagateway.sbe.v5.33.orderside", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.marketdatagateway.sbe.v5.33.ordertype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_type_rules = ProtoField.new("Order Type Rules", "euronext.optiq.marketdatagateway.sbe.v5.33.ordertyperules", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_group = ProtoField.new("Orders Group", "euronext.optiq.marketdatagateway.sbe.v5.33.ordersgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_groups = ProtoField.new("Orders Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.ordersgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.original_report_timestamp = ProtoField.new("Original Report Timestamp", "euronext.optiq.marketdatagateway.sbe.v5.33.originalreporttimestamp", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_group = ProtoField.new("Outright Rep Group", "euronext.optiq.marketdatagateway.sbe.v5.33.outrightrepgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_groups = ProtoField.new("Outright Rep Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.outrightrepgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pack = ProtoField.new("Pack", "euronext.optiq.marketdatagateway.sbe.v5.33.pack", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000004000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_group = ProtoField.new("Package Components Group", "euronext.optiq.marketdatagateway.sbe.v5.33.packagecomponentsgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_groups = ProtoField.new("Package Components Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.packagecomponentsgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet = ProtoField.new("Packet", "euronext.optiq.marketdatagateway.sbe.v5.33.packet", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_flags = ProtoField.new("Packet Flags", "euronext.optiq.marketdatagateway.sbe.v5.33.packetflags", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "euronext.optiq.marketdatagateway.sbe.v5.33.packetsequencenumber", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_time = ProtoField.new("Packet Time", "euronext.optiq.marketdatagateway.sbe.v5.33.packettime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.par_value = ProtoField.new("Par Value", "euronext.optiq.marketdatagateway.sbe.v5.33.parvalue", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.partition_id = ProtoField.new("Partition Id", "euronext.optiq.marketdatagateway.sbe.v5.33.partitionid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.marketdatagateway.sbe.v5.33.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pattern_id = ProtoField.new("Pattern Id", "euronext.optiq.marketdatagateway.sbe.v5.33.patternid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.payload = ProtoField.new("Payload", "euronext.optiq.marketdatagateway.sbe.v5.33.payload", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.payment_frequency = ProtoField.new("Payment Frequency", "euronext.optiq.marketdatagateway.sbe.v5.33.paymentfrequency", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pctg_of_capitalization = ProtoField.new("Pctg Of Capitalization", "euronext.optiq.marketdatagateway.sbe.v5.33.pctgofcapitalization", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.marketdatagateway.sbe.v5.33.pegoffset", ftypes.INT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_id = ProtoField.new("Phase Id", "euronext.optiq.marketdatagateway.sbe.v5.33.phaseid", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_qualifier = ProtoField.new("Phase Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.33.phasequalifier", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_time = ProtoField.new("Phase Time", "euronext.optiq.marketdatagateway.sbe.v5.33.phasetime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pool_factor = ProtoField.new("Pool Factor", "euronext.optiq.marketdatagateway.sbe.v5.33.poolfactor", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prct_varfrom_prev_close = ProtoField.new("Prct Varfrom Prev Close", "euronext.optiq.marketdatagateway.sbe.v5.33.prctvarfromprevclose", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.previous_priority = ProtoField.new("Previous Priority", "euronext.optiq.marketdatagateway.sbe.v5.33.previouspriority", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price = ProtoField.new("Price", "euronext.optiq.marketdatagateway.sbe.v5.33.price", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_decimals = ProtoField.new("Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.pricedecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_decimals_optional = ProtoField.new("Price Decimals Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.pricedecimalsoptional", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_index_level_decimals = ProtoField.new("Price Index Level Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.priceindexleveldecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_limits = ProtoField.new("Price Limits", "euronext.optiq.marketdatagateway.sbe.v5.33.pricelimits", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_multiplier = ProtoField.new("Price Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.33.pricemultiplier", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_multiplier_decimals = ProtoField.new("Price Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.pricemultiplierdecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_qualifier = ProtoField.new("Price Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.33.pricequalifier", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_type = ProtoField.new("Price Type", "euronext.optiq.marketdatagateway.sbe.v5.33.pricetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_group = ProtoField.new("Prices Group", "euronext.optiq.marketdatagateway.sbe.v5.33.pricesgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_groups = ProtoField.new("Prices Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.pricesgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pricing_algorithm = ProtoField.new("Pricing Algorithm", "euronext.optiq.marketdatagateway.sbe.v5.33.pricingalgorithm", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.product_code = ProtoField.new("Product Code", "euronext.optiq.marketdatagateway.sbe.v5.33.productcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.psn_high_weight = ProtoField.new("Psn High Weight", "euronext.optiq.marketdatagateway.sbe.v5.33.psnhighweight", ftypes.UINT16, nil, base.DEC, 0x0070)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.publication_date_time = ProtoField.new("Publication Date Time", "euronext.optiq.marketdatagateway.sbe.v5.33.publicationdatetime", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_spread_versus_call_versus_underlying = ProtoField.new("Put Spread Versus Call Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.putspreadversuscallversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000002000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_spread_versus_sell_a_call = ProtoField.new("Put Spread Versus Sell A Call", "euronext.optiq.marketdatagateway.sbe.v5.33.putspreadversussellacall", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000400000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_straddle_versus_sell_a_call_or_a_put = ProtoField.new("Put Straddle Versus Sell A Call Or A Put", "euronext.optiq.marketdatagateway.sbe.v5.33.putstraddleversussellacalloraput", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000800000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.marketdatagateway.sbe.v5.33.quantity", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.quantitydecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_notation = ProtoField.new("Quantity Notation", "euronext.optiq.marketdatagateway.sbe.v5.33.quantitynotation", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_optional = ProtoField.new("Quantity Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.quantityoptional", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quote_spread_multiplier = ProtoField.new("Quote Spread Multiplier", "euronext.optiq.marketdatagateway.sbe.v5.33.quotespreadmultiplier", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quote_update_type = ProtoField.new("Quote Update Type", "euronext.optiq.marketdatagateway.sbe.v5.33.quoteupdatetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quoting_period = ProtoField.new("Quoting Period", "euronext.optiq.marketdatagateway.sbe.v5.33.quotingperiod", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.random_uncrossing = ProtoField.new("Random Uncrossing", "euronext.optiq.marketdatagateway.sbe.v5.33.randomuncrossing", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_decimals = ProtoField.new("Ratio Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.ratiodecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_decimals_optional = ProtoField.new("Ratio Decimals Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.ratiodecimalsoptional", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_multiplier_decimals = ProtoField.new("Ratio Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.ratiomultiplierdecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.rebroadcast_indicator = ProtoField.new("Rebroadcast Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.rebroadcastindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reduced_tick_spread = ProtoField.new("Reduced Tick Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.reducedtickspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000800000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_continuous = ProtoField.new("Reference Price Origin In Continuous", "euronext.optiq.marketdatagateway.sbe.v5.33.referencepriceoriginincontinuous", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_opening_call = ProtoField.new("Reference Price Origin In Opening Call", "euronext.optiq.marketdatagateway.sbe.v5.33.referencepriceorigininopeningcall", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_trading_interruption = ProtoField.new("Reference Price Origin In Trading Interruption", "euronext.optiq.marketdatagateway.sbe.v5.33.referencepriceoriginintradinginterruption", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_spread_table_id = ProtoField.new("Reference Spread Table Id", "euronext.optiq.marketdatagateway.sbe.v5.33.referencespreadtableid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.repo_indicator = ProtoField.new("Repo Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.repoindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.repo_settlement_date = ProtoField.new("Repo Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.33.reposettlementdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_10 = ProtoField.new("Reserved 10", "euronext.optiq.marketdatagateway.sbe.v5.33.reserved10", ftypes.UINT16, nil, base.DEC, 0xFFC0)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_16 = ProtoField.new("Reserved 16", "euronext.optiq.marketdatagateway.sbe.v5.33.reserved16", ftypes.UINT64, nil, base.DEC, 0xFFFF000000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.marketdatagateway.sbe.v5.33.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.marketdatagateway.sbe.v5.33.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_bits = ProtoField.new("Reserved Bits", "euronext.optiq.marketdatagateway.sbe.v5.33.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.retransmission_end_time = ProtoField.new("Retransmission End Time", "euronext.optiq.marketdatagateway.sbe.v5.33.retransmissionendtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.retransmission_start_time = ProtoField.new("Retransmission Start Time", "euronext.optiq.marketdatagateway.sbe.v5.33.retransmissionstarttime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.scheduled_event = ProtoField.new("Scheduled Event", "euronext.optiq.marketdatagateway.sbe.v5.33.scheduledevent", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.scheduled_event_time = ProtoField.new("Scheduled Event Time", "euronext.optiq.marketdatagateway.sbe.v5.33.scheduledeventtime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.marketdatagateway.sbe.v5.33.schemaid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.second_notional_currency = ProtoField.new("Second Notional Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.secondnotionalcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.security_condition = ProtoField.new("Security Condition", "euronext.optiq.marketdatagateway.sbe.v5.33.securitycondition", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.sedol_code = ProtoField.new("Sedol Code", "euronext.optiq.marketdatagateway.sbe.v5.33.sedolcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.session = ProtoField.new("Session", "euronext.optiq.marketdatagateway.sbe.v5.33.session", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.session_trading_day = ProtoField.new("Session Trading Day", "euronext.optiq.marketdatagateway.sbe.v5.33.sessiontradingday", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_date = ProtoField.new("Settlement Date", "euronext.optiq.marketdatagateway.sbe.v5.33.settlementdate", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_delay = ProtoField.new("Settlement Delay", "euronext.optiq.marketdatagateway.sbe.v5.33.settlementdelay", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_method = ProtoField.new("Settlement Method", "euronext.optiq.marketdatagateway.sbe.v5.33.settlementmethod", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_tick_size = ProtoField.new("Settlement Tick Size", "euronext.optiq.marketdatagateway.sbe.v5.33.settlementticksize", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.share_amount_in_issue = ProtoField.new("Share Amount In Issue", "euronext.optiq.marketdatagateway.sbe.v5.33.shareamountinissue", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.simple_inter_commodity_spread = ProtoField.new("Simple Inter Commodity Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.simpleintercommodityspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000010000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.snapshot_time = ProtoField.new("Snapshot Time", "euronext.optiq.marketdatagateway.sbe.v5.33.snapshottime", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.spread = ProtoField.new("Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.spread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000008)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.marketdatagateway.sbe.v5.33.starttimevwap", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stats_update_type = ProtoField.new("Stats Update Type", "euronext.optiq.marketdatagateway.sbe.v5.33.statsupdatetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stats_update_value = ProtoField.new("Stats Update Value", "euronext.optiq.marketdatagateway.sbe.v5.33.statsupdatevalue", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.status_reason = ProtoField.new("Status Reason", "euronext.optiq.marketdatagateway.sbe.v5.33.statusreason", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stop_limit = ProtoField.new("Stop Limit", "euronext.optiq.marketdatagateway.sbe.v5.33.stoplimit", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stop_stop_loss = ProtoField.new("Stop Stop Loss", "euronext.optiq.marketdatagateway.sbe.v5.33.stopstoploss", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle = ProtoField.new("Straddle", "euronext.optiq.marketdatagateway.sbe.v5.33.straddle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000040000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_calendar_spread = ProtoField.new("Straddle Calendar Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.straddlecalendarspread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000002000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_calendar_spread_versus_underlying = ProtoField.new("Straddle Calendar Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.straddlecalendarspreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000001000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_versus_underlying = ProtoField.new("Straddle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.straddleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000010000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strangle = ProtoField.new("Strangle", "euronext.optiq.marketdatagateway.sbe.v5.33.strangle", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000400)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strangle_versus_underlying = ProtoField.new("Strangle Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.strangleversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000400000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_authorized = ProtoField.new("Strategy Authorized", "euronext.optiq.marketdatagateway.sbe.v5.33.strategyauthorized", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.marketdatagateway.sbe.v5.33.strategycode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_group = ProtoField.new("Strategy Standing Datarep 1 Group", "euronext.optiq.marketdatagateway.sbe.v5.33.strategystandingdatarep1group", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_groups = ProtoField.new("Strategy Standing Datarep 1 Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.strategystandingdatarep1groups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stressed_market_conditions = ProtoField.new("Stressed Market Conditions", "euronext.optiq.marketdatagateway.sbe.v5.33.stressedmarketconditions", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_currency = ProtoField.new("Strike Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.strikecurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.strikecurrencyindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price = ProtoField.new("Strike Price", "euronext.optiq.marketdatagateway.sbe.v5.33.strikeprice", ftypes.INT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price_decimals = ProtoField.new("Strike Price Decimals", "euronext.optiq.marketdatagateway.sbe.v5.33.strikepricedecimals", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price_decimals_ratio = ProtoField.new("Strike Price Decimals Ratio", "euronext.optiq.marketdatagateway.sbe.v5.33.strikepricedecimalsratio", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strip = ProtoField.new("Strip", "euronext.optiq.marketdatagateway.sbe.v5.33.strip", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000001000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.suspended = ProtoField.new("Suspended", "euronext.optiq.marketdatagateway.sbe.v5.33.suspended", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.33.symbolindex", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.symbol_index_optional = ProtoField.new("Symbol Index Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.symbolindexoptional", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.synthetic = ProtoField.new("Synthetic", "euronext.optiq.marketdatagateway.sbe.v5.33.synthetic", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000008000000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tax_code = ProtoField.new("Tax Code", "euronext.optiq.marketdatagateway.sbe.v5.33.taxcode", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tax_description_attaching_to_a_dividend = ProtoField.new("Tax Description Attaching To A Dividend", "euronext.optiq.marketdatagateway.sbe.v5.33.taxdescriptionattachingtoadividend", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.technical_notification_type = ProtoField.new("Technical Notification Type", "euronext.optiq.marketdatagateway.sbe.v5.33.technicalnotificationtype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.marketdatagateway.sbe.v5.33.templateid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_120mn = ProtoField.new("Threshold Lis Post Trade 120mn", "euronext.optiq.marketdatagateway.sbe.v5.33.thresholdlisposttrade120mn", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_60mn = ProtoField.new("Threshold Lis Post Trade 60mn", "euronext.optiq.marketdatagateway.sbe.v5.33.thresholdlisposttrade60mn", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_eod = ProtoField.new("Threshold Lis Post Trade Eod", "euronext.optiq.marketdatagateway.sbe.v5.33.thresholdlisposttradeeod", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tick_size_index_id = ProtoField.new("Tick Size Index Id", "euronext.optiq.marketdatagateway.sbe.v5.33.ticksizeindexid", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_group = ProtoField.new("Timetables Group", "euronext.optiq.marketdatagateway.sbe.v5.33.timetablesgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_groups = ProtoField.new("Timetables Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.timetablesgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_at_settlement = ProtoField.new("Trade At Settlement", "euronext.optiq.marketdatagateway.sbe.v5.33.tradeatsettlement", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.marketdatagateway.sbe.v5.33.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.marketdatagateway.sbe.v5.33.tradequalifier", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_reference = ProtoField.new("Trade Reference", "euronext.optiq.marketdatagateway.sbe.v5.33.tradereference", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.marketdatagateway.sbe.v5.33.tradetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_unique_identifier = ProtoField.new("Trade Unique Identifier", "euronext.optiq.marketdatagateway.sbe.v5.33.tradeuniqueidentifier", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_at_last = ProtoField.new("Trading At Last", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingatlast", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency = ProtoField.new("Trading Currency", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingcurrency", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingcurrencyindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency_optional = ProtoField.new("Trading Currency Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingcurrencyoptional", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_date_time = ProtoField.new("Trading Date Time", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingdatetime", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_period = ProtoField.new("Trading Period", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingperiod", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_period_optional = ProtoField.new("Trading Period Optional", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingperiodoptional", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_policy = ProtoField.new("Trading Policy", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingpolicy", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_side = ProtoField.new("Trading Side", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingside", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_unit = ProtoField.new("Trading Unit", "euronext.optiq.marketdatagateway.sbe.v5.33.tradingunit", ftypes.UINT64)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.transaction_type = ProtoField.new("Transaction Type", "euronext.optiq.marketdatagateway.sbe.v5.33.transactiontype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.transparency_indicator = ProtoField.new("Transparency Indicator", "euronext.optiq.marketdatagateway.sbe.v5.33.transparencyindicator", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.two_by_one_call_or_put_ratio_spread_versus_underlying = ProtoField.new("Two By One Call Or Put Ratio Spread Versus Underlying", "euronext.optiq.marketdatagateway.sbe.v5.33.twobyonecallorputratiospreadversusunderlying", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000080000000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.two_by_one_ratio_spread = ProtoField.new("Two By One Ratio Spread", "euronext.optiq.marketdatagateway.sbe.v5.33.twobyoneratiospread", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000000080)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "euronext.optiq.marketdatagateway.sbe.v5.33.typeofcorporateevent", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "euronext.optiq.marketdatagateway.sbe.v5.33.typeofmarketadmission", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.marketdatagateway.sbe.v5.33.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_derivatives_instrument_trading_code = ProtoField.new("Underlying Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingderivativesinstrumenttradingcode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_expiry = ProtoField.new("Underlying Expiry", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingexpiry", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_index_name = ProtoField.new("Underlying Index Name", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingindexname", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_index_term = ProtoField.new("Underlying Index Term", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingindexterm", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_isin_code = ProtoField.new("Underlying Isin Code", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingisincode", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_mic = ProtoField.new("Underlying Mic", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingmic", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_subtype = ProtoField.new("Underlying Subtype", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingsubtype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_symbol_index = ProtoField.new("Underlying Symbol Index", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingsymbolindex", ftypes.UINT32)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_type = ProtoField.new("Underlying Type", "euronext.optiq.marketdatagateway.sbe.v5.33.underlyingtype", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.update_type = ProtoField.new("Update Type", "euronext.optiq.marketdatagateway.sbe.v5.33.updatetype", ftypes.UINT8)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_group = ProtoField.new("Updates Group", "euronext.optiq.marketdatagateway.sbe.v5.33.updatesgroup", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_groups = ProtoField.new("Updates Groups", "euronext.optiq.marketdatagateway.sbe.v5.33.updatesgroups", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.venue = ProtoField.new("Venue", "euronext.optiq.marketdatagateway.sbe.v5.33.venue", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.version = ProtoField.new("Version", "euronext.optiq.marketdatagateway.sbe.v5.33.version", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.volatility_trade = ProtoField.new("Volatility Trade", "euronext.optiq.marketdatagateway.sbe.v5.33.volatilitytrade", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x0000000000080000)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.volume = ProtoField.new("Volume", "euronext.optiq.marketdatagateway.sbe.v5.33.volume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.wholesale_allowed = ProtoField.new("Wholesale Allowed", "euronext.optiq.marketdatagateway.sbe.v5.33.wholesaleallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)

-- Euronext Optiq MarketDataGateway Sbe 5.33 messages
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_full_trade_information_message = ProtoField.new("Apa Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v5.33.apafulltradeinformationmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_quotes_message = ProtoField.new("Apa Quotes Message", "euronext.optiq.marketdatagateway.sbe.v5.33.apaquotesmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_standing_data_message = ProtoField.new("Apa Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.33.apastandingdatamessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_instrument_reference_message = ProtoField.new("Bf Instrument Reference Message", "euronext.optiq.marketdatagateway.sbe.v5.33.bfinstrumentreferencemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_instrument_suspension_message = ProtoField.new("Bf Instrument Suspension Message", "euronext.optiq.marketdatagateway.sbe.v5.33.bfinstrumentsuspensionmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_trade_message = ProtoField.new("Bf Trade Message", "euronext.optiq.marketdatagateway.sbe.v5.33.bftrademessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bfnav_message = ProtoField.new("Bfnav Message", "euronext.optiq.marketdatagateway.sbe.v5.33.bfnavmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_standing_data_message = ProtoField.new("Contract Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.33.contractstandingdatamessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_of_day_message = ProtoField.new("End Of Day Message", "euronext.optiq.marketdatagateway.sbe.v5.33.endofdaymessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v5.33.endofsnapshotmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.full_trade_information_message = ProtoField.new("Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v5.33.fulltradeinformationmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.health_status_message = ProtoField.new("Health Status Message", "euronext.optiq.marketdatagateway.sbe.v5.33.healthstatusmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_summary_message = ProtoField.new("Index Summary Message", "euronext.optiq.marketdatagateway.sbe.v5.33.indexsummarymessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lis_package_structure_message = ProtoField.new("Lis Package Structure Message", "euronext.optiq.marketdatagateway.sbe.v5.33.lispackagestructuremessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_order_update_message = ProtoField.new("Long Order Update Message", "euronext.optiq.marketdatagateway.sbe.v5.33.longorderupdatemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_status_change_message = ProtoField.new("Market Status Change Message", "euronext.optiq.marketdatagateway.sbe.v5.33.marketstatuschangemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_update_message = ProtoField.new("Market Update Message", "euronext.optiq.marketdatagateway.sbe.v5.33.marketupdatemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_update_message = ProtoField.new("Order Update Message", "euronext.optiq.marketdatagateway.sbe.v5.33.orderupdatemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_standing_data_message = ProtoField.new("Outright Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.33.outrightstandingdatamessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_update_message = ProtoField.new("Price Update Message", "euronext.optiq.marketdatagateway.sbe.v5.33.priceupdatemessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "euronext.optiq.marketdatagateway.sbe.v5.33.realtimeindexmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.standing_data_message = ProtoField.new("Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.33.standingdatamessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "euronext.optiq.marketdatagateway.sbe.v5.33.startofdaymessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_of_snapshot_message = ProtoField.new("Start Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v5.33.startofsnapshotmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.statistics_message = ProtoField.new("Statistics Message", "euronext.optiq.marketdatagateway.sbe.v5.33.statisticsmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_data_message = ProtoField.new("Strategy Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v5.33.strategystandingdatamessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.technical_notification_message = ProtoField.new("Technical Notification Message", "euronext.optiq.marketdatagateway.sbe.v5.33.technicalnotificationmessage", ftypes.STRING)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetable_message = ProtoField.new("Timetable Message", "euronext.optiq.marketdatagateway.sbe.v5.33.timetablemessage", ftypes.STRING)

-- Euronext Optiq MarketDataGateway Sbe 5.33 generated fields
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_group_index = ProtoField.new("Contract Emm Properties Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.contractemmpropertiesgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_group_index = ProtoField.new("Em M Pattern Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.emmpatternrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_group_index = ProtoField.new("Interest Payment Date Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.interestpaymentdaterepgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_group_index = ProtoField.new("Market States Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.marketstatesgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_group_index = ProtoField.new("New Stats Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.newstatsgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.not_used_group_1_group_index = ProtoField.new("Not Used Group 1 Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.notusedgroup1groupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_group_index = ProtoField.new("Orders Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.ordersgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_group_index = ProtoField.new("Outright Rep Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.outrightrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_group_index = ProtoField.new("Package Components Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.packagecomponentsgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_group_index = ProtoField.new("Prices Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.pricesgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_group_index = ProtoField.new("Strategy Standing Datarep 1 Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.strategystandingdatarep1groupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_group_index = ProtoField.new("Timetables Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.timetablesgroupindex", ftypes.UINT16)
omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_group_index = ProtoField.new("Updates Group Index", "euronext.optiq.marketdatagateway.sbe.v5.33.updatesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 5.33 Element Dissection Options
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

-- Register Euronext Optiq MarketDataGateway Sbe 5.33 Show Options
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_full_trade_information_message = Pref.bool("Show Apa Full Trade Information Message", show.apa_full_trade_information_message, "Parse and add Apa Full Trade Information Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_quotes_message = Pref.bool("Show Apa Quotes Message", show.apa_quotes_message, "Parse and add Apa Quotes Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_standing_data_message = Pref.bool("Show Apa Standing Data Message", show.apa_standing_data_message, "Parse and add Apa Standing Data Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_reference_message = Pref.bool("Show Bf Instrument Reference Message", show.bf_instrument_reference_message, "Parse and add Bf Instrument Reference Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_suspension_message = Pref.bool("Show Bf Instrument Suspension Message", show.bf_instrument_suspension_message, "Parse and add Bf Instrument Suspension Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_trade_message = Pref.bool("Show Bf Trade Message", show.bf_trade_message, "Parse and add Bf Trade Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bfnav_message = Pref.bool("Show Bfnav Message", show.bfnav_message, "Parse and add Bfnav Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_group = Pref.bool("Show Contract Emm Properties Group", show.contract_emm_properties_group, "Parse and add Contract Emm Properties Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_groups = Pref.bool("Show Contract Emm Properties Groups", show.contract_emm_properties_groups, "Parse and add Contract Emm Properties Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_standing_data_message = Pref.bool("Show Contract Standing Data Message", show.contract_standing_data_message, "Parse and add Contract Standing Data Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_group = Pref.bool("Show Em M Pattern Rep Group", show.em_m_pattern_rep_group, "Parse and add Em M Pattern Rep Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_groups = Pref.bool("Show Em M Pattern Rep Groups", show.em_m_pattern_rep_groups, "Parse and add Em M Pattern Rep Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_full_trade_information_message = Pref.bool("Show Full Trade Information Message", show.full_trade_information_message, "Parse and add Full Trade Information Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_health_status_message = Pref.bool("Show Health Status Message", show.health_status_message, "Parse and add Health Status Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_index_summary_message = Pref.bool("Show Index Summary Message", show.index_summary_message, "Parse and add Index Summary Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_group = Pref.bool("Show Interest Payment Date Rep Group", show.interest_payment_date_rep_group, "Parse and add Interest Payment Date Rep Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_groups = Pref.bool("Show Interest Payment Date Rep Groups", show.interest_payment_date_rep_groups, "Parse and add Interest Payment Date Rep Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_lis_package_structure_message = Pref.bool("Show Lis Package Structure Message", show.lis_package_structure_message, "Parse and add Lis Package Structure Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_long_order_update_message = Pref.bool("Show Long Order Update Message", show.long_order_update_message, "Parse and add Long Order Update Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_data_packet_header = Pref.bool("Show Market Data Packet Header", show.market_data_packet_header, "Parse and add Market Data Packet Header to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_group = Pref.bool("Show Market States Group", show.market_states_group, "Parse and add Market States Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_groups = Pref.bool("Show Market States Groups", show.market_states_groups, "Parse and add Market States Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_status_change_message = Pref.bool("Show Market Status Change Message", show.market_status_change_message, "Parse and add Market Status Change Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_update_message = Pref.bool("Show Market Update Message", show.market_update_message, "Parse and add Market Update Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_mm_protections = Pref.bool("Show Mm Protections", show.mm_protections, "Parse and add Mm Protections to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_group = Pref.bool("Show New Stats Group", show.new_stats_group, "Parse and add New Stats Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_groups = Pref.bool("Show New Stats Groups", show.new_stats_groups, "Parse and add New Stats Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_type_rules = Pref.bool("Show Order Type Rules", show.order_type_rules, "Parse and add Order Type Rules to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_update_message = Pref.bool("Show Order Update Message", show.order_update_message, "Parse and add Order Update Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_group = Pref.bool("Show Orders Group", show.orders_group, "Parse and add Orders Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_groups = Pref.bool("Show Orders Groups", show.orders_groups, "Parse and add Orders Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_group = Pref.bool("Show Outright Rep Group", show.outright_rep_group, "Parse and add Outright Rep Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_groups = Pref.bool("Show Outright Rep Groups", show.outright_rep_groups, "Parse and add Outright Rep Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_standing_data_message = Pref.bool("Show Outright Standing Data Message", show.outright_standing_data_message, "Parse and add Outright Standing Data Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_group = Pref.bool("Show Package Components Group", show.package_components_group, "Parse and add Package Components Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_groups = Pref.bool("Show Package Components Groups", show.package_components_groups, "Parse and add Package Components Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_phase_qualifier = Pref.bool("Show Phase Qualifier", show.phase_qualifier, "Parse and add Phase Qualifier to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_price_update_message = Pref.bool("Show Price Update Message", show.price_update_message, "Parse and add Price Update Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_group = Pref.bool("Show Prices Group", show.prices_group, "Parse and add Prices Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_groups = Pref.bool("Show Prices Groups", show.prices_groups, "Parse and add Prices Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_real_time_index_message = Pref.bool("Show Real Time Index Message", show.real_time_index_message, "Parse and add Real Time Index Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_standing_data_message = Pref.bool("Show Standing Data Message", show.standing_data_message, "Parse and add Standing Data Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_snapshot_message = Pref.bool("Show Start Of Snapshot Message", show.start_of_snapshot_message, "Parse and add Start Of Snapshot Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_authorized = Pref.bool("Show Strategy Authorized", show.strategy_authorized, "Parse and add Strategy Authorized to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_data_message = Pref.bool("Show Strategy Standing Data Message", show.strategy_standing_data_message, "Parse and add Strategy Standing Data Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_group = Pref.bool("Show Strategy Standing Datarep 1 Group", show.strategy_standing_datarep_1_group, "Parse and add Strategy Standing Datarep 1 Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_groups = Pref.bool("Show Strategy Standing Datarep 1 Groups", show.strategy_standing_datarep_1_groups, "Parse and add Strategy Standing Datarep 1 Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_technical_notification_message = Pref.bool("Show Technical Notification Message", show.technical_notification_message, "Parse and add Technical Notification Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetable_message = Pref.bool("Show Timetable Message", show.timetable_message, "Parse and add Timetable Message to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_group = Pref.bool("Show Timetables Group", show.timetables_group, "Parse and add Timetables Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_groups = Pref.bool("Show Timetables Groups", show.timetables_groups, "Parse and add Timetables Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_group = Pref.bool("Show Updates Group", show.updates_group, "Parse and add Updates Group to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_groups = Pref.bool("Show Updates Groups", show.updates_groups, "Parse and add Updates Groups to protocol tree")
omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.apa_full_trade_information_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_full_trade_information_message then
    show.apa_full_trade_information_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_full_trade_information_message
    changed = true
  end
  if show.apa_quotes_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_quotes_message then
    show.apa_quotes_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_quotes_message
    changed = true
  end
  if show.apa_standing_data_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_standing_data_message then
    show.apa_standing_data_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_apa_standing_data_message
    changed = true
  end
  if show.bf_instrument_reference_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_reference_message then
    show.bf_instrument_reference_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_reference_message
    changed = true
  end
  if show.bf_instrument_suspension_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_suspension_message then
    show.bf_instrument_suspension_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_instrument_suspension_message
    changed = true
  end
  if show.bf_trade_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_trade_message then
    show.bf_trade_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bf_trade_message
    changed = true
  end
  if show.bfnav_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bfnav_message then
    show.bfnav_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_bfnav_message
    changed = true
  end
  if show.contract_emm_properties_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_group then
    show.contract_emm_properties_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_group
    changed = true
  end
  if show.contract_emm_properties_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_groups then
    show.contract_emm_properties_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_emm_properties_groups
    changed = true
  end
  if show.contract_standing_data_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_standing_data_message then
    show.contract_standing_data_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_contract_standing_data_message
    changed = true
  end
  if show.em_m_pattern_rep_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_group then
    show.em_m_pattern_rep_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_group
    changed = true
  end
  if show.em_m_pattern_rep_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_groups then
    show.em_m_pattern_rep_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_em_m_pattern_rep_groups
    changed = true
  end
  if show.end_of_day_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_day_message then
    show.end_of_day_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_snapshot_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.full_trade_information_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_full_trade_information_message then
    show.full_trade_information_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_full_trade_information_message
    changed = true
  end
  if show.group_size_encoding ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_group_size_encoding
    changed = true
  end
  if show.health_status_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_health_status_message then
    show.health_status_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_health_status_message
    changed = true
  end
  if show.index_summary_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_index_summary_message then
    show.index_summary_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_index_summary_message
    changed = true
  end
  if show.interest_payment_date_rep_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_group then
    show.interest_payment_date_rep_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_group
    changed = true
  end
  if show.interest_payment_date_rep_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_groups then
    show.interest_payment_date_rep_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_interest_payment_date_rep_groups
    changed = true
  end
  if show.lis_package_structure_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_lis_package_structure_message then
    show.lis_package_structure_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_lis_package_structure_message
    changed = true
  end
  if show.long_order_update_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_long_order_update_message then
    show.long_order_update_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_long_order_update_message
    changed = true
  end
  if show.market_data_packet_header ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_data_packet_header then
    show.market_data_packet_header = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_data_packet_header
    changed = true
  end
  if show.market_states_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_group then
    show.market_states_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_group
    changed = true
  end
  if show.market_states_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_groups then
    show.market_states_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_states_groups
    changed = true
  end
  if show.market_status_change_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_status_change_message then
    show.market_status_change_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_status_change_message
    changed = true
  end
  if show.market_update_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_update_message then
    show.market_update_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_market_update_message
    changed = true
  end
  if show.message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message then
    show.message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message_header then
    show.message_header = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_message_header
    changed = true
  end
  if show.mm_protections ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_mm_protections then
    show.mm_protections = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_mm_protections
    changed = true
  end
  if show.new_stats_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_group then
    show.new_stats_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_group
    changed = true
  end
  if show.new_stats_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_groups then
    show.new_stats_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_new_stats_groups
    changed = true
  end
  if show.not_used_group_1_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.order_type_rules ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_type_rules then
    show.order_type_rules = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_type_rules
    changed = true
  end
  if show.order_update_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_update_message then
    show.order_update_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_order_update_message
    changed = true
  end
  if show.orders_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_group then
    show.orders_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_group
    changed = true
  end
  if show.orders_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_groups then
    show.orders_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_orders_groups
    changed = true
  end
  if show.outright_rep_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_group then
    show.outright_rep_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_group
    changed = true
  end
  if show.outright_rep_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_groups then
    show.outright_rep_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_rep_groups
    changed = true
  end
  if show.outright_standing_data_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_standing_data_message then
    show.outright_standing_data_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_outright_standing_data_message
    changed = true
  end
  if show.package_components_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_group then
    show.package_components_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_group
    changed = true
  end
  if show.package_components_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_groups then
    show.package_components_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_package_components_groups
    changed = true
  end
  if show.packet ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet then
    show.packet = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet_flags then
    show.packet_flags = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_packet_flags
    changed = true
  end
  if show.phase_qualifier ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_phase_qualifier then
    show.phase_qualifier = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_phase_qualifier
    changed = true
  end
  if show.price_update_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_price_update_message then
    show.price_update_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_price_update_message
    changed = true
  end
  if show.prices_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_group then
    show.prices_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_group
    changed = true
  end
  if show.prices_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_groups then
    show.prices_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_prices_groups
    changed = true
  end
  if show.real_time_index_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_real_time_index_message then
    show.real_time_index_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_real_time_index_message
    changed = true
  end
  if show.standing_data_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_standing_data_message then
    show.standing_data_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_standing_data_message
    changed = true
  end
  if show.start_of_day_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_snapshot_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_snapshot_message then
    show.start_of_snapshot_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_start_of_snapshot_message
    changed = true
  end
  if show.statistics_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_statistics_message then
    show.statistics_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_statistics_message
    changed = true
  end
  if show.strategy_authorized ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_authorized then
    show.strategy_authorized = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_authorized
    changed = true
  end
  if show.strategy_standing_data_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_data_message then
    show.strategy_standing_data_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_data_message
    changed = true
  end
  if show.strategy_standing_datarep_1_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_group then
    show.strategy_standing_datarep_1_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_group
    changed = true
  end
  if show.strategy_standing_datarep_1_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_groups then
    show.strategy_standing_datarep_1_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_strategy_standing_datarep_1_groups
    changed = true
  end
  if show.technical_notification_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_technical_notification_message then
    show.technical_notification_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_technical_notification_message
    changed = true
  end
  if show.timetable_message ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetable_message then
    show.timetable_message = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetable_message
    changed = true
  end
  if show.timetables_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_group then
    show.timetables_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_group
    changed = true
  end
  if show.timetables_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_groups then
    show.timetables_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_timetables_groups
    changed = true
  end
  if show.trade_qualifier ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_trade_qualifier then
    show.trade_qualifier = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_trade_qualifier
    changed = true
  end
  if show.updates_group ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_group then
    show.updates_group = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_group
    changed = true
  end
  if show.updates_groups ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_groups then
    show.updates_groups = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_updates_groups
    changed = true
  end
  if show.payload ~= omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_payload then
    show.payload = omi_euronext_optiq_marketdatagateway_sbe_v5_33.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq MarketDataGateway Sbe 5.33
-----------------------------------------------------------------------

-- Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time = {}

-- Size: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.size = 8

-- Display: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.display = function(value)
  return "Snapshot Time: "..value
end

-- Dissect: Snapshot Time
euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.snapshot_time, range, value, display)

  return offset + length, value
end

-- Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num = {}

-- Size: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.size = 8

-- Display: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Md Seq Num: No Value"
  end

  return "Last Md Seq Num: "..value
end

-- Dissect: Last Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_md_seq_num, range, value, display)

  return offset + length, value
end

-- End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message = {}

-- Calculate size of: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.size

  return index
end

-- Display: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.dissect(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message = {}

-- Calculate size of: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.size

  return index
end

-- Display: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.last_md_seq_num.dissect(buffer, index, packet, parent)

  -- Snapshot Time: 8 Byte Unsigned Fixed Width Integer
  index, snapshot_time = euronext_optiq_marketdatagateway_sbe_v5_33.snapshot_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Snapshot Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_of_snapshot_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Condition
euronext_optiq_marketdatagateway_sbe_v5_33.security_condition = {}

-- Size: Security Condition
euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.size = 1

-- Display: Security Condition
euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.security_condition, range, value, display)

  return offset + length, value
end

-- Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.event_time = {}

-- Size: Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size = 8

-- Display: Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.event_time.display = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.event_time, range, value, display)

  return offset + length, value
end

-- Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index = {}

-- Size: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size = 4

-- Display: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator = {}

-- Size: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size = 1

-- Display: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.display = function(value)
  return "Rebroadcast Indicator: "..value
end

-- Dissect: Rebroadcast Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.rebroadcast_indicator, range, value, display)

  return offset + length, value
end

-- Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional = {}

-- Size: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size = 8

-- Display: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Seq Num Optional: No Value"
  end

  return "Md Seq Num Optional: "..value
end

-- Dissect: Md Seq Num Optional
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.md_seq_num_optional, range, value, display)

  return offset + length, value
end

-- Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message = {}

-- Calculate size of: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.size

  return index
end

-- Display: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String Enum with 8 values
  index, security_condition = euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Suspension Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.dissect = function(buffer, offset, packet, parent)
  if show.bf_instrument_suspension_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_instrument_suspension_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.fields(buffer, offset, packet, parent)
  end
end

-- Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price = {}

-- Size: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.size = 8

-- Display: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Offer Price: No Value"
  end

  return "Nav Offer Price: "..value
end

-- Dissect: Nav Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_offer_price, range, value, display)

  return offset + length, value
end

-- Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price = {}

-- Size: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.size = 8

-- Display: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Bid Price: No Value"
  end

  return "Nav Bid Price: "..value
end

-- Dissect: Nav Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_bid_price, range, value, display)

  return offset + length, value
end

-- Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional = {}

-- Size: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.size = 8

-- Display: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Event Time Optional: No Value"
  end

  return "Event Time Optional: "..value
end

-- Dissect: Event Time Optional
euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.event_time_optional, range, value, display)

  return offset + length, value
end

-- Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_price = {}

-- Size: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.size = 8

-- Display: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Nav Price: No Value"
  end

  return "Nav Price: "..value
end

-- Dissect: Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_price, range, value, display)

  return offset + length, value
end

-- Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator = {}

-- Size: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.size = 4

-- Display: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Modification Indicator: No Value"
  end

  return "Mmt Modification Indicator: "..value
end

-- Dissect: Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id = {}

-- Size: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.size = 52

-- Display: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Transaction Id: No Value"
  end

  return "Mifid Transaction Id: "..value
end

-- Dissect: Mifid Transaction Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_transaction_id, range, value, display)

  return offset + length, value
end

-- Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time = {}

-- Size: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.size = 8

-- Display: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Offer Date Time: No Value"
  end

  return "Bid Offer Date Time: "..value
end

-- Dissect: Bid Offer Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bid_offer_date_time, range, value, display)

  return offset + length, value
end

-- Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message = {}

-- Calculate size of: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.size

  return index
end

-- Display: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_offer_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.dissect(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Nav Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_price = euronext_optiq_marketdatagateway_sbe_v5_33.nav_price.dissect(buffer, index, packet, parent)

  -- Event Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, event_time_optional = euronext_optiq_marketdatagateway_sbe_v5_33.event_time_optional.dissect(buffer, index, packet, parent)

  -- Nav Bid Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_bid_price = euronext_optiq_marketdatagateway_sbe_v5_33.nav_bid_price.dissect(buffer, index, packet, parent)

  -- Nav Offer Price: 8 Byte Signed Fixed Width Integer Nullable
  index, nav_offer_price = euronext_optiq_marketdatagateway_sbe_v5_33.nav_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bfnav Message
euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.dissect = function(buffer, offset, packet, parent)
  if show.bfnav_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bfnav_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional = {}

-- Size: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.size = 3

-- Display: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency Optional: No Value"
  end

  return "Trading Currency Optional: "..value
end

-- Dissect: Trading Currency Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency_optional, range, value, display)

  return offset + length, value
end

-- Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded = {}

-- Size: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.size = 8

-- Display: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Notional Amount Traded: No Value"
  end

  return "Notional Amount Traded: "..value
end

-- Dissect: Notional Amount Traded
euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.notional_amount_traded, range, value, display)

  return offset + length, value
end

-- Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation = {}

-- Size: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.size = 3

-- Display: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quantity Notation: No Value"
  end

  return "Quantity Notation: "..value
end

-- Dissect: Quantity Notation
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_notation, range, value, display)

  return offset + length, value
end

-- Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation = {}

-- Size: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size = 4

-- Display: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price Notation: No Value"
  end

  return "Mifid Price Notation: "..value
end

-- Dissect: Mifid Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price_notation, range, value, display)

  return offset + length, value
end

-- Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode = {}

-- Size: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.size = 1

-- Display: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.display = function(value)
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
  if value == 0 then
    return "Mmt Trading Mode: No Value"
  end

  return "Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator = {}

-- Size: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.size = 4

-- Display: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Special Dividend Indicator: No Value"
  end

  return "Mmt Special Dividend Indicator: "..value
end

-- Dissect: Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator = {}

-- Size: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.size = 4

-- Display: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Benchmark Indicator: No Value"
  end

  return "Mmt Benchmark Indicator: "..value
end

-- Dissect: Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator = {}

-- Size: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.size = 4

-- Display: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Agency Cross Trade Indicator: No Value"
  end

  return "Mmt Agency Cross Trade Indicator: "..value
end

-- Dissect: Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.quantity = {}

-- Size: Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.quantity.size = 8

-- Display: Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity, range, value, display)

  return offset + length, value
end

-- Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.offer_price = {}

-- Size: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.size = 8

-- Display: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Price: No Value"
  end

  return "Offer Price: "..value
end

-- Dissect: Offer Price
euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.bid_price = {}

-- Size: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.size = 8

-- Display: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Price: No Value"
  end

  return "Bid Price: "..value
end

-- Dissect: Bid Price
euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Price
euronext_optiq_marketdatagateway_sbe_v5_33.price = {}

-- Size: Price
euronext_optiq_marketdatagateway_sbe_v5_33.price.size = 8

-- Display: Price
euronext_optiq_marketdatagateway_sbe_v5_33.price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
euronext_optiq_marketdatagateway_sbe_v5_33.price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price, range, value, display)

  return offset + length, value
end

-- Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message = {}

-- Calculate size of: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.size

  return index
end

-- Display: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_offer_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.bid_offer_date_time.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_33.price.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_price = euronext_optiq_marketdatagateway_sbe_v5_33.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_price = euronext_optiq_marketdatagateway_sbe_v5_33.offer_price.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = euronext_optiq_marketdatagateway_sbe_v5_33.quantity.dissect(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String Nullable
  index, mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String Nullable
  index, mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String Nullable
  index, mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String Enum with 12 values
  index, mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.dissect(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String Nullable
  index, quantity_notation = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.dissect(buffer, index, packet, parent)

  -- Notional Amount Traded: 8 Byte Signed Fixed Width Integer Nullable
  index, notional_amount_traded = euronext_optiq_marketdatagateway_sbe_v5_33.notional_amount_traded.dissect(buffer, index, packet, parent)

  -- Trading Currency Optional: 3 Byte Ascii String Nullable
  index, trading_currency_optional = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Trade Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.bf_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_trade_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date = {}

-- Size: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.size = 2

-- Display: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Interest Payment Date: No Value"
  end

  return "Interest Payment Date: "..value
end

-- Dissect: Interest Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date, range, value, display)

  return offset + length, value
end

-- Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group = {}

-- Calculate size of: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.size

  return index
end

-- Display: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.fields = function(buffer, offset, packet, parent, interest_payment_date_rep_group_index)
  local index = offset

  -- Implicit Interest Payment Date Rep Group Index
  if interest_payment_date_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_group_index, interest_payment_date_rep_group_index)
    iteration:set_generated()
  end

  -- Interest Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, interest_payment_date = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interest Payment Date Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.dissect = function(buffer, offset, packet, parent, interest_payment_date_rep_group_index)
  if show.interest_payment_date_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.fields(buffer, offset, packet, parent, interest_payment_date_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.fields(buffer, offset, packet, parent, interest_payment_date_rep_group_index)
  end
end

-- Num In Group
euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group = {}

-- Size: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.size = 1

-- Display: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short = {}

-- Size: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.size = 1

-- Display: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding = {}

-- Calculate size of: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.size

  return index
end

-- Display: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = euronext_optiq_marketdatagateway_sbe_v5_33.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = euronext_optiq_marketdatagateway_sbe_v5_33.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.group_size_encoding, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups = {}

-- Calculate size of: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local interest_payment_date_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + interest_payment_date_rep_group_count * 2

  return index
end

-- Display: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Interest Payment Date Rep Group
  for interest_payment_date_rep_group_index = 1, num_in_group do
    index, interest_payment_date_rep_group = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_group.dissect(buffer, index, packet, parent, interest_payment_date_rep_group_index)
  end

  return index
end

-- Dissect: Interest Payment Date Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.interest_payment_date_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.interest_payment_date_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.fields(buffer, offset, packet, parent)
end

-- Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals = {}

-- Size: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.size = 1

-- Display: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Ratio Multiplier Decimals: No Value"
  end

  return "Ratio Multiplier Decimals: "..value
end

-- Dissect: Ratio Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals = {}

-- Size: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.size = 1

-- Display: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Amount Decimals: No Value"
  end

  return "Amount Decimals: "..value
end

-- Dissect: Amount Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.amount_decimals, range, value, display)

  return offset + length, value
end

-- Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals = {}

-- Size: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.size = 1

-- Display: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Quantity Decimals: No Value"
  end

  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals = {}

-- Size: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.size = 1

-- Display: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Index Level Decimals: No Value"
  end

  return "Price Index Level Decimals: "..value
end

-- Dissect: Price Index Level Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_index_level_decimals, range, value, display)

  return offset + length, value
end

-- Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category = {}

-- Size: Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.size = 1

-- Display: Instrument Category
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_category, range, value, display)

  return offset + length, value
end

-- Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount = {}

-- Size: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.size = 8

-- Display: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Minimum Amount: No Value"
  end

  return "Minimum Amount: "..value
end

-- Dissect: Minimum Amount
euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.minimum_amount, range, value, display)

  return offset + length, value
end

-- Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency = {}

-- Size: Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.size = 1

-- Display: Payment Frequency
euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional = {}

-- Size: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size = 6

-- Display: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Optional: No Value"
  end

  return "Cfi Optional: "..value
end

-- Dissect: Cfi Optional
euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.cfi_optional, range, value, display)

  return offset + length, value
end

-- Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country = {}

-- Size: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.size = 3

-- Display: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuing Country: No Value"
  end

  return "Issuing Country: "..value
end

-- Dissect: Issuing Country
euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issuing_country, range, value, display)

  return offset + length, value
end

-- Issue Date
euronext_optiq_marketdatagateway_sbe_v5_33.issue_date = {}

-- Size: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.size = 2

-- Display: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Issue Date: No Value"
  end

  return "Issue Date: "..value
end

-- Dissect: Issue Date
euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros = {}

-- Size: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.size = 8

-- Display: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Dividend In Euros: No Value"
  end

  return "Gross Dividend In Euros: "..value
end

-- Dissect: Gross Dividend In Euros
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_dividend_in_euros, range, value, display)

  return offset + length, value
end

-- Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting = {}

-- Size: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.size = 8

-- Display: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Next Meeting: No Value"
  end

  return "Next Meeting: "..value
end

-- Dissect: Next Meeting
euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.next_meeting, range, value, display)

  return offset + length, value
end

-- Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend = {}

-- Size: Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.size = 1

-- Display: Tax Description Attaching To A Dividend
euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tax_description_attaching_to_a_dividend, range, value, display)

  return offset + length, value
end

-- Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date = {}

-- Size: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.size = 2

-- Display: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dividend Payment Date: No Value"
  end

  return "Dividend Payment Date: "..value
end

-- Dissect: Dividend Payment Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_payment_date, range, value, display)

  return offset + length, value
end

-- Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date = {}

-- Size: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.size = 2

-- Display: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Ex Dividend Date: No Value"
  end

  return "Ex Dividend Date: "..value
end

-- Dissect: Ex Dividend Date
euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ex_dividend_date, range, value, display)

  return offset + length, value
end

-- Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate = {}

-- Size: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.size = 8

-- Display: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Dividend Rate: No Value"
  end

  return "Dividend Rate: "..value
end

-- Dissect: Dividend Rate
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_rate, range, value, display)

  return offset + length, value
end

-- Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date = {}

-- Size: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.size = 2

-- Display: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dividend Record Date: No Value"
  end

  return "Dividend Record Date: "..value
end

-- Dissect: Dividend Record Date
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_record_date, range, value, display)

  return offset + length, value
end

-- Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency = {}

-- Size: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.size = 3

-- Display: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Dividend Currency: No Value"
  end

  return "Dividend Currency: "..value
end

-- Dissect: Dividend Currency
euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dividend_currency, range, value, display)

  return offset + length, value
end

-- Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit = {}

-- Size: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.size = 8

-- Display: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Dividend Payable Per Unit: No Value"
  end

  return "Gross Dividend Payable Per Unit: "..value
end

-- Dissect: Gross Dividend Payable Per Unit
euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_dividend_payable_per_unit, range, value, display)

  return offset + length, value
end

-- mic Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional = {}

-- Size: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.size = 4

-- Display: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "mic Optional: No Value"
  end

  return "mic Optional: "..value
end

-- Dissect: mic Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic_optional, range, value, display)

  return offset + length, value
end

-- Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.closing_price = {}

-- Size: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.size = 8

-- Display: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Closing Price: No Value"
  end

  return "Closing Price: "..value
end

-- Dissect: Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional = {}

-- Size: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.size = 8

-- Display: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date Optional: No Value"
  end

  return "Maturity Date Optional: "..value
end

-- Dissect: Maturity Date Optional
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maturity_date_optional, range, value, display)

  return offset + length, value
end

-- Coupon
euronext_optiq_marketdatagateway_sbe_v5_33.coupon = {}

-- Size: Coupon
euronext_optiq_marketdatagateway_sbe_v5_33.coupon.size = 8

-- Display: Coupon
euronext_optiq_marketdatagateway_sbe_v5_33.coupon.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Coupon: No Value"
  end

  return "Coupon: "..value
end

-- Dissect: Coupon
euronext_optiq_marketdatagateway_sbe_v5_33.coupon.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.coupon.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.coupon, range, value, display)

  return offset + length, value
end

-- Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator = {}

-- Size: Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.size = 1

-- Display: Gross Of Cdsc Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.gross_of_cdsc_indicator, range, value, display)

  return offset + length, value
end

-- Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price = {}

-- Size: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.size = 8

-- Display: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Nav Price: No Value"
  end

  return "Last Nav Price: "..value
end

-- Dissect: Last Nav Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_nav_price, range, value, display)

  return offset + length, value
end

-- Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund = {}

-- Size: Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.size = 1

-- Display: Opened Closed Fund
euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opened_closed_fund, range, value, display)

  return offset + length, value
end

-- Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue = {}

-- Size: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.size = 8

-- Display: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Share Amount In Issue: No Value"
  end

  return "Share Amount In Issue: "..value
end

-- Dissect: Share Amount In Issue
euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.share_amount_in_issue, range, value, display)

  return offset + length, value
end

-- Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing = {}

-- Size: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.size = 2

-- Display: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Date Of Initial Listing: No Value"
  end

  return "Date Of Initial Listing: "..value
end

-- Dissect: Date Of Initial Listing
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.date_of_initial_listing, range, value, display)

  return offset + length, value
end

-- Currency optional
euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional = {}

-- Size: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.size = 3

-- Display: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency optional: No Value"
  end

  return "Currency optional: "..value
end

-- Dissect: Currency optional
euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency_optional, range, value, display)

  return offset + length, value
end

-- Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name = {}

-- Size: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.size = 250

-- Display: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Instrument Name: No Value"
  end

  return "Long Instrument Name: "..value
end

-- Dissect: Long Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_instrument_name, range, value, display)

  return offset + length, value
end

-- Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name = {}

-- Size: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.size = 250

-- Display: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Issuer Name: No Value"
  end

  return "Long Issuer Name: "..value
end

-- Dissect: Long Issuer Name
euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_issuer_name, range, value, display)

  return offset + length, value
end

-- Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code = {}

-- Size: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.size = 7

-- Display: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sedol Code: No Value"
  end

  return "Sedol Code: "..value
end

-- Dissect: Sedol Code
euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.sedol_code, range, value, display)

  return offset + length, value
end

-- Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional = {}

-- Size: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.size = 12

-- Display: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code Optional: No Value"
  end

  return "Isin Code Optional: "..value
end

-- Dissect: Isin Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.isin_code_optional, range, value, display)

  return offset + length, value
end

-- Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment = {}

-- Size: Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.size = 1

-- Display: Optiq Segment
euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.optiq_segment, range, value, display)

  return offset + length, value
end

-- Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message = {}

-- Calculate size of: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.coupon.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.dissect(buffer, index, packet, parent)

  -- Isin Code Optional: 12 Byte Ascii String Nullable
  index, isin_code_optional = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code_optional.dissect(buffer, index, packet, parent)

  -- Sedol Code: 7 Byte Ascii String Nullable
  index, sedol_code = euronext_optiq_marketdatagateway_sbe_v5_33.sedol_code.dissect(buffer, index, packet, parent)

  -- Long Issuer Name: 250 Byte Ascii String Nullable
  index, long_issuer_name = euronext_optiq_marketdatagateway_sbe_v5_33.long_issuer_name.dissect(buffer, index, packet, parent)

  -- Long Instrument Name: 250 Byte Ascii String Nullable
  index, long_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_33.long_instrument_name.dissect(buffer, index, packet, parent)

  -- Currency optional: 3 Byte Ascii String Nullable
  index, currency_optional = euronext_optiq_marketdatagateway_sbe_v5_33.currency_optional.dissect(buffer, index, packet, parent)

  -- Date Of Initial Listing: 2 Byte Unsigned Fixed Width Integer Nullable
  index, date_of_initial_listing = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_initial_listing.dissect(buffer, index, packet, parent)

  -- Share Amount In Issue: 8 Byte Signed Fixed Width Integer Nullable
  index, share_amount_in_issue = euronext_optiq_marketdatagateway_sbe_v5_33.share_amount_in_issue.dissect(buffer, index, packet, parent)

  -- Opened Closed Fund: 1 Byte Ascii String Enum with 3 values
  index, opened_closed_fund = euronext_optiq_marketdatagateway_sbe_v5_33.opened_closed_fund.dissect(buffer, index, packet, parent)

  -- Last Nav Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_nav_price = euronext_optiq_marketdatagateway_sbe_v5_33.last_nav_price.dissect(buffer, index, packet, parent)

  -- Gross Of Cdsc Indicator: 1 Byte Ascii String Enum with 3 values
  index, gross_of_cdsc_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.gross_of_cdsc_indicator.dissect(buffer, index, packet, parent)

  -- Coupon: 8 Byte Signed Fixed Width Integer Nullable
  index, coupon = euronext_optiq_marketdatagateway_sbe_v5_33.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.dissect(buffer, index, packet, parent)

  -- Closing Price: 8 Byte Signed Fixed Width Integer Nullable
  index, closing_price = euronext_optiq_marketdatagateway_sbe_v5_33.closing_price.dissect(buffer, index, packet, parent)

  -- mic Optional: 4 Byte Ascii String Nullable
  index, mic_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mic_optional.dissect(buffer, index, packet, parent)

  -- Gross Dividend Payable Per Unit: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_dividend_payable_per_unit = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_payable_per_unit.dissect(buffer, index, packet, parent)

  -- Dividend Currency: 3 Byte Ascii String Nullable
  index, dividend_currency = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_currency.dissect(buffer, index, packet, parent)

  -- Dividend Record Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_record_date = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_record_date.dissect(buffer, index, packet, parent)

  -- Dividend Rate: 8 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_rate = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_rate.dissect(buffer, index, packet, parent)

  -- Ex Dividend Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, ex_dividend_date = euronext_optiq_marketdatagateway_sbe_v5_33.ex_dividend_date.dissect(buffer, index, packet, parent)

  -- Dividend Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dividend_payment_date = euronext_optiq_marketdatagateway_sbe_v5_33.dividend_payment_date.dissect(buffer, index, packet, parent)

  -- Tax Description Attaching To A Dividend: 1 Byte Ascii String Enum with 2 values
  index, tax_description_attaching_to_a_dividend = euronext_optiq_marketdatagateway_sbe_v5_33.tax_description_attaching_to_a_dividend.dissect(buffer, index, packet, parent)

  -- Next Meeting: 8 Byte Ascii String Nullable
  index, next_meeting = euronext_optiq_marketdatagateway_sbe_v5_33.next_meeting.dissect(buffer, index, packet, parent)

  -- Gross Dividend In Euros: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_dividend_in_euros = euronext_optiq_marketdatagateway_sbe_v5_33.gross_dividend_in_euros.dissect(buffer, index, packet, parent)

  -- Issue Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, issue_date = euronext_optiq_marketdatagateway_sbe_v5_33.issue_date.dissect(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String Nullable
  index, issuing_country = euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.dissect(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.dissect(buffer, index, packet, parent)

  -- Payment Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, payment_frequency = euronext_optiq_marketdatagateway_sbe_v5_33.payment_frequency.dissect(buffer, index, packet, parent)

  -- Minimum Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, minimum_amount = euronext_optiq_marketdatagateway_sbe_v5_33.minimum_amount.dissect(buffer, index, packet, parent)

  -- Instrument Category: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, instrument_category = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_category.dissect(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String Enum with 8 values
  index, security_condition = euronext_optiq_marketdatagateway_sbe_v5_33.security_condition.dissect(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.dissect(buffer, index, packet, parent)

  -- Price Index Level Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_index_level_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.price_index_level_decimals.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.dissect(buffer, index, packet, parent)

  -- Ratio Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_multiplier_decimals.dissect(buffer, index, packet, parent)

  -- Interest Payment Date Rep Groups: Struct of 2 fields
  index, interest_payment_date_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_33.interest_payment_date_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Reference Message
euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bf_instrument_reference_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bf_instrument_reference_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.fields(buffer, offset, packet, parent)
end

-- Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier = {}

-- Size: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.size = 16

-- Display: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Unique Identifier: No Value"
  end

  return "Trade Unique Identifier: "..value
end

-- Dissect: Trade Unique Identifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_unique_identifier, range, value, display)

  return offset + length, value
end

-- Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin = {}

-- Size: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.size = 4

-- Display: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Apa Origin: No Value"
  end

  return "Apa Origin: "..value
end

-- Dissect: Apa Origin
euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_origin, range, value, display)

  return offset + length, value
end

-- Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference = {}

-- Size: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.size = 52

-- Display: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Trade Reference: No Value"
  end

  return "Long Trade Reference: "..value
end

-- Dissect: Long Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_trade_reference, range, value, display)

  return offset + length, value
end

-- Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type = {}

-- Size: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.size = 4

-- Display: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Emission Allowance Type: No Value"
  end

  return "Mifid Emission Allowance Type: "..value
end

-- Dissect: Mifid Emission Allowance Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Venue
euronext_optiq_marketdatagateway_sbe_v5_33.venue = {}

-- Size: Venue
euronext_optiq_marketdatagateway_sbe_v5_33.venue.size = 11

-- Display: Venue
euronext_optiq_marketdatagateway_sbe_v5_33.venue.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Venue: No Value"
  end

  return "Venue: "..value
end

-- Dissect: Venue
euronext_optiq_marketdatagateway_sbe_v5_33.venue.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.venue.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.venue, range, value, display)

  return offset + length, value
end

-- Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals = {}

-- Size: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.size = 1

-- Display: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Multiplier Decimals: No Value"
  end

  return "Price Multiplier Decimals: "..value
end

-- Dissect: Price Multiplier Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier = {}

-- Size: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.size = 4

-- Display: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Price Multiplier: No Value"
  end

  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp = {}

-- Size: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.size = 8

-- Display: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Original Report Timestamp: No Value"
  end

  return "Original Report Timestamp: "..value
end

-- Dissect: Original Report Timestamp
euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.original_report_timestamp, range, value, display)

  return offset + length, value
end

-- Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference = {}

-- Size: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.size = 30

-- Display: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Reference: No Value"
  end

  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator = {}

-- Size: Efficient Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.size = 1

-- Display: Efficient Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral = {}

-- Size: Efficient Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.size = 1

-- Display: Efficient Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode = {}

-- Size: Efficient Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.size = 1

-- Display: Efficient Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator = {}

-- Size: Efficient Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.size = 1

-- Display: Efficient Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price = {}

-- Size: Efficient Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.size = 1

-- Display: Efficient Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator = {}

-- Size: Efficient Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.size = 1

-- Display: Efficient Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator = {}

-- Size: Efficient Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.size = 1

-- Display: Efficient Mmt Special Dividend Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator = {}

-- Size: Efficient Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.size = 1

-- Display: Efficient Mmt Benchmark Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator = {}

-- Size: Efficient Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.size = 1

-- Display: Efficient Mmt Modification Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator = {}

-- Size: Efficient Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.size = 1

-- Display: Efficient Mmt Agency Cross Trade Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator = {}

-- Size: Efficient Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.size = 1

-- Display: Efficient Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category = {}

-- Size: Efficient Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.size = 1

-- Display: Efficient Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode = {}

-- Size: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.size = 1

-- Display: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.display = function(value)
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
  if value == 0 then
    return "Efficient Mmt Trading Mode: No Value"
  end

  return "Efficient Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Efficient Mmt Trading Mode
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Efficient Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism = {}

-- Size: Efficient Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.size = 1

-- Display: Efficient Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.efficient_mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag = {}

-- Size: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.size = 5

-- Display: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Clearing Flag: No Value"
  end

  return "Mifid Clearing Flag: "..value
end

-- Dissect: Mifid Clearing Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_clearing_flag, range, value, display)

  return offset + length, value
end

-- Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency = {}

-- Size: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.size = 3

-- Display: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Notional Currency: No Value"
  end

  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount = {}

-- Size: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.size = 20

-- Display: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Notional Amount: No Value"
  end

  return "Mifid Notional Amount: "..value
end

-- Dissect: Mifid Notional Amount
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_notional_amount, range, value, display)

  return offset + length, value
end

-- Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit = {}

-- Size: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.size = 20

-- Display: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity Measurement Unit: No Value"
  end

  return "Mifid Quantity Measurement Unit: "..value
end

-- Dissect: Mifid Quantity Measurement Unit
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_quantity_measurement_unit, range, value, display)

  return offset + length, value
end

-- Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation = {}

-- Size: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.size = 25

-- Display: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Qty In Msrmt Unit Notation: No Value"
  end

  return "Mifid Qty In Msrmt Unit Notation: "..value
end

-- Dissect: Mifid Qty In Msrmt Unit Notation
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_qty_in_msrmt_unit_notation, range, value, display)

  return offset + length, value
end

-- Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency = {}

-- Size: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.size = 3

-- Display: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Currency: No Value"
  end

  return "Mifid Currency: "..value
end

-- Dissect: Mifid Currency
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_currency, range, value, display)

  return offset + length, value
end

-- Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity = {}

-- Size: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.size = 20

-- Display: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Quantity: No Value"
  end

  return "Mifid Quantity: "..value
end

-- Dissect: Mifid Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_quantity, range, value, display)

  return offset + length, value
end

-- Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional = {}

-- Size: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.size = 20

-- Display: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price Optional: No Value"
  end

  return "Mifid Price Optional: "..value
end

-- Dissect: Mifid Price Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price_optional, range, value, display)

  return offset + length, value
end

-- Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional = {}

-- Size: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.size = 12

-- Display: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Optional: No Value"
  end

  return "Mifid Instrument Id Optional: "..value
end

-- Dissect: Mifid Instrument Id Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_optional, range, value, display)

  return offset + length, value
end

-- Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional = {}

-- Size: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.size = 4

-- Display: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Type Optional: No Value"
  end

  return "Mifid Instrument Id Type Optional: "..value
end

-- Dissect: Mifid Instrument Id Type Optional
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_type_optional, range, value, display)

  return offset + length, value
end

-- Trade Type
euronext_optiq_marketdatagateway_sbe_v5_33.trade_type = {}

-- Size: Trade Type
euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.size = 1

-- Display: Trade Type
euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time = {}

-- Size: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.size = 27

-- Display: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Publication Date Time: No Value"
  end

  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time = {}

-- Size: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.size = 27

-- Display: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Date Time: No Value"
  end

  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Emm
euronext_optiq_marketdatagateway_sbe_v5_33.emm = {}

-- Size: Emm
euronext_optiq_marketdatagateway_sbe_v5_33.emm.size = 1

-- Display: Emm
euronext_optiq_marketdatagateway_sbe_v5_33.emm.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.emm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.emm.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.emm, range, value, display)

  return offset + length, value
end

-- Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num = {}

-- Size: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size = 8

-- Display: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.display = function(value)
  return "Md Seq Num: "..value
end

-- Dissect: Md Seq Num
euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.md_seq_num, range, value, display)

  return offset + length, value
end

-- Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message = {}

-- Calculate size of: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.venue.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.size

  return index
end

-- Display: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.dissect(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, trade_type = euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Type Optional: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Optional: 12 Byte Ascii String Nullable
  index, mifid_instrument_id_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Mifid Transaction Id: 52 Byte Ascii String
  index, mifid_transaction_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_transaction_id.dissect(buffer, index, packet, parent)

  -- Mifid Price Optional: 20 Byte Ascii String Nullable
  index, mifid_price_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.dissect(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.dissect(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.dissect(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.dissect(buffer, index, packet, parent)

  -- Mifid Qty In Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mifid_qty_in_msrmt_unit_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.dissect(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.dissect(buffer, index, packet, parent)

  -- Mifid Notional Amount: 20 Byte Ascii String Nullable
  index, mifid_notional_amount = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.dissect(buffer, index, packet, parent)

  -- Mifid Clearing Flag: 5 Byte Ascii String Nullable
  index, mifid_clearing_flag = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, efficient_mmt_market_mechanism = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_market_mechanism.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Trading Mode: 1 Byte Ascii String Enum with 12 values
  index, efficient_mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Transaction Category: 1 Byte Ascii String Enum with 6 values
  index, efficient_mmt_transaction_category = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_transaction_category.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Negotiation Indicator: 1 Byte Ascii String Enum with 9 values
  index, efficient_mmt_negotiation_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Agency Cross Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_agency_cross_trade_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Modification Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_modification_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Benchmark Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Special Dividend Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, efficient_mmt_off_book_automated_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Contributionto Price: 1 Byte Ascii String Enum with 5 values
  index, efficient_mmt_contributionto_price = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_contributionto_price.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Algorithmic Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_algorithmic_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Publication Mode: 1 Byte Ascii String Enum with 8 values
  index, efficient_mmt_publication_mode = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_publication_mode.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Post Trade Deferral: 1 Byte Ascii String Enum with 13 values
  index, efficient_mmt_post_trade_deferral = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_post_trade_deferral.dissect(buffer, index, packet, parent)

  -- Efficient Mmt Duplicative Indicator: 1 Byte Ascii String Enum with 3 values
  index, efficient_mmt_duplicative_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.efficient_mmt_duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.dissect(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.dissect(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.dissect(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.dissect(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = euronext_optiq_marketdatagateway_sbe_v5_33.venue.dissect(buffer, index, packet, parent)

  -- Mifid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mifid_emission_allowance_type = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.dissect(buffer, index, packet, parent)

  -- Long Trade Reference: 52 Byte Ascii String Nullable
  index, long_trade_reference = euronext_optiq_marketdatagateway_sbe_v5_33.long_trade_reference.dissect(buffer, index, packet, parent)

  -- Apa Origin: 4 Byte Ascii String Nullable
  index, apa_origin = euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: 16 Byte Ascii String Nullable
  index, trade_unique_identifier = euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.dissect = function(buffer, offset, packet, parent)
  if show.apa_full_trade_information_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_full_trade_information_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method = {}

-- Size: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.size = 1

-- Display: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Method: No Value"
  end

  return "Settlement Method: "..value
end

-- Dissect: Settlement Method
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_method, range, value, display)

  return offset + length, value
end

-- Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date = {}

-- Size: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.size = 8

-- Display: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expiry Date: No Value"
  end

  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Exer Style
euronext_optiq_marketdatagateway_sbe_v5_33.exer_style = {}

-- Size: Exer Style
euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.size = 1

-- Display: Exer Style
euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exer_style, range, value, display)

  return offset + length, value
end

-- Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals = {}

-- Size: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.size = 1

-- Display: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals: No Value"
  end

  return "Strike Price Decimals: "..value
end

-- Dissect: Strike Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price_decimals, range, value, display)

  return offset + length, value
end

-- Strike Price
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price = {}

-- Size: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.size = 8

-- Display: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Option Type
euronext_optiq_marketdatagateway_sbe_v5_33.option_type = {}

-- Size: Option Type
euronext_optiq_marketdatagateway_sbe_v5_33.option_type.size = 1

-- Display: Option Type
euronext_optiq_marketdatagateway_sbe_v5_33.option_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.option_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.option_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.option_type, range, value, display)

  return offset + length, value
end

-- Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term = {}

-- Size: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.size = 8

-- Display: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Term: No Value"
  end

  return "Underlying Index Term: "..value
end

-- Dissect: Underlying Index Term
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_index_term, range, value, display)

  return offset + length, value
end

-- Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name = {}

-- Size: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.size = 25

-- Display: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Index Name: No Value"
  end

  return "Underlying Index Name: "..value
end

-- Dissect: Underlying Index Name
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_index_name, range, value, display)

  return offset + length, value
end

-- Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code = {}

-- Size: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.size = 12

-- Display: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin Code: No Value"
  end

  return "Underlying Isin Code: "..value
end

-- Dissect: Underlying Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_isin_code, range, value, display)

  return offset + length, value
end

-- Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency = {}

-- Size: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.size = 3

-- Display: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Second Notional Currency: No Value"
  end

  return "Second Notional Currency: "..value
end

-- Dissect: Second Notional Currency
euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.second_notional_currency, range, value, display)

  return offset + length, value
end

-- Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name = {}

-- Size: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.size = 102

-- Display: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Full Instrument Name: No Value"
  end

  return "Full Instrument Name: "..value
end

-- Dissect: Full Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.full_instrument_name, range, value, display)

  return offset + length, value
end

-- Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id = {}

-- Size: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.size = 12

-- Display: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id: No Value"
  end

  return "Mifid Instrument Id: "..value
end

-- Dissect: Mifid Instrument Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id, range, value, display)

  return offset + length, value
end

-- Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type = {}

-- Size: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.size = 4

-- Display: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Instrument Id Type: No Value"
  end

  return "Mifid Instrument Id Type: "..value
end

-- Dissect: Mifid Instrument Id Type
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_instrument_id_type, range, value, display)

  return offset + length, value
end

-- Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message = {}

-- Calculate size of: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.option_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.size

  return index
end

-- Display: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.dissect(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.dissect(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.dissect(buffer, index, packet, parent)

  -- Second Notional Currency: 3 Byte Ascii String Nullable
  index, second_notional_currency = euronext_optiq_marketdatagateway_sbe_v5_33.second_notional_currency.dissect(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.dissect(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.dissect(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.dissect(buffer, index, packet, parent)

  -- Underlying Index Name: 25 Byte Ascii String Nullable
  index, underlying_index_name = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_name.dissect(buffer, index, packet, parent)

  -- Underlying Index Term: 8 Byte Ascii String Nullable
  index, underlying_index_term = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_index_term.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, option_type = euronext_optiq_marketdatagateway_sbe_v5_33.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.dissect(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, exer_style = euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.dissect(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.dissect(buffer, index, packet, parent)

  -- Expiry Date: 8 Byte Ascii String Nullable
  index, expiry_date = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_date.dissect(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.dissect = function(buffer, offset, packet, parent)
  if show.apa_standing_data_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_standing_data_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price = {}

-- Size: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.size = 20

-- Display: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Price: No Value"
  end

  return "Mifid Price: "..value
end

-- Dissect: Mifid Price
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_price, range, value, display)

  return offset + length, value
end

-- Quote Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type = {}

-- Size: Quote Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.size = 1

-- Display: Quote Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quote_update_type, range, value, display)

  return offset + length, value
end

-- Lei Code
euronext_optiq_marketdatagateway_sbe_v5_33.lei_code = {}

-- Size: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.size = 20

-- Display: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lei Code: No Value"
  end

  return "Lei Code: "..value
end

-- Dissect: Lei Code
euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lei_code, range, value, display)

  return offset + length, value
end

-- Currency
euronext_optiq_marketdatagateway_sbe_v5_33.currency = {}

-- Size: Currency
euronext_optiq_marketdatagateway_sbe_v5_33.currency.size = 3

-- Display: Currency
euronext_optiq_marketdatagateway_sbe_v5_33.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
euronext_optiq_marketdatagateway_sbe_v5_33.currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency, range, value, display)

  return offset + length, value
end

-- Mic
euronext_optiq_marketdatagateway_sbe_v5_33.mic = {}

-- Size: Mic
euronext_optiq_marketdatagateway_sbe_v5_33.mic.size = 4

-- Display: Mic
euronext_optiq_marketdatagateway_sbe_v5_33.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
euronext_optiq_marketdatagateway_sbe_v5_33.mic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mic.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic, range, value, display)

  return offset + length, value
end

-- Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message = {}

-- Calculate size of: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.size

  return index
end

-- Display: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_33.mic.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = euronext_optiq_marketdatagateway_sbe_v5_33.currency.dissect(buffer, index, packet, parent)

  -- Lei Code: 20 Byte Ascii String
  index, lei_code = euronext_optiq_marketdatagateway_sbe_v5_33.lei_code.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Quote Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_update_type = euronext_optiq_marketdatagateway_sbe_v5_33.quote_update_type.dissect(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String
  index, mifid_price = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price.dissect(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.dissect(buffer, index, packet, parent)

  -- Apa Origin: 4 Byte Ascii String Nullable
  index, apa_origin = euronext_optiq_marketdatagateway_sbe_v5_33.apa_origin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Quotes Message
euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.apa_quotes_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.apa_quotes_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty = {}

-- Size: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.size = 8

-- Display: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px = {}

-- Size: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.size = 8

-- Display: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio = {}

-- Size: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.size = 4

-- Display: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index = {}

-- Size: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.size = 4

-- Display: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.display = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group = {}

-- Calculate size of: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.size

  return index
end

-- Display: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.fields = function(buffer, offset, packet, parent, package_components_group_index)
  local index = offset

  -- Implicit Package Components Group Index
  if package_components_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_group_index, package_components_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_last_px = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_qty = euronext_optiq_marketdatagateway_sbe_v5_33.leg_last_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Package Components Group
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.dissect = function(buffer, offset, packet, parent, package_components_group_index)
  if show.package_components_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.fields(buffer, offset, packet, parent, package_components_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.fields(buffer, offset, packet, parent, package_components_group_index)
  end
end

-- Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups = {}

-- Calculate size of: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local package_components_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + package_components_group_count * 24

  return index
end

-- Display: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Package Components Group
  for package_components_group_index = 1, num_in_group do
    index, package_components_group = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_group.dissect(buffer, index, packet, parent, package_components_group_index)
  end

  return index
end

-- Dissect: Package Components Groups
euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.package_components_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.package_components_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.fields(buffer, offset, packet, parent)
end

-- Strategy Code
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code = {}

-- Size: Strategy Code
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.size = 1

-- Display: Strategy Code
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id = {}

-- Size: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.size = 52

-- Display: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mifid Execution Id: No Value"
  end

  return "Mifid Execution Id: "..value
end

-- Dissect: Mifid Execution Id
euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifid_execution_id, range, value, display)

  return offset + length, value
end

-- Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index = {}

-- Size: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.size = 4

-- Display: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.display = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message = {}

-- Calculate size of: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.size(buffer, offset + index)

  return index
end

-- Display: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.dissect(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.dissect(buffer, index, packet, parent)

  -- Package Components Groups: Struct of 2 fields
  index, package_components_groups = euronext_optiq_marketdatagateway_sbe_v5_33.package_components_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lis Package Structure Message
euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lis_package_structure_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lis_package_structure_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.fields(buffer, offset, packet, parent)
end

-- Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset = {}

-- Size: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.size = 1

-- Display: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.display = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity = {}

-- Size: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.size = 8

-- Display: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Quantity: No Value"
  end

  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Side
euronext_optiq_marketdatagateway_sbe_v5_33.order_side = {}

-- Size: Order Side
euronext_optiq_marketdatagateway_sbe_v5_33.order_side.size = 1

-- Display: Order Side
euronext_optiq_marketdatagateway_sbe_v5_33.order_side.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.order_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_side, range, value, display)

  return offset + length, value
end

-- Order Px
euronext_optiq_marketdatagateway_sbe_v5_33.order_px = {}

-- Size: Order Px
euronext_optiq_marketdatagateway_sbe_v5_33.order_px.size = 8

-- Display: Order Px
euronext_optiq_marketdatagateway_sbe_v5_33.order_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_marketdatagateway_sbe_v5_33.order_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_px, range, value, display)

  return offset + length, value
end

-- Order Type
euronext_optiq_marketdatagateway_sbe_v5_33.order_type = {}

-- Size: Order Type
euronext_optiq_marketdatagateway_sbe_v5_33.order_type.size = 1

-- Display: Order Type
euronext_optiq_marketdatagateway_sbe_v5_33.order_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.order_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_type, range, value, display)

  return offset + length, value
end

-- Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority = {}

-- Size: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.size = 8

-- Display: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Previous Priority: No Value"
  end

  return "Previous Priority: "..value
end

-- Dissect: Previous Priority
euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.previous_priority, range, value, display)

  return offset + length, value
end

-- Order Priority
euronext_optiq_marketdatagateway_sbe_v5_33.order_priority = {}

-- Size: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.size = 8

-- Display: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Action Type
euronext_optiq_marketdatagateway_sbe_v5_33.action_type = {}

-- Size: Action Type
euronext_optiq_marketdatagateway_sbe_v5_33.action_type.size = 1

-- Display: Action Type
euronext_optiq_marketdatagateway_sbe_v5_33.action_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.action_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.action_type, range, value, display)

  return offset + length, value
end

-- Orders Group
euronext_optiq_marketdatagateway_sbe_v5_33.orders_group = {}

-- Calculate size of: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.action_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_px.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_side.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.size

  return index
end

-- Display: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.fields = function(buffer, offset, packet, parent, orders_group_index)
  local index = offset

  -- Implicit Orders Group Index
  if orders_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_group_index, orders_group_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, action_type = euronext_optiq_marketdatagateway_sbe_v5_33.action_type.dissect(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = euronext_optiq_marketdatagateway_sbe_v5_33.order_priority.dissect(buffer, index, packet, parent)

  -- Previous Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, previous_priority = euronext_optiq_marketdatagateway_sbe_v5_33.previous_priority.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, order_type = euronext_optiq_marketdatagateway_sbe_v5_33.order_type.dissect(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = euronext_optiq_marketdatagateway_sbe_v5_33.order_px.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = euronext_optiq_marketdatagateway_sbe_v5_33.order_side.dissect(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.order_quantity.dissect(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = euronext_optiq_marketdatagateway_sbe_v5_33.peg_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Group
euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.dissect = function(buffer, offset, packet, parent, orders_group_index)
  if show.orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.fields(buffer, offset, packet, parent, orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.fields(buffer, offset, packet, parent, orders_group_index)
  end
end

-- Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups = {}

-- Calculate size of: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + orders_group_count * 40

  return index
end

-- Display: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Orders Group
  for orders_group_index = 1, num_in_group do
    index, orders_group = euronext_optiq_marketdatagateway_sbe_v5_33.orders_group.dissect(buffer, index, packet, parent, orders_group_index)
  end

  return index
end

-- Dissect: Orders Groups
euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.orders_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.orders_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.fields(buffer, offset, packet, parent)
end

-- Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message = {}

-- Calculate size of: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_order_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_order_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.fields(buffer, offset, packet, parent)
end

-- Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group = {}

-- Calculate size of: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  return index
end

-- Display: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.fields = function(buffer, offset, packet, parent, outright_rep_group_index)
  local index = offset

  -- Implicit Outright Rep Group Index
  if outright_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_group_index, outright_rep_group_index)
    iteration:set_generated()
  end

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.dissect = function(buffer, offset, packet, parent, outright_rep_group_index)
  if show.outright_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.fields(buffer, offset, packet, parent, outright_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.fields(buffer, offset, packet, parent, outright_rep_group_index)
  end
end

-- Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups = {}

-- Calculate size of: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local outright_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + outright_rep_group_count * 1

  return index
end

-- Display: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Outright Rep Group
  for outright_rep_group_index = 1, num_in_group do
    index, outright_rep_group = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_group.dissect(buffer, index, packet, parent, outright_rep_group_index)
  end

  return index
end

-- Dissect: Outright Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.fields(buffer, offset, packet, parent)
end

-- Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date = {}

-- Size: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.size = 2

-- Display: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Expiration Date: No Value"
  end

  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier = {}

-- Size: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.size = 8

-- Display: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lot Multiplier: No Value"
  end

  return "Lot Multiplier: "..value
end

-- Dissect: Lot Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_multiplier, range, value, display)

  return offset + length, value
end

-- Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit = {}

-- Size: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.size = 8

-- Display: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trading Unit: No Value"
  end

  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index = {}

-- Size: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.size = 4

-- Display: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Symbol Index: No Value"
  end

  return "Underlying Symbol Index: "..value
end

-- Dissect: Underlying Symbol Index
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_symbol_index, range, value, display)

  return offset + length, value
end

-- Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code = {}

-- Size: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.size = 18

-- Display: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Derivatives Instrument Trading Code: No Value"
  end

  return "Underlying Derivatives Instrument Trading Code: "..value
end

-- Dissect: Underlying Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Expiry Cycle Type
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type = {}

-- Size: Expiry Cycle Type
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.size = 1

-- Display: Expiry Cycle Type
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.expiry_cycle_type, range, value, display)

  return offset + length, value
end

-- Derivatives Instrument Type
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type = {}

-- Size: Derivatives Instrument Type
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.size = 1

-- Display: Derivatives Instrument Type
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_type, range, value, display)

  return offset + length, value
end

-- Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional = {}

-- Size: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.size = 18

-- Display: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Derivatives Instrument Trading Code Optional: No Value"
  end

  return "Derivatives Instrument Trading Code Optional: "..value
end

-- Dissect: Derivatives Instrument Trading Code Optional
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_trading_code_optional, range, value, display)

  return offset + length, value
end

-- Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry = {}

-- Size: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.size = 2

-- Display: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Days To Expiry: No Value"
  end

  return "Days To Expiry: "..value
end

-- Dissect: Days To Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.days_to_expiry, range, value, display)

  return offset + length, value
end

-- Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date = {}

-- Size: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.size = 2

-- Display: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Last Trading Date: No Value"
  end

  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Lot Size
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size = {}

-- Size: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.size = 8

-- Display: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date = {}

-- Size: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.size = 8

-- Display: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code = {}

-- Size: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.size = 12

-- Display: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code: No Value"
  end

  return "Isin Code: "..value
end

-- Dissect: Isin Code
euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date = {}

-- Size: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.size = 2

-- Display: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.display = function(value)
  return "Instrument Event Date: "..value
end

-- Dissect: Instrument Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_event_date, range, value, display)

  return offset + length, value
end

-- Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message = {}

-- Calculate size of: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.dissect(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.dissect(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.dissect(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.dissect(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer
  index, lot_size = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.dissect(buffer, index, packet, parent)

  -- Last Trading Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, last_trading_date = euronext_optiq_marketdatagateway_sbe_v5_33.last_trading_date.dissect(buffer, index, packet, parent)

  -- Days To Expiry: 2 Byte Unsigned Fixed Width Integer Nullable
  index, days_to_expiry = euronext_optiq_marketdatagateway_sbe_v5_33.days_to_expiry.dissect(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code Optional: 18 Byte Ascii String Nullable
  index, derivatives_instrument_trading_code_optional = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code_optional.dissect(buffer, index, packet, parent)

  -- Derivatives Instrument Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, derivatives_instrument_type = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_type.dissect(buffer, index, packet, parent)

  -- Expiry Cycle Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, expiry_cycle_type = euronext_optiq_marketdatagateway_sbe_v5_33.expiry_cycle_type.dissect(buffer, index, packet, parent)

  -- Underlying Derivatives Instrument Trading Code: 18 Byte Ascii String Nullable
  index, underlying_derivatives_instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_derivatives_instrument_trading_code.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.dissect(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.dissect(buffer, index, packet, parent)

  -- Lot Multiplier: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.dissect(buffer, index, packet, parent)

  -- Expiration Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expiration_date = euronext_optiq_marketdatagateway_sbe_v5_33.expiration_date.dissect(buffer, index, packet, parent)

  -- Outright Rep Groups: Struct of 2 fields
  index, outright_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_33.outright_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.outright_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.outright_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.fields(buffer, offset, packet, parent)
end

-- Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay = {}

-- Size: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.size = 4

-- Display: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Collar Unhalt Delay: No Value"
  end

  return "Collar Unhalt Delay: "..value
end

-- Dissect: Collar Unhalt Delay
euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_unhalt_delay, range, value, display)

  return offset + length, value
end

-- Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb = {}

-- Size: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.size = 1

-- Display: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Max Unhalt Nb: No Value"
  end

  return "Collar Max Unhalt Nb: "..value
end

-- Dissect: Collar Max Unhalt Nb
euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_max_unhalt_nb, range, value, display)

  return offset + length, value
end

-- Dynamic Collar Logic
euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic = {}

-- Size: Dynamic Collar Logic
euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.size = 1

-- Display: Dynamic Collar Logic
euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dynamic_collar_logic, range, value, display)

  return offset + length, value
end

-- Jelly Roll
euronext_optiq_marketdatagateway_sbe_v5_33.jelly_roll = {}

-- Butterfly
euronext_optiq_marketdatagateway_sbe_v5_33.butterfly = {}

-- Call Or Put Cabinet
euronext_optiq_marketdatagateway_sbe_v5_33.call_or_put_cabinet = {}

-- Spread
euronext_optiq_marketdatagateway_sbe_v5_33.spread = {}

-- Calendar Spread
euronext_optiq_marketdatagateway_sbe_v5_33.calendar_spread = {}

-- Diagonal Calendar Spread
euronext_optiq_marketdatagateway_sbe_v5_33.diagonal_calendar_spread = {}

-- Guts
euronext_optiq_marketdatagateway_sbe_v5_33.guts = {}

-- Two By One Ratio Spread
euronext_optiq_marketdatagateway_sbe_v5_33.two_by_one_ratio_spread = {}

-- Iron Butterfly
euronext_optiq_marketdatagateway_sbe_v5_33.iron_butterfly = {}

-- Combo
euronext_optiq_marketdatagateway_sbe_v5_33.combo = {}

-- Strangle
euronext_optiq_marketdatagateway_sbe_v5_33.strangle = {}

-- Ladder
euronext_optiq_marketdatagateway_sbe_v5_33.ladder = {}

-- Strip
euronext_optiq_marketdatagateway_sbe_v5_33.strip = {}

-- Straddle Calendar Spread
euronext_optiq_marketdatagateway_sbe_v5_33.straddle_calendar_spread = {}

-- Pack
euronext_optiq_marketdatagateway_sbe_v5_33.pack = {}

-- Diagonal Straddle Calendar Spread
euronext_optiq_marketdatagateway_sbe_v5_33.diagonal_straddle_calendar_spread = {}

-- Simple Inter Commodity Spread
euronext_optiq_marketdatagateway_sbe_v5_33.simple_inter_commodity_spread = {}

-- Conversion Reversal
euronext_optiq_marketdatagateway_sbe_v5_33.conversion_reversal = {}

-- Straddle
euronext_optiq_marketdatagateway_sbe_v5_33.straddle = {}

-- Volatility Trade
euronext_optiq_marketdatagateway_sbe_v5_33.volatility_trade = {}

-- Condor
euronext_optiq_marketdatagateway_sbe_v5_33.condor = {}

-- Box
euronext_optiq_marketdatagateway_sbe_v5_33.box = {}

-- Bundle
euronext_optiq_marketdatagateway_sbe_v5_33.bundle = {}

-- Reduced Tick Spread
euronext_optiq_marketdatagateway_sbe_v5_33.reduced_tick_spread = {}

-- Ladder Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.ladder_versus_underlying = {}

-- Butterfly Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.butterfly_versus_underlying = {}

-- Call Spread Versus Put Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.call_spread_versus_put_versus_underlying = {}

-- Call Or Put Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.call_or_put_spread_versus_underlying = {}

-- Call Or Put Calendar Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.call_or_put_calendar_spread_versus_underlying = {}

-- Call Put Diagonal Calendar Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.call_put_diagonal_calendar_spread_versus_underlying = {}

-- Guts Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.guts_versus_underlying = {}

-- Two By One Call Or Put Ratio Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.two_by_one_call_or_put_ratio_spread_versus_underlying = {}

-- Iron Butterfly Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.iron_butterfly_versus_underlying = {}

-- Combo Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.combo_versus_underlying = {}

-- Strangle Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.strangle_versus_underlying = {}

-- Exchange For Physical
euronext_optiq_marketdatagateway_sbe_v5_33.exchange_for_physical = {}

-- Straddle Calendar Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.straddle_calendar_spread_versus_underlying = {}

-- Put Spread Versus Call Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.put_spread_versus_call_versus_underlying = {}

-- Diagonal Straddle Calendar Spread Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.diagonal_straddle_calendar_spread_versus_underlying = {}

-- Synthetic
euronext_optiq_marketdatagateway_sbe_v5_33.synthetic = {}

-- Straddle Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.straddle_versus_underlying = {}

-- Condor Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.condor_versus_underlying = {}

-- Buy Write
euronext_optiq_marketdatagateway_sbe_v5_33.buy_write = {}

-- Iron Condor Versus Underlying
euronext_optiq_marketdatagateway_sbe_v5_33.iron_condor_versus_underlying = {}

-- Iron Condor
euronext_optiq_marketdatagateway_sbe_v5_33.iron_condor = {}

-- Call Spread Versus Sell A Put
euronext_optiq_marketdatagateway_sbe_v5_33.call_spread_versus_sell_a_put = {}

-- Put Spread Versus Sell A Call
euronext_optiq_marketdatagateway_sbe_v5_33.put_spread_versus_sell_a_call = {}

-- Put Straddle Versus Sell A Call Or A Put
euronext_optiq_marketdatagateway_sbe_v5_33.put_straddle_versus_sell_a_call_or_a_put = {}

-- Reserved 16
euronext_optiq_marketdatagateway_sbe_v5_33.reserved_16 = {}

-- Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized = {}

-- Size: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.size = 8

-- Display: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.bits = function(buffer, offset, packet, parent)

  -- Reserved 16: 16 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_16, buffer(offset, 8))

  -- Put Straddle Versus Sell A Call Or A Put: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_straddle_versus_sell_a_call_or_a_put, buffer(offset, 8))

  -- Put Spread Versus Sell A Call: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_spread_versus_sell_a_call, buffer(offset, 8))

  -- Call Spread Versus Sell A Put: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_spread_versus_sell_a_put, buffer(offset, 8))

  -- Iron Condor: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_condor, buffer(offset, 8))

  -- Iron Condor Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_condor_versus_underlying, buffer(offset, 8))

  -- Buy Write: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.buy_write, buffer(offset, 8))

  -- Condor Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.condor_versus_underlying, buffer(offset, 8))

  -- Straddle Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_versus_underlying, buffer(offset, 8))

  -- Synthetic: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.synthetic, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Put Spread Versus Call Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.put_spread_versus_call_versus_underlying, buffer(offset, 8))

  -- Straddle Calendar Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Exchange For Physical: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exchange_for_physical, buffer(offset, 8))

  -- Strangle Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strangle_versus_underlying, buffer(offset, 8))

  -- Combo Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.combo_versus_underlying, buffer(offset, 8))

  -- Iron Butterfly Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_butterfly_versus_underlying, buffer(offset, 8))

  -- Two By One Call Or Put Ratio Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.two_by_one_call_or_put_ratio_spread_versus_underlying, buffer(offset, 8))

  -- Guts Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guts_versus_underlying, buffer(offset, 8))

  -- Call Put Diagonal Calendar Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_put_diagonal_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Calendar Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_calendar_spread_versus_underlying, buffer(offset, 8))

  -- Call Or Put Spread Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_spread_versus_underlying, buffer(offset, 8))

  -- Call Spread Versus Put Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_spread_versus_put_versus_underlying, buffer(offset, 8))

  -- Butterfly Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.butterfly_versus_underlying, buffer(offset, 8))

  -- Ladder Versus Underlying: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ladder_versus_underlying, buffer(offset, 8))

  -- Reduced Tick Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reduced_tick_spread, buffer(offset, 8))

  -- Bundle: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.bundle, buffer(offset, 8))

  -- Box: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.box, buffer(offset, 8))

  -- Condor: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.condor, buffer(offset, 8))

  -- Volatility Trade: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.volatility_trade, buffer(offset, 8))

  -- Straddle: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle, buffer(offset, 8))

  -- Conversion Reversal: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.conversion_reversal, buffer(offset, 8))

  -- Simple Inter Commodity Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.simple_inter_commodity_spread, buffer(offset, 8))

  -- Diagonal Straddle Calendar Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_straddle_calendar_spread, buffer(offset, 8))

  -- Pack: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pack, buffer(offset, 8))

  -- Straddle Calendar Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.straddle_calendar_spread, buffer(offset, 8))

  -- Strip: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strip, buffer(offset, 8))

  -- Ladder: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ladder, buffer(offset, 8))

  -- Strangle: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strangle, buffer(offset, 8))

  -- Combo: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.combo, buffer(offset, 8))

  -- Iron Butterfly: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.iron_butterfly, buffer(offset, 8))

  -- Two By One Ratio Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.two_by_one_ratio_spread, buffer(offset, 8))

  -- Guts: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guts, buffer(offset, 8))

  -- Diagonal Calendar Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.diagonal_calendar_spread, buffer(offset, 8))

  -- Calendar Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.calendar_spread, buffer(offset, 8))

  -- Spread: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.spread, buffer(offset, 8))

  -- Call Or Put Cabinet: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_or_put_cabinet, buffer(offset, 8))

  -- Butterfly: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.butterfly, buffer(offset, 8))

  -- Jelly Roll: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.jelly_roll, buffer(offset, 8))
end

-- Dissect: Strategy Authorized
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.dissect = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_authorized, range, display)

  if show.strategy_authorized then
    euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.bits(buffer, offset, packet, element)
  end

  return offset + 8, range
end

-- Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional = {}

-- Size: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.size = 8

-- Display: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lot Size Optional: No Value"
  end

  return "Lot Size Optional: "..value
end

-- Dissect: Lot Size Optional
euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.lot_size_optional, range, value, display)

  return offset + length, value
end

-- Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id = {}

-- Size: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.size = 2

-- Display: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Pattern Id: No Value"
  end

  return "Pattern Id: "..value
end

-- Dissect: Pattern Id
euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pattern_id, range, value, display)

  return offset + length, value
end

-- Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id = {}

-- Size: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.size = 2

-- Display: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Tick Size Index Id: No Value"
  end

  return "Tick Size Index Id: "..value
end

-- Dissect: Tick Size Index Id
euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tick_size_index_id, range, value, display)

  return offset + length, value
end

-- Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional = {}

-- Size: Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.size = 1

-- Display: Emm Optional
euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.emm_optional, range, value, display)

  return offset + length, value
end

-- Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group = {}

-- Calculate size of: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.size

  return index
end

-- Display: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.fields = function(buffer, offset, packet, parent, contract_emm_properties_group_index)
  local index = offset

  -- Implicit Contract Emm Properties Group Index
  if contract_emm_properties_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_group_index, contract_emm_properties_group_index)
    iteration:set_generated()
  end

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.dissect(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.dissect(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.dissect(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.dissect(buffer, index, packet, parent)

  -- Strategy Authorized: Struct of 49 fields
  index, strategy_authorized = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_authorized.dissect(buffer, index, packet, parent)

  -- Dynamic Collar Logic: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, dynamic_collar_logic = euronext_optiq_marketdatagateway_sbe_v5_33.dynamic_collar_logic.dissect(buffer, index, packet, parent)

  -- Collar Max Unhalt Nb: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_max_unhalt_nb = euronext_optiq_marketdatagateway_sbe_v5_33.collar_max_unhalt_nb.dissect(buffer, index, packet, parent)

  -- Collar Unhalt Delay: 4 Byte Unsigned Fixed Width Integer Nullable
  index, collar_unhalt_delay = euronext_optiq_marketdatagateway_sbe_v5_33.collar_unhalt_delay.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Emm Properties Group
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.dissect = function(buffer, offset, packet, parent, contract_emm_properties_group_index)
  if show.contract_emm_properties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.fields(buffer, offset, packet, parent, contract_emm_properties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.fields(buffer, offset, packet, parent, contract_emm_properties_group_index)
  end
end

-- Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups = {}

-- Calculate size of: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local contract_emm_properties_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + contract_emm_properties_group_count * 27

  return index
end

-- Display: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Contract Emm Properties Group
  for contract_emm_properties_group_index = 1, num_in_group do
    index, contract_emm_properties_group = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_group.dissect(buffer, index, packet, parent, contract_emm_properties_group_index)
  end

  return index
end

-- Dissect: Contract Emm Properties Groups
euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_emm_properties_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_emm_properties_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.fields(buffer, offset, packet, parent)
end

-- Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm = {}

-- Size: Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.size = 1

-- Display: Pricing Algorithm
euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pricing_algorithm, range, value, display)

  return offset + length, value
end

-- Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag = {}

-- Size: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.size = 1

-- Display: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.display = function(value)
  return "Mifidii Liquid Flag: "..value
end

-- Dissect: Mifidii Liquid Flag
euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mifidii_liquid_flag, range, value, display)

  return offset + length, value
end

-- Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor = {}

-- Size: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.size = 1

-- Display: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Collar Expansion Factor: No Value"
  end

  return "Collar Expansion Factor: "..value
end

-- Dissect: Collar Expansion Factor
euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.collar_expansion_factor, range, value, display)

  return offset + length, value
end

-- Reference Price Origin In Trading Interruption
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption = {}

-- Size: Reference Price Origin In Trading Interruption
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.size = 1

-- Display: Reference Price Origin In Trading Interruption
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_trading_interruption, range, value, display)

  return offset + length, value
end

-- Reference Price Origin In Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous = {}

-- Size: Reference Price Origin In Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.size = 1

-- Display: Reference Price Origin In Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_continuous, range, value, display)

  return offset + length, value
end

-- Reference Price Origin In Opening Call
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call = {}

-- Size: Reference Price Origin In Opening Call
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.size = 1

-- Display: Reference Price Origin In Opening Call
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_price_origin_in_opening_call, range, value, display)

  return offset + length, value
end

-- Derivatives Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model = {}

-- Size: Derivatives Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.size = 1

-- Display: Derivatives Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_market_model, range, value, display)

  return offset + length, value
end

-- Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id = {}

-- Size: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.size = 2

-- Display: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Reference Spread Table Id: No Value"
  end

  return "Reference Spread Table Id: "..value
end

-- Dissect: Reference Spread Table Id
euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reference_spread_table_id, range, value, display)

  return offset + length, value
end

-- Trading Policy
euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy = {}

-- Size: Trading Policy
euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.size = 1

-- Display: Trading Policy
euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_policy, range, value, display)

  return offset + length, value
end

-- Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size = {}

-- Size: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.size = 8

-- Display: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Edsp Tick Size: No Value"
  end

  return "Edsp Tick Size: "..value
end

-- Dissect: Edsp Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.edsp_tick_size, range, value, display)

  return offset + length, value
end

-- Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size = {}

-- Size: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.size = 8

-- Display: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Settlement Tick Size: No Value"
  end

  return "Settlement Tick Size: "..value
end

-- Dissect: Settlement Tick Size
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_tick_size, range, value, display)

  return offset + length, value
end

-- Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin = {}

-- Size: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.size = 12

-- Display: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mother Stock Isin: No Value"
  end

  return "Mother Stock Isin: "..value
end

-- Dissect: Mother Stock Isin
euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mother_stock_isin, range, value, display)

  return offset + length, value
end

-- Underlying Subtype
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype = {}

-- Size: Underlying Subtype
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.size = 1

-- Display: Underlying Subtype
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_subtype, range, value, display)

  return offset + length, value
end

-- Inst Unit Exp
euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp = {}

-- Size: Inst Unit Exp
euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.size = 1

-- Display: Inst Unit Exp
euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.inst_unit_exp, range, value, display)

  return offset + length, value
end

-- Contract Trading Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type = {}

-- Size: Contract Trading Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.size = 1

-- Display: Contract Trading Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_trading_type, range, value, display)

  return offset + length, value
end

-- Delta
euronext_optiq_marketdatagateway_sbe_v5_33.delta = {}

-- Volume
euronext_optiq_marketdatagateway_sbe_v5_33.volume = {}

-- Reserved 6
euronext_optiq_marketdatagateway_sbe_v5_33.reserved_6 = {}

-- Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections = {}

-- Size: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.size = 1

-- Display: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_6, buffer(offset, 1))

  -- Volume: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.volume, buffer(offset, 1))

  -- Delta: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.delta, buffer(offset, 1))
end

-- Dissect: Mm Protections
euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mm_protections, range, display)

  if show.mm_protections then
    euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio = {}

-- Size: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.size = 1

-- Display: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Strike Price Decimals Ratio: No Value"
  end

  return "Strike Price Decimals Ratio: "..value
end

-- Dissect: Strike Price Decimals Ratio
euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_price_decimals_ratio, range, value, display)

  return offset + length, value
end

-- Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency = {}

-- Size: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.size = 3

-- Display: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency: No Value"
  end

  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Market
euronext_optiq_marketdatagateway_sbe_v5_33.market = {}

-- Limit
euronext_optiq_marketdatagateway_sbe_v5_33.limit = {}

-- Stop Stop Loss
euronext_optiq_marketdatagateway_sbe_v5_33.stop_stop_loss = {}

-- Stop Limit
euronext_optiq_marketdatagateway_sbe_v5_33.stop_limit = {}

-- Market On Open Moo
euronext_optiq_marketdatagateway_sbe_v5_33.market_on_open_moo = {}

-- Trade At Settlement
euronext_optiq_marketdatagateway_sbe_v5_33.trade_at_settlement = {}

-- Reserved 10
euronext_optiq_marketdatagateway_sbe_v5_33.reserved_10 = {}

-- Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules = {}

-- Size: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.size = 2

-- Display: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.bits = function(buffer, offset, packet, parent)

  -- Reserved 10: 10 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_10, buffer(offset, 2))

  -- Trade At Settlement: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_at_settlement, buffer(offset, 2))

  -- Market On Open Moo: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_on_open_moo, buffer(offset, 2))

  -- Stop Limit: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stop_limit, buffer(offset, 2))

  -- Stop Stop Loss: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stop_stop_loss, buffer(offset, 2))

  -- Limit: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.limit, buffer(offset, 2))

  -- Market: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market, buffer(offset, 2))
end

-- Dissect: Order Type Rules
euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_type_rules, range, display)

  if show.order_type_rules then
    euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry = {}

-- Size: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.size = 4

-- Display: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Expiry: No Value"
  end

  return "Underlying Expiry: "..value
end

-- Dissect: Underlying Expiry
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_expiry, range, value, display)

  return offset + length, value
end

-- Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic = {}

-- Size: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.size = 4

-- Display: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Mic: No Value"
  end

  return "Underlying Mic: "..value
end

-- Dissect: Underlying Mic
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_mic, range, value, display)

  return offset + length, value
end

-- Product Code
euronext_optiq_marketdatagateway_sbe_v5_33.product_code = {}

-- Size: Product Code
euronext_optiq_marketdatagateway_sbe_v5_33.product_code.size = 4

-- Display: Product Code
euronext_optiq_marketdatagateway_sbe_v5_33.product_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Code: No Value"
  end

  return "Product Code: "..value
end

-- Dissect: Product Code
euronext_optiq_marketdatagateway_sbe_v5_33.product_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.product_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.product_code, range, value, display)

  return offset + length, value
end

-- Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange = {}

-- Size: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.size = 3

-- Display: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Exchange: No Value"
  end

  return "Country Of Exchange: "..value
end

-- Dissect: Country Of Exchange
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.country_of_exchange, range, value, display)

  return offset + length, value
end

-- Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary = {}

-- Size: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.size = 5

-- Display: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Main Depositary: No Value"
  end

  return "Main Depositary: "..value
end

-- Dissect: Main Depositary
euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional = {}

-- Size: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.size = 1

-- Display: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Ratio Decimals Optional: No Value"
  end

  return "Ratio Decimals Optional: "..value
end

-- Dissect: Ratio Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_decimals_optional, range, value, display)

  return offset + length, value
end

-- Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional = {}

-- Size: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.size = 1

-- Display: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Decimals Optional: No Value"
  end

  return "Price Decimals Optional: "..value
end

-- Dissect: Price Decimals Optional
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_decimals_optional, range, value, display)

  return offset + length, value
end

-- Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type = {}

-- Size: Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.size = 1

-- Display: Underlying Type
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Contract Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_type = {}

-- Size: Contract Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.size = 1

-- Display: Contract Type
euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Contract Name
euronext_optiq_marketdatagateway_sbe_v5_33.contract_name = {}

-- Size: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.size = 60

-- Display: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contract Name: No Value"
  end

  return "Contract Name: "..value
end

-- Dissect: Contract Name
euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_name, range, value, display)

  return offset + length, value
end

-- Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code = {}

-- Size: Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.size = 1

-- Display: Exchange Code
euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date = {}

-- Size: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.size = 2

-- Display: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Contract Event Date: No Value"
  end

  return "Contract Event Date: "..value
end

-- Dissect: Contract Event Date
euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_event_date, range, value, display)

  return offset + length, value
end

-- Partition Id
euronext_optiq_marketdatagateway_sbe_v5_33.partition_id = {}

-- Size: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.size = 2

-- Display: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message = {}

-- Calculate size of: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.product_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.size(buffer, offset + index)

  return index
end

-- Display: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.dissect(buffer, index, packet, parent)

  -- Contract Event Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, contract_event_date = euronext_optiq_marketdatagateway_sbe_v5_33.contract_event_date.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 21 values
  index, exchange_code = euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.dissect(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, exer_style = euronext_optiq_marketdatagateway_sbe_v5_33.exer_style.dissect(buffer, index, packet, parent)

  -- Contract Name: 60 Byte Ascii String
  index, contract_name = euronext_optiq_marketdatagateway_sbe_v5_33.contract_name.dissect(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 4 values
  index, contract_type = euronext_optiq_marketdatagateway_sbe_v5_33.contract_type.dissect(buffer, index, packet, parent)

  -- Underlying Type: 1 Byte Ascii String Enum with 23 values
  index, underlying_type = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_type.dissect(buffer, index, packet, parent)

  -- Price Decimals Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_decimals_optional = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals_optional.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.dissect(buffer, index, packet, parent)

  -- Ratio Decimals Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ratio_decimals_optional = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals_optional.dissect(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_33.mic.dissect(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String
  index, country_of_exchange = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange.dissect(buffer, index, packet, parent)

  -- Product Code: 4 Byte Ascii String
  index, product_code = euronext_optiq_marketdatagateway_sbe_v5_33.product_code.dissect(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.dissect(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.dissect(buffer, index, packet, parent)

  -- Underlying Expiry: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_expiry = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_expiry.dissect(buffer, index, packet, parent)

  -- Order Type Rules: Struct of 7 fields
  index, order_type_rules = euronext_optiq_marketdatagateway_sbe_v5_33.order_type_rules.dissect(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String Nullable
  index, settlement_method = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_method.dissect(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency.dissect(buffer, index, packet, parent)

  -- Strike Price Decimals Ratio: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals_ratio = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals_ratio.dissect(buffer, index, packet, parent)

  -- Mm Protections: Struct of 3 fields
  index, mm_protections = euronext_optiq_marketdatagateway_sbe_v5_33.mm_protections.dissect(buffer, index, packet, parent)

  -- Contract Trading Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, contract_trading_type = euronext_optiq_marketdatagateway_sbe_v5_33.contract_trading_type.dissect(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.dissect(buffer, index, packet, parent)

  -- Underlying Subtype: 1 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, underlying_subtype = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_subtype.dissect(buffer, index, packet, parent)

  -- Mother Stock Isin: 12 Byte Ascii String Nullable
  index, mother_stock_isin = euronext_optiq_marketdatagateway_sbe_v5_33.mother_stock_isin.dissect(buffer, index, packet, parent)

  -- Settlement Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_tick_size = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_tick_size.dissect(buffer, index, packet, parent)

  -- Edsp Tick Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, edsp_tick_size = euronext_optiq_marketdatagateway_sbe_v5_33.edsp_tick_size.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_symbol_index.dissect(buffer, index, packet, parent)

  -- Trading Policy: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_policy = euronext_optiq_marketdatagateway_sbe_v5_33.trading_policy.dissect(buffer, index, packet, parent)

  -- Reference Spread Table Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, reference_spread_table_id = euronext_optiq_marketdatagateway_sbe_v5_33.reference_spread_table_id.dissect(buffer, index, packet, parent)

  -- Derivatives Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, derivatives_market_model = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_market_model.dissect(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_unit = euronext_optiq_marketdatagateway_sbe_v5_33.trading_unit.dissect(buffer, index, packet, parent)

  -- Reference Price Origin In Opening Call: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_opening_call = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_opening_call.dissect(buffer, index, packet, parent)

  -- Reference Price Origin In Continuous: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_continuous = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_continuous.dissect(buffer, index, packet, parent)

  -- Reference Price Origin In Trading Interruption: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, reference_price_origin_in_trading_interruption = euronext_optiq_marketdatagateway_sbe_v5_33.reference_price_origin_in_trading_interruption.dissect(buffer, index, packet, parent)

  -- Collar Expansion Factor: 1 Byte Unsigned Fixed Width Integer Nullable
  index, collar_expansion_factor = euronext_optiq_marketdatagateway_sbe_v5_33.collar_expansion_factor.dissect(buffer, index, packet, parent)

  -- Mifidii Liquid Flag: 1 Byte Unsigned Fixed Width Integer
  index, mifidii_liquid_flag = euronext_optiq_marketdatagateway_sbe_v5_33.mifidii_liquid_flag.dissect(buffer, index, packet, parent)

  -- Pricing Algorithm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pricing_algorithm = euronext_optiq_marketdatagateway_sbe_v5_33.pricing_algorithm.dissect(buffer, index, packet, parent)

  -- Lot Multiplier: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.lot_multiplier.dissect(buffer, index, packet, parent)

  -- Contract Emm Properties Groups: Struct of 2 fields
  index, contract_emm_properties_groups = euronext_optiq_marketdatagateway_sbe_v5_33.contract_emm_properties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.contract_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.contract_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.fields(buffer, offset, packet, parent)
end

-- Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell = {}

-- Size: Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.size = 1

-- Display: Leg Buy Sell
euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Leg Price
euronext_optiq_marketdatagateway_sbe_v5_33.leg_price = {}

-- Size: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.size = 8

-- Display: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group = {}

-- Calculate size of: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.size

  return index
end

-- Display: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.fields = function(buffer, offset, packet, parent, strategy_standing_datarep_1_group_index)
  local index = offset

  -- Implicit Strategy Standing Datarep 1 Group Index
  if strategy_standing_datarep_1_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_group_index, strategy_standing_datarep_1_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.leg_symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = euronext_optiq_marketdatagateway_sbe_v5_33.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_marketdatagateway_sbe_v5_33.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Buy Sell: 1 Byte Ascii String Enum with 2 values
  index, leg_buy_sell = euronext_optiq_marketdatagateway_sbe_v5_33.leg_buy_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Datarep 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.dissect = function(buffer, offset, packet, parent, strategy_standing_datarep_1_group_index)
  if show.strategy_standing_datarep_1_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.fields(buffer, offset, packet, parent, strategy_standing_datarep_1_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.fields(buffer, offset, packet, parent, strategy_standing_datarep_1_group_index)
  end
end

-- Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups = {}

-- Calculate size of: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local strategy_standing_datarep_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_standing_datarep_1_group_count * 17

  return index
end

-- Display: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Strategy Standing Datarep 1 Group
  for strategy_standing_datarep_1_group_index = 1, num_in_group do
    index, strategy_standing_datarep_1_group = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_group.dissect(buffer, index, packet, parent, strategy_standing_datarep_1_group_index)
  end

  return index
end

-- Dissect: Strategy Standing Datarep 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_datarep_1_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_datarep_1_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.fields(buffer, offset, packet, parent)
end

-- Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code = {}

-- Size: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.size = 18

-- Display: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Derivatives Instrument Trading Code: No Value"
  end

  return "Derivatives Instrument Trading Code: "..value
end

-- Dissect: Derivatives Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message = {}

-- Calculate size of: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.size(buffer, offset + index)

  return index
end

-- Display: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String
  index, derivatives_instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_33.derivatives_instrument_trading_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 21 values
  index, exchange_code = euronext_optiq_marketdatagateway_sbe_v5_33.exchange_code.dissect(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date.dissect(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_code.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Cfi Optional: 6 Byte Ascii String Nullable
  index, cfi_optional = euronext_optiq_marketdatagateway_sbe_v5_33.cfi_optional.dissect(buffer, index, packet, parent)

  -- Strategy Standing Datarep 1 Groups: Struct of 2 fields
  index, strategy_standing_datarep_1_groups = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_datarep_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strategy_standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.fields(buffer, offset, packet, parent)
end

-- Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time = {}

-- Size: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.size = 8

-- Display: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Liquidation Time: No Value"
  end

  return "Liquidation Time: "..value
end

-- Dissect: Liquidation Time
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquidation_time, range, value, display)

  return offset + length, value
end

-- Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level = {}

-- Size: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.size = 8

-- Display: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Liquidation Level: No Value"
  end

  return "Liquidation Level: "..value
end

-- Dissect: Liquidation Level
euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquidation_level, range, value, display)

  return offset + length, value
end

-- Low Time
euronext_optiq_marketdatagateway_sbe_v5_33.low_time = {}

-- Size: Low Time
euronext_optiq_marketdatagateway_sbe_v5_33.low_time.size = 8

-- Display: Low Time
euronext_optiq_marketdatagateway_sbe_v5_33.low_time.display = function(value)
  return "Low Time: "..value
end

-- Dissect: Low Time
euronext_optiq_marketdatagateway_sbe_v5_33.low_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.low_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.low_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.low_time, range, value, display)

  return offset + length, value
end

-- Low Level
euronext_optiq_marketdatagateway_sbe_v5_33.low_level = {}

-- Size: Low Level
euronext_optiq_marketdatagateway_sbe_v5_33.low_level.size = 8

-- Display: Low Level
euronext_optiq_marketdatagateway_sbe_v5_33.low_level.display = function(value)
  return "Low Level: "..value
end

-- Dissect: Low Level
euronext_optiq_marketdatagateway_sbe_v5_33.low_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.low_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.low_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.low_level, range, value, display)

  return offset + length, value
end

-- High Time
euronext_optiq_marketdatagateway_sbe_v5_33.high_time = {}

-- Size: High Time
euronext_optiq_marketdatagateway_sbe_v5_33.high_time.size = 8

-- Display: High Time
euronext_optiq_marketdatagateway_sbe_v5_33.high_time.display = function(value)
  return "High Time: "..value
end

-- Dissect: High Time
euronext_optiq_marketdatagateway_sbe_v5_33.high_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.high_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.high_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.high_time, range, value, display)

  return offset + length, value
end

-- High Level
euronext_optiq_marketdatagateway_sbe_v5_33.high_level = {}

-- Size: High Level
euronext_optiq_marketdatagateway_sbe_v5_33.high_level.size = 8

-- Display: High Level
euronext_optiq_marketdatagateway_sbe_v5_33.high_level.display = function(value)
  return "High Level: "..value
end

-- Dissect: High Level
euronext_optiq_marketdatagateway_sbe_v5_33.high_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.high_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.high_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.high_level, range, value, display)

  return offset + length, value
end

-- Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close = {}

-- Size: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.size = 8

-- Display: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.display = function(value)
  return "Prct Varfrom Prev Close: "..value
end

-- Dissect: Prct Varfrom Prev Close
euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prct_varfrom_prev_close, range, value, display)

  return offset + length, value
end

-- Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time = {}

-- Size: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.size = 8

-- Display: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.display = function(value)
  return "Closing Reference Time: "..value
end

-- Dissect: Closing Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_reference_time, range, value, display)

  return offset + length, value
end

-- Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level = {}

-- Size: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.size = 8

-- Display: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.display = function(value)
  return "Closing Reference Level: "..value
end

-- Dissect: Closing Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.closing_reference_level, range, value, display)

  return offset + length, value
end

-- Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time = {}

-- Size: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.size = 8

-- Display: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Confirmed Reference Time: No Value"
  end

  return "Confirmed Reference Time: "..value
end

-- Dissect: Confirmed Reference Time
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.confirmed_reference_time, range, value, display)

  return offset + length, value
end

-- Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level = {}

-- Size: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.size = 8

-- Display: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Confirmed Reference Level: No Value"
  end

  return "Confirmed Reference Level: "..value
end

-- Dissect: Confirmed Reference Level
euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.confirmed_reference_level, range, value, display)

  return offset + length, value
end

-- Opening Time
euronext_optiq_marketdatagateway_sbe_v5_33.opening_time = {}

-- Size: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.size = 8

-- Display: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Level
euronext_optiq_marketdatagateway_sbe_v5_33.opening_level = {}

-- Size: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.size = 8

-- Display: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.display = function(value)
  return "Opening Level: "..value
end

-- Dissect: Opening Level
euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.opening_level, range, value, display)

  return offset + length, value
end

-- Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message = {}

-- Calculate size of: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.high_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.high_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.low_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.low_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.size

  return index
end

-- Display: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Opening Level: 8 Byte Signed Fixed Width Integer
  index, opening_level = euronext_optiq_marketdatagateway_sbe_v5_33.opening_level.dissect(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Unsigned Fixed Width Integer
  index, opening_time = euronext_optiq_marketdatagateway_sbe_v5_33.opening_time.dissect(buffer, index, packet, parent)

  -- Confirmed Reference Level: 8 Byte Signed Fixed Width Integer Nullable
  index, confirmed_reference_level = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_level.dissect(buffer, index, packet, parent)

  -- Confirmed Reference Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, confirmed_reference_time = euronext_optiq_marketdatagateway_sbe_v5_33.confirmed_reference_time.dissect(buffer, index, packet, parent)

  -- Closing Reference Level: 8 Byte Signed Fixed Width Integer
  index, closing_reference_level = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_level.dissect(buffer, index, packet, parent)

  -- Closing Reference Time: 8 Byte Unsigned Fixed Width Integer
  index, closing_reference_time = euronext_optiq_marketdatagateway_sbe_v5_33.closing_reference_time.dissect(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.dissect(buffer, index, packet, parent)

  -- High Level: 8 Byte Signed Fixed Width Integer
  index, high_level = euronext_optiq_marketdatagateway_sbe_v5_33.high_level.dissect(buffer, index, packet, parent)

  -- High Time: 8 Byte Unsigned Fixed Width Integer
  index, high_time = euronext_optiq_marketdatagateway_sbe_v5_33.high_time.dissect(buffer, index, packet, parent)

  -- Low Level: 8 Byte Signed Fixed Width Integer
  index, low_level = euronext_optiq_marketdatagateway_sbe_v5_33.low_level.dissect(buffer, index, packet, parent)

  -- Low Time: 8 Byte Unsigned Fixed Width Integer
  index, low_time = euronext_optiq_marketdatagateway_sbe_v5_33.low_time.dissect(buffer, index, packet, parent)

  -- Liquidation Level: 8 Byte Signed Fixed Width Integer Nullable
  index, liquidation_level = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_level.dissect(buffer, index, packet, parent)

  -- Liquidation Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, liquidation_time = euronext_optiq_marketdatagateway_sbe_v5_33.liquidation_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary Message
euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.index_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_summary_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value = {}

-- Size: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.size = 8

-- Display: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stats Update Value: No Value"
  end

  return "Stats Update Value: "..value
end

-- Dissect: Stats Update Value
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stats_update_value, range, value, display)

  return offset + length, value
end

-- Stats Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type = {}

-- Size: Stats Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.size = 1

-- Display: Stats Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stats_update_type, range, value, display)

  return offset + length, value
end

-- New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group = {}

-- Calculate size of: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.size

  return index
end

-- Display: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.fields = function(buffer, offset, packet, parent, new_stats_group_index)
  local index = offset

  -- Implicit New Stats Group Index
  if new_stats_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_group_index, new_stats_group_index)
    iteration:set_generated()
  end

  -- Stats Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, stats_update_type = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_type.dissect(buffer, index, packet, parent)

  -- Stats Update Value: 8 Byte Signed Fixed Width Integer Nullable
  index, stats_update_value = euronext_optiq_marketdatagateway_sbe_v5_33.stats_update_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Stats Group
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.dissect = function(buffer, offset, packet, parent, new_stats_group_index)
  if show.new_stats_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.fields(buffer, offset, packet, parent, new_stats_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.fields(buffer, offset, packet, parent, new_stats_group_index)
  end
end

-- New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups = {}

-- Calculate size of: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local new_stats_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + new_stats_group_count * 9

  return index
end

-- Display: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: New Stats Group
  for new_stats_group_index = 1, num_in_group do
    index, new_stats_group = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_group.dissect(buffer, index, packet, parent, new_stats_group_index)
  end

  return index
end

-- Dissect: New Stats Groups
euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_stats_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.new_stats_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.fields(buffer, offset, packet, parent)
end

-- Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message = {}

-- Calculate size of: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.size(buffer, offset + index)

  return index
end

-- Display: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- New Stats Groups: Struct of 2 fields
  index, new_stats_groups = euronext_optiq_marketdatagateway_sbe_v5_33.new_stats_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.statistics_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.statistics_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.fields(buffer, offset, packet, parent)
end

-- Index Price Code
euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code = {}

-- Size: Index Price Code
euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.size = 1

-- Display: Index Price Code
euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_price_code, range, value, display)

  return offset + length, value
end

-- Index Level Type
euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type = {}

-- Size: Index Level Type
euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.size = 1

-- Display: Index Level Type
euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_level_type, range, value, display)

  return offset + length, value
end

-- Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments = {}

-- Size: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.size = 2

-- Display: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Num Traded Instruments: No Value"
  end

  return "Num Traded Instruments: "..value
end

-- Dissect: Num Traded Instruments
euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.num_traded_instruments, range, value, display)

  return offset + length, value
end

-- Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization = {}

-- Size: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.size = 8

-- Display: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Pctg Of Capitalization: No Value"
  end

  return "Pctg Of Capitalization: "..value
end

-- Dissect: Pctg Of Capitalization
euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pctg_of_capitalization, range, value, display)

  return offset + length, value
end

-- Index Level
euronext_optiq_marketdatagateway_sbe_v5_33.index_level = {}

-- Size: Index Level
euronext_optiq_marketdatagateway_sbe_v5_33.index_level.size = 8

-- Display: Index Level
euronext_optiq_marketdatagateway_sbe_v5_33.index_level.display = function(value)
  return "Index Level: "..value
end

-- Dissect: Index Level
euronext_optiq_marketdatagateway_sbe_v5_33.index_level.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.index_level.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.index_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.index_level, range, value, display)

  return offset + length, value
end

-- Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message = {}

-- Calculate size of: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.index_level.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.size

  return index
end

-- Display: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Index Level: 8 Byte Signed Fixed Width Integer
  index, index_level = euronext_optiq_marketdatagateway_sbe_v5_33.index_level.dissect(buffer, index, packet, parent)

  -- Pctg Of Capitalization: 8 Byte Unsigned Fixed Width Integer Nullable
  index, pctg_of_capitalization = euronext_optiq_marketdatagateway_sbe_v5_33.pctg_of_capitalization.dissect(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = euronext_optiq_marketdatagateway_sbe_v5_33.prct_varfrom_prev_close.dissect(buffer, index, packet, parent)

  -- Num Traded Instruments: 2 Byte Unsigned Fixed Width Integer Nullable
  index, num_traded_instruments = euronext_optiq_marketdatagateway_sbe_v5_33.num_traded_instruments.dissect(buffer, index, packet, parent)

  -- Index Level Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, index_level_type = euronext_optiq_marketdatagateway_sbe_v5_33.index_level_type.dissect(buffer, index, packet, parent)

  -- Index Price Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, index_price_code = euronext_optiq_marketdatagateway_sbe_v5_33.index_price_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index Message
euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.dissect = function(buffer, offset, packet, parent)
  if show.real_time_index_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.real_time_index_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Anonymous
euronext_optiq_marketdatagateway_sbe_v5_33.anonymous = {}

-- Size: Anonymous
euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.size = 1

-- Display: Anonymous
euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.anonymous, range, value, display)

  return offset + length, value
end

-- Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.market_model = {}

-- Size: Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.market_model.size = 1

-- Display: Market Model
euronext_optiq_marketdatagateway_sbe_v5_33.market_model.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.market_model.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.market_model.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_model.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_model, range, value, display)

  return offset + length, value
end

-- Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group = {}

-- Calculate size of: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.market_model.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.size

  return index
end

-- Display: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.fields = function(buffer, offset, packet, parent, em_m_pattern_rep_group_index)
  local index = offset

  -- Implicit Em M Pattern Rep Group Index
  if em_m_pattern_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_group_index, em_m_pattern_rep_group_index)
    iteration:set_generated()
  end

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.dissect(buffer, index, packet, parent)

  -- Tick Size Index Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_index_id = euronext_optiq_marketdatagateway_sbe_v5_33.tick_size_index_id.dissect(buffer, index, packet, parent)

  -- Market Model: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, market_model = euronext_optiq_marketdatagateway_sbe_v5_33.market_model.dissect(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.dissect(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.dissect(buffer, index, packet, parent)

  -- Anonymous: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, anonymous = euronext_optiq_marketdatagateway_sbe_v5_33.anonymous.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Em M Pattern Rep Group
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.dissect = function(buffer, offset, packet, parent, em_m_pattern_rep_group_index)
  if show.em_m_pattern_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.fields(buffer, offset, packet, parent, em_m_pattern_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.fields(buffer, offset, packet, parent, em_m_pattern_rep_group_index)
  end
end

-- Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups = {}

-- Calculate size of: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local em_m_pattern_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + em_m_pattern_rep_group_count * 16

  return index
end

-- Display: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Em M Pattern Rep Group
  for em_m_pattern_rep_group_index = 1, num_in_group do
    index, em_m_pattern_rep_group = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_group.dissect(buffer, index, packet, parent, em_m_pattern_rep_group_index)
  end

  return index
end

-- Dissect: Em M Pattern Rep Groups
euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.em_m_pattern_rep_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.em_m_pattern_rep_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.fields(buffer, offset, packet, parent)
end

-- Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor = {}

-- Size: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.size = 4

-- Display: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Pool Factor: No Value"
  end

  return "Pool Factor: "..value
end

-- Dissect: Pool Factor
euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.pool_factor, range, value, display)

  return offset + length, value
end

-- Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous = {}

-- Size: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.size = 8

-- Display: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Quantity Continuous: No Value"
  end

  return "Max Order Quantity Continuous: "..value
end

-- Dissect: Max Order Quantity Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_quantity_continuous, range, value, display)

  return offset + length, value
end

-- Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call = {}

-- Size: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.size = 8

-- Display: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Quantity Call: No Value"
  end

  return "Max Order Quantity Call: "..value
end

-- Dissect: Max Order Quantity Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_quantity_call, range, value, display)

  return offset + length, value
end

-- Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous = {}

-- Size: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.size = 8

-- Display: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Amount Continuous: No Value"
  end

  return "Max Order Amount Continuous: "..value
end

-- Dissect: Max Order Amount Continuous
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_amount_continuous, range, value, display)

  return offset + length, value
end

-- Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call = {}

-- Size: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.size = 8

-- Display: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Max Order Amount Call: No Value"
  end

  return "Max Order Amount Call: "..value
end

-- Dissect: Max Order Amount Call
euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.max_order_amount_call, range, value, display)

  return offset + length, value
end

-- Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic = {}

-- Size: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.size = 6

-- Display: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Mnemonic: No Value"
  end

  return "Long Mnemonic: "..value
end

-- Dissect: Long Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.long_mnemonic, range, value, display)

  return offset + length, value
end

-- Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod = {}

-- Size: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.size = 8

-- Display: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade Eod: No Value"
  end

  return "Threshold Lis Post Trade Eod: "..value
end

-- Dissect: Threshold Lis Post Trade Eod
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_eod, range, value, display)

  return offset + length, value
end

-- Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn = {}

-- Size: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.size = 8

-- Display: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 120mn: No Value"
  end

  return "Threshold Lis Post Trade 120mn: "..value
end

-- Dissect: Threshold Lis Post Trade 120mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_120mn, range, value, display)

  return offset + length, value
end

-- Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn = {}

-- Size: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.size = 8

-- Display: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Threshold Lis Post Trade 60mn: No Value"
  end

  return "Threshold Lis Post Trade 60mn: "..value
end

-- Dissect: Threshold Lis Post Trade 60mn
euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.threshold_lis_post_trade_60mn, range, value, display)

  return offset + length, value
end

-- Icb Code
euronext_optiq_marketdatagateway_sbe_v5_33.icb_code = {}

-- Size: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.size = 8

-- Display: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb Code: No Value"
  end

  return "Icb Code: "..value
end

-- Dissect: Icb Code
euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.icb_code, range, value, display)

  return offset + length, value
end

-- Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic = {}

-- Size: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.size = 4

-- Display: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Of Reference Mic: No Value"
  end

  return "Market Of Reference Mic: "..value
end

-- Dissect: Market Of Reference Mic
euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_of_reference_mic, range, value, display)

  return offset + length, value
end

-- Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator = {}

-- Size: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.size = 1

-- Display: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Liquid Instrument Indicator: No Value"
  end

  return "Liquid Instrument Indicator: "..value
end

-- Dissect: Liquid Instrument Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.liquid_instrument_indicator, range, value, display)

  return offset + length, value
end

-- Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals = {}

-- Size: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.size = 1

-- Display: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Issue Price Decimals: No Value"
  end

  return "Issue Price Decimals: "..value
end

-- Dissect: Issue Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_price_decimals, range, value, display)

  return offset + length, value
end

-- Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency = {}

-- Size: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.size = 3

-- Display: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nominal Currency: No Value"
  end

  return "Nominal Currency: "..value
end

-- Dissect: Nominal Currency
euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nominal_currency, range, value, display)

  return offset + length, value
end

-- Issue Price
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price = {}

-- Size: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.size = 8

-- Display: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Issue Price: No Value"
  end

  return "Issue Price: "..value
end

-- Dissect: Issue Price
euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.issue_price, range, value, display)

  return offset + length, value
end

-- Repo Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator = {}

-- Size: Repo Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.size = 1

-- Display: Repo Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Type Of Market Admission
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission = {}

-- Size: Type Of Market Admission
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.size = 1

-- Display: Type Of Market Admission
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event = {}

-- Size: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.size = 2

-- Display: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Type Of Corporate Event: No Value"
  end

  return "Type Of Corporate Event: "..value
end

-- Dissect: Type Of Corporate Event
euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Tax Code
euronext_optiq_marketdatagateway_sbe_v5_33.tax_code = {}

-- Size: Tax Code
euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.size = 1

-- Display: Tax Code
euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency = {}

-- Size: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.size = 3

-- Display: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay = {}

-- Size: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.size = 2

-- Display: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Delay: No Value"
  end

  return "Settlement Delay: "..value
end

-- Dissect: Settlement Delay
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_delay, range, value, display)

  return offset + length, value
end

-- Par Value
euronext_optiq_marketdatagateway_sbe_v5_33.par_value = {}

-- Size: Par Value
euronext_optiq_marketdatagateway_sbe_v5_33.par_value.size = 8

-- Display: Par Value
euronext_optiq_marketdatagateway_sbe_v5_33.par_value.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Par Value: No Value"
  end

  return "Par Value: "..value
end

-- Dissect: Par Value
euronext_optiq_marketdatagateway_sbe_v5_33.par_value.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.par_value.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.par_value, range, value, display)

  return offset + length, value
end

-- Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating = {}

-- Size: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.size = 8

-- Display: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Number Instrument Circulating: No Value"
  end

  return "Number Instrument Circulating: "..value
end

-- Dissect: Number Instrument Circulating
euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.number_instrument_circulating, range, value, display)

  return offset + length, value
end

-- Strike Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator = {}

-- Size: Strike Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.size = 1

-- Display: Strike Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Trading Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator = {}

-- Size: Trading Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.size = 1

-- Display: Trading Currency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient = {}

-- Size: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.size = 4

-- Display: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Currency Coefficient: No Value"
  end

  return "Currency Coefficient: "..value
end

-- Dissect: Currency Coefficient
euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.currency_coefficient, range, value, display)

  return offset + length, value
end

-- Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic = {}

-- Size: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.size = 5

-- Display: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mnemonic: No Value"
  end

  return "Mnemonic: "..value
end

-- Dissect: Mnemonic
euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mnemonic, range, value, display)

  return offset + length, value
end

-- Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional = {}

-- Size: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.size = 3

-- Display: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Exchange Optional: No Value"
  end

  return "Country Of Exchange Optional: "..value
end

-- Dissect: Country Of Exchange Optional
euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.country_of_exchange_optional, range, value, display)

  return offset + length, value
end

-- Mic List
euronext_optiq_marketdatagateway_sbe_v5_33.mic_list = {}

-- Size: Mic List
euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.size = 20

-- Display: Mic List
euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic List: No Value"
  end

  return "Mic List: "..value
end

-- Dissect: Mic List
euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity = {}

-- Size: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.size = 1

-- Display: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Maximum Decimals In Quantity: No Value"
  end

  return "Maximum Decimals In Quantity: "..value
end

-- Dissect: Maximum Decimals In Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.maximum_decimals_in_quantity, range, value, display)

  return offset + length, value
end

-- Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price = {}

-- Size: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.size = 8

-- Display: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Adjusted Closing Price: No Value"
  end

  return "Last Adjusted Closing Price: "..value
end

-- Dissect: Last Adjusted Closing Price
euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.last_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Icb
euronext_optiq_marketdatagateway_sbe_v5_33.icb = {}

-- Size: Icb
euronext_optiq_marketdatagateway_sbe_v5_33.icb.size = 16

-- Display: Icb
euronext_optiq_marketdatagateway_sbe_v5_33.icb.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb: No Value"
  end

  return "Icb: "..value
end

-- Dissect: Icb
euronext_optiq_marketdatagateway_sbe_v5_33.icb.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.icb.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.icb.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.icb, range, value, display)

  return offset + length, value
end

-- Guarantee Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator = {}

-- Size: Guarantee Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.size = 1

-- Display: Guarantee Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.guarantee_indicator, range, value, display)

  return offset + length, value
end

-- First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date = {}

-- Size: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.size = 2

-- Display: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "First Settlement Date: No Value"
  end

  return "First Settlement Date: "..value
end

-- Dissect: First Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Depositary List
euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list = {}

-- Size: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.size = 20

-- Display: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Depositary List: No Value"
  end

  return "Depositary List: "..value
end

-- Dissect: Depositary List
euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.depositary_list, range, value, display)

  return offset + length, value
end

-- Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade = {}

-- Size: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.size = 2

-- Display: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Date Of Last Trade: No Value"
  end

  return "Date Of Last Trade: "..value
end

-- Dissect: Date Of Last Trade
euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity = {}

-- Size: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.size = 4

-- Display: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Dark Min Quantity: No Value"
  end

  return "Dark Min Quantity: "..value
end

-- Dissect: Dark Min Quantity
euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_min_quantity, range, value, display)

  return offset + length, value
end

-- Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold = {}

-- Size: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.size = 8

-- Display: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Dark Lis Threshold: No Value"
  end

  return "Dark Lis Threshold: "..value
end

-- Dissect: Dark Lis Threshold
euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_lis_threshold, range, value, display)

  return offset + length, value
end

-- Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility = {}

-- Size: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.size = 1

-- Display: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Dark Eligibility: No Value"
  end

  return "Dark Eligibility: "..value
end

-- Dissect: Dark Eligibility
euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.dark_eligibility, range, value, display)

  return offset + length, value
end

-- Cfi
euronext_optiq_marketdatagateway_sbe_v5_33.cfi = {}

-- Size: Cfi
euronext_optiq_marketdatagateway_sbe_v5_33.cfi.size = 6

-- Display: Cfi
euronext_optiq_marketdatagateway_sbe_v5_33.cfi.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi: No Value"
  end

  return "Cfi: "..value
end

-- Dissect: Cfi
euronext_optiq_marketdatagateway_sbe_v5_33.cfi.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.cfi.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.cfi.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.cfi, range, value, display)

  return offset + length, value
end

-- Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals = {}

-- Size: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.size = 1

-- Display: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.display = function(value)
  return "Ratio Decimals: "..value
end

-- Dissect: Ratio Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.ratio_decimals, range, value, display)

  return offset + length, value
end

-- Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals = {}

-- Size: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.size = 1

-- Display: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code = {}

-- Size: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.size = 2

-- Display: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code = {}

-- Size: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.size = 15

-- Display: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Trading Code: No Value"
  end

  return "Instrument Trading Code: "..value
end

-- Dissect: Instrument Trading Code
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name = {}

-- Size: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.size = 18

-- Display: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Name: No Value"
  end

  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message = {}

-- Calculate size of: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.cfi.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.icb.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.par_value.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, optiq_segment = euronext_optiq_marketdatagateway_sbe_v5_33.optiq_segment.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = euronext_optiq_marketdatagateway_sbe_v5_33.partition_id.dissect(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String Nullable
  index, full_instrument_name = euronext_optiq_marketdatagateway_sbe_v5_33.full_instrument_name.dissect(buffer, index, packet, parent)

  -- Instrument Name: 18 Byte Ascii String
  index, instrument_name = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_name.dissect(buffer, index, packet, parent)

  -- Instrument Trading Code: 15 Byte Ascii String Nullable
  index, instrument_trading_code = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_trading_code.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = euronext_optiq_marketdatagateway_sbe_v5_33.isin_code.dissect(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.price_decimals.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, amount_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.amount_decimals.dissect(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer
  index, ratio_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.ratio_decimals.dissect(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = euronext_optiq_marketdatagateway_sbe_v5_33.cfi.dissect(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_event_date.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price.dissect(buffer, index, packet, parent)

  -- Dark Eligibility: 1 Byte Unsigned Fixed Width Integer Nullable
  index, dark_eligibility = euronext_optiq_marketdatagateway_sbe_v5_33.dark_eligibility.dissect(buffer, index, packet, parent)

  -- Dark Lis Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, dark_lis_threshold = euronext_optiq_marketdatagateway_sbe_v5_33.dark_lis_threshold.dissect(buffer, index, packet, parent)

  -- Dark Min Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, dark_min_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.dark_min_quantity.dissect(buffer, index, packet, parent)

  -- Date Of Last Trade: 2 Byte Unsigned Fixed Width Integer Nullable
  index, date_of_last_trade = euronext_optiq_marketdatagateway_sbe_v5_33.date_of_last_trade.dissect(buffer, index, packet, parent)

  -- Depositary List: 20 Byte Ascii String Nullable
  index, depositary_list = euronext_optiq_marketdatagateway_sbe_v5_33.depositary_list.dissect(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String Nullable
  index, main_depositary = euronext_optiq_marketdatagateway_sbe_v5_33.main_depositary.dissect(buffer, index, packet, parent)

  -- First Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, first_settlement_date = euronext_optiq_marketdatagateway_sbe_v5_33.first_settlement_date.dissect(buffer, index, packet, parent)

  -- Guarantee Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, guarantee_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.guarantee_indicator.dissect(buffer, index, packet, parent)

  -- Icb: 16 Byte Ascii String Nullable
  index, icb = euronext_optiq_marketdatagateway_sbe_v5_33.icb.dissect(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String Nullable
  index, issuing_country = euronext_optiq_marketdatagateway_sbe_v5_33.issuing_country.dissect(buffer, index, packet, parent)

  -- Last Adjusted Closing Price: 8 Byte Signed Fixed Width Integer Nullable
  index, last_adjusted_closing_price = euronext_optiq_marketdatagateway_sbe_v5_33.last_adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Lot Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lot_size_optional = euronext_optiq_marketdatagateway_sbe_v5_33.lot_size_optional.dissect(buffer, index, packet, parent)

  -- Maturity Date Optional: 8 Byte Ascii String Nullable
  index, maturity_date_optional = euronext_optiq_marketdatagateway_sbe_v5_33.maturity_date_optional.dissect(buffer, index, packet, parent)

  -- Maximum Decimals In Quantity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, maximum_decimals_in_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.maximum_decimals_in_quantity.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = euronext_optiq_marketdatagateway_sbe_v5_33.mic.dissect(buffer, index, packet, parent)

  -- Mic List: 20 Byte Ascii String Nullable
  index, mic_list = euronext_optiq_marketdatagateway_sbe_v5_33.mic_list.dissect(buffer, index, packet, parent)

  -- Country Of Exchange Optional: 3 Byte Ascii String Nullable
  index, country_of_exchange_optional = euronext_optiq_marketdatagateway_sbe_v5_33.country_of_exchange_optional.dissect(buffer, index, packet, parent)

  -- Mnemonic: 5 Byte Ascii String Nullable
  index, mnemonic = euronext_optiq_marketdatagateway_sbe_v5_33.mnemonic.dissect(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String Nullable
  index, underlying_mic = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_mic.dissect(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String Nullable
  index, underlying_isin_code = euronext_optiq_marketdatagateway_sbe_v5_33.underlying_isin_code.dissect(buffer, index, packet, parent)

  -- Trading Currency Optional: 3 Byte Ascii String Nullable
  index, trading_currency_optional = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_optional.dissect(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.dissect(buffer, index, packet, parent)

  -- Trading Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_currency_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.trading_currency_indicator.dissect(buffer, index, packet, parent)

  -- Strike Currency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, strike_currency_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency_indicator.dissect(buffer, index, packet, parent)

  -- Number Instrument Circulating: 8 Byte Unsigned Fixed Width Integer Nullable
  index, number_instrument_circulating = euronext_optiq_marketdatagateway_sbe_v5_33.number_instrument_circulating.dissect(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer Nullable
  index, par_value = euronext_optiq_marketdatagateway_sbe_v5_33.par_value.dissect(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String Nullable
  index, quantity_notation = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_notation.dissect(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, inst_unit_exp = euronext_optiq_marketdatagateway_sbe_v5_33.inst_unit_exp.dissect(buffer, index, packet, parent)

  -- Settlement Delay: 2 Byte Ascii String Nullable
  index, settlement_delay = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_delay.dissect(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String Nullable
  index, strike_currency = euronext_optiq_marketdatagateway_sbe_v5_33.strike_currency.dissect(buffer, index, packet, parent)

  -- Tax Code: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, tax_code = euronext_optiq_marketdatagateway_sbe_v5_33.tax_code.dissect(buffer, index, packet, parent)

  -- Type Of Corporate Event: 2 Byte Ascii String Nullable
  index, type_of_corporate_event = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_corporate_event.dissect(buffer, index, packet, parent)

  -- Type Of Market Admission: 1 Byte Ascii String Enum with 17 values
  index, type_of_market_admission = euronext_optiq_marketdatagateway_sbe_v5_33.type_of_market_admission.dissect(buffer, index, packet, parent)

  -- Repo Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, repo_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.repo_indicator.dissect(buffer, index, packet, parent)

  -- Issue Price: 8 Byte Signed Fixed Width Integer Nullable
  index, issue_price = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price.dissect(buffer, index, packet, parent)

  -- Nominal Currency: 3 Byte Ascii String Nullable
  index, nominal_currency = euronext_optiq_marketdatagateway_sbe_v5_33.nominal_currency.dissect(buffer, index, packet, parent)

  -- Issue Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, issue_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.issue_price_decimals.dissect(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.strike_price_decimals.dissect(buffer, index, packet, parent)

  -- Liquid Instrument Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, liquid_instrument_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.liquid_instrument_indicator.dissect(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.dissect(buffer, index, packet, parent)

  -- Icb Code: 8 Byte Ascii String Nullable
  index, icb_code = euronext_optiq_marketdatagateway_sbe_v5_33.icb_code.dissect(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 60mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_60mn = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_60mn.dissect(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 120mn: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_120mn = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_120mn.dissect(buffer, index, packet, parent)

  -- Threshold Lis Post Trade Eod: 8 Byte Unsigned Fixed Width Integer Nullable
  index, threshold_lis_post_trade_eod = euronext_optiq_marketdatagateway_sbe_v5_33.threshold_lis_post_trade_eod.dissect(buffer, index, packet, parent)

  -- Long Mnemonic: 6 Byte Ascii String Nullable
  index, long_mnemonic = euronext_optiq_marketdatagateway_sbe_v5_33.long_mnemonic.dissect(buffer, index, packet, parent)

  -- Max Order Amount Call: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_amount_call = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_call.dissect(buffer, index, packet, parent)

  -- Max Order Amount Continuous: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_amount_continuous = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_amount_continuous.dissect(buffer, index, packet, parent)

  -- Max Order Quantity Call: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_quantity_call = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_call.dissect(buffer, index, packet, parent)

  -- Max Order Quantity Continuous: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_order_quantity_continuous = euronext_optiq_marketdatagateway_sbe_v5_33.max_order_quantity_continuous.dissect(buffer, index, packet, parent)

  -- Pool Factor: 4 Byte Unsigned Fixed Width Integer Nullable
  index, pool_factor = euronext_optiq_marketdatagateway_sbe_v5_33.pool_factor.dissect(buffer, index, packet, parent)

  -- Em M Pattern Rep Groups: Struct of 2 fields
  index, em_m_pattern_rep_groups = euronext_optiq_marketdatagateway_sbe_v5_33.em_m_pattern_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standing Data Message
euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.standing_data_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.standing_data_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.fields(buffer, offset, packet, parent)
end

-- Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event = {}

-- Size: Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.size = 1

-- Display: Scheduled Event
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.scheduled_event, range, value, display)

  return offset + length, value
end

-- Session
euronext_optiq_marketdatagateway_sbe_v5_33.session = {}

-- Size: Session
euronext_optiq_marketdatagateway_sbe_v5_33.session.size = 1

-- Display: Session
euronext_optiq_marketdatagateway_sbe_v5_33.session.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.session.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.session, range, value, display)

  return offset + length, value
end

-- Order Entry Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier = {}

-- Size: Order Entry Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.size = 1

-- Display: Order Entry Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Trading Period
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period = {}

-- Size: Trading Period
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.size = 1

-- Display: Trading Period
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_period, range, value, display)

  return offset + length, value
end

-- No Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.no_qualifier = {}

-- Call Bbo Only
euronext_optiq_marketdatagateway_sbe_v5_33.call_bbo_only = {}

-- Trading At Last
euronext_optiq_marketdatagateway_sbe_v5_33.trading_at_last = {}

-- Random Uncrossing
euronext_optiq_marketdatagateway_sbe_v5_33.random_uncrossing = {}

-- Suspended
euronext_optiq_marketdatagateway_sbe_v5_33.suspended = {}

-- Wholesale Allowed
euronext_optiq_marketdatagateway_sbe_v5_33.wholesale_allowed = {}

-- Stressed Market Conditions
euronext_optiq_marketdatagateway_sbe_v5_33.stressed_market_conditions = {}

-- Exceptional Market Conditions
euronext_optiq_marketdatagateway_sbe_v5_33.exceptional_market_conditions = {}

-- Quoting Period
euronext_optiq_marketdatagateway_sbe_v5_33.quoting_period = {}

-- Execution Prevention Across All Firms
euronext_optiq_marketdatagateway_sbe_v5_33.execution_prevention_across_all_firms = {}

-- Reserved 5
euronext_optiq_marketdatagateway_sbe_v5_33.reserved_5 = {}

-- Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier = {}

-- Size: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.size = 2

-- Display: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_5, buffer(offset, 2))

  -- Execution Prevention Across All Firms: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.execution_prevention_across_all_firms, buffer(offset, 2))

  -- Quoting Period: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quoting_period, buffer(offset, 2))

  -- Exceptional Market Conditions: 2 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.exceptional_market_conditions, buffer(offset, 2))

  -- Stressed Market Conditions: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.stressed_market_conditions, buffer(offset, 2))

  -- Wholesale Allowed: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.wholesale_allowed, buffer(offset, 2))

  -- Suspended: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.suspended, buffer(offset, 2))

  -- Random Uncrossing: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.random_uncrossing, buffer(offset, 2))

  -- Trading At Last: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_at_last, buffer(offset, 2))

  -- Call Bbo Only: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.call_bbo_only, buffer(offset, 2))

  -- No Qualifier: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.no_qualifier, buffer(offset, 2))
end

-- Dissect: Phase Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_qualifier, range, display)

  if show.phase_qualifier then
    euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Phase Id
euronext_optiq_marketdatagateway_sbe_v5_33.phase_id = {}

-- Size: Phase Id
euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.size = 1

-- Display: Phase Id
euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_id, range, value, display)

  return offset + length, value
end

-- Phase Time
euronext_optiq_marketdatagateway_sbe_v5_33.phase_time = {}

-- Size: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.size = 8

-- Display: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.display = function(value)
  return "Phase Time: "..value
end

-- Dissect: Phase Time
euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.phase_time, range, value, display)

  return offset + length, value
end

-- Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group = {}

-- Calculate size of: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.session.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.size

  return index
end

-- Display: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.fields = function(buffer, offset, packet, parent, timetables_group_index)
  local index = offset

  -- Implicit Timetables Group Index
  if timetables_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_group_index, timetables_group_index)
    iteration:set_generated()
  end

  -- Phase Time: 8 Byte Unsigned Fixed Width Integer
  index, phase_time = euronext_optiq_marketdatagateway_sbe_v5_33.phase_time.dissect(buffer, index, packet, parent)

  -- Phase Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, phase_id = euronext_optiq_marketdatagateway_sbe_v5_33.phase_id.dissect(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 11 fields
  index, phase_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.dissect(buffer, index, packet, parent)

  -- Trading Period: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_period = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period.dissect(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.dissect(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = euronext_optiq_marketdatagateway_sbe_v5_33.session.dissect(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, scheduled_event = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetables Group
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.dissect = function(buffer, offset, packet, parent, timetables_group_index)
  if show.timetables_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.fields(buffer, offset, packet, parent, timetables_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.fields(buffer, offset, packet, parent, timetables_group_index)
  end
end

-- Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups = {}

-- Calculate size of: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local timetables_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + timetables_group_count * 15

  return index
end

-- Display: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Timetables Group
  for timetables_group_index = 1, num_in_group do
    index, timetables_group = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_group.dissect(buffer, index, packet, parent, timetables_group_index)
  end

  return index
end

-- Dissect: Timetables Groups
euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetables_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetables_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.fields(buffer, offset, packet, parent)
end

-- Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional = {}

-- Size: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.size = 4

-- Display: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index Optional: No Value"
  end

  return "Symbol Index Optional: "..value
end

-- Dissect: Symbol Index Optional
euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.symbol_index_optional, range, value, display)

  return offset + length, value
end

-- Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message = {}

-- Calculate size of: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.size(buffer, offset + index)

  return index
end

-- Display: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_marketdatagateway_sbe_v5_33.emm_optional.dissect(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, pattern_id = euronext_optiq_marketdatagateway_sbe_v5_33.pattern_id.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Timetables Groups: Struct of 2 fields
  index, timetables_groups = euronext_optiq_marketdatagateway_sbe_v5_33.timetables_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetable Message
euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.timetable_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.timetable_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.fields(buffer, offset, packet, parent)
end

-- Instrument State
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state = {}

-- Size: Instrument State
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.size = 1

-- Display: Instrument State
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time = {}

-- Size: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.size = 8

-- Display: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Scheduled Event Time: No Value"
  end

  return "Scheduled Event Time: "..value
end

-- Dissect: Scheduled Event Time
euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.scheduled_event_time, range, value, display)

  return offset + length, value
end

-- Quote Spread Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier = {}

-- Size: Quote Spread Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.size = 1

-- Display: Quote Spread Multiplier
euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quote_spread_multiplier, range, value, display)

  return offset + length, value
end

-- Price Limits
euronext_optiq_marketdatagateway_sbe_v5_33.price_limits = {}

-- Size: Price Limits
euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.size = 1

-- Display: Price Limits
euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_limits, range, value, display)

  return offset + length, value
end

-- Trading Side
euronext_optiq_marketdatagateway_sbe_v5_33.trading_side = {}

-- Size: Trading Side
euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.size = 1

-- Display: Trading Side
euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_side, range, value, display)

  return offset + length, value
end

-- Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional = {}

-- Size: Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.size = 1

-- Display: Trading Period Optional
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trading_period_optional, range, value, display)

  return offset + length, value
end

-- Status Reason
euronext_optiq_marketdatagateway_sbe_v5_33.status_reason = {}

-- Size: Status Reason
euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.size = 1

-- Display: Status Reason
euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.status_reason, range, value, display)

  return offset + length, value
end

-- Book State
euronext_optiq_marketdatagateway_sbe_v5_33.book_state = {}

-- Size: Book State
euronext_optiq_marketdatagateway_sbe_v5_33.book_state.size = 1

-- Display: Book State
euronext_optiq_marketdatagateway_sbe_v5_33.book_state.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.book_state.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.book_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.book_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.book_state, range, value, display)

  return offset + length, value
end

-- Change Type
euronext_optiq_marketdatagateway_sbe_v5_33.change_type = {}

-- Size: Change Type
euronext_optiq_marketdatagateway_sbe_v5_33.change_type.size = 1

-- Display: Change Type
euronext_optiq_marketdatagateway_sbe_v5_33.change_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.change_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.change_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.change_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.change_type, range, value, display)

  return offset + length, value
end

-- Market States Group
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group = {}

-- Calculate size of: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.change_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.book_state.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.session.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.size

  return index
end

-- Display: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.fields = function(buffer, offset, packet, parent, market_states_group_index)
  local index = offset

  -- Implicit Market States Group Index
  if market_states_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_group_index, market_states_group_index)
    iteration:set_generated()
  end

  -- Change Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, change_type = euronext_optiq_marketdatagateway_sbe_v5_33.change_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Book State: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, book_state = euronext_optiq_marketdatagateway_sbe_v5_33.book_state.dissect(buffer, index, packet, parent)

  -- Status Reason: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, status_reason = euronext_optiq_marketdatagateway_sbe_v5_33.status_reason.dissect(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 11 fields
  index, phase_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.phase_qualifier.dissect(buffer, index, packet, parent)

  -- Trading Period Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_period_optional = euronext_optiq_marketdatagateway_sbe_v5_33.trading_period_optional.dissect(buffer, index, packet, parent)

  -- Trading Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_side = euronext_optiq_marketdatagateway_sbe_v5_33.trading_side.dissect(buffer, index, packet, parent)

  -- Price Limits: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, price_limits = euronext_optiq_marketdatagateway_sbe_v5_33.price_limits.dissect(buffer, index, packet, parent)

  -- Quote Spread Multiplier: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_spread_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.quote_spread_multiplier.dissect(buffer, index, packet, parent)

  -- Order Entry Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_entry_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.order_entry_qualifier.dissect(buffer, index, packet, parent)

  -- Session: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, session = euronext_optiq_marketdatagateway_sbe_v5_33.session.dissect(buffer, index, packet, parent)

  -- Scheduled Event: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, scheduled_event = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event.dissect(buffer, index, packet, parent)

  -- Scheduled Event Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, scheduled_event_time = euronext_optiq_marketdatagateway_sbe_v5_33.scheduled_event_time.dissect(buffer, index, packet, parent)

  -- Instrument State: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, instrument_state = euronext_optiq_marketdatagateway_sbe_v5_33.instrument_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market States Group
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.dissect = function(buffer, offset, packet, parent, market_states_group_index)
  if show.market_states_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.fields(buffer, offset, packet, parent, market_states_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.fields(buffer, offset, packet, parent, market_states_group_index)
  end
end

-- Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups = {}

-- Calculate size of: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local market_states_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + market_states_group_count * 33

  return index
end

-- Display: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Market States Group
  for market_states_group_index = 1, num_in_group do
    index, market_states_group = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_group.dissect(buffer, index, packet, parent, market_states_group_index)
  end

  return index
end

-- Dissect: Market States Groups
euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_states_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_states_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.fields(buffer, offset, packet, parent)
end

-- Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message = {}

-- Calculate size of: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.size(buffer, offset + index)

  return index
end

-- Display: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Market States Groups: Struct of 2 fields
  index, market_states_groups = euronext_optiq_marketdatagateway_sbe_v5_33.market_states_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Change Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_status_change_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_status_change_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.fields(buffer, offset, packet, parent)
end

-- Not Used Group 1 Group
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_group = {}

-- Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups = {}

-- Calculate size of: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_1_group_count * 0

  return index
end

-- Display: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Not Used Group 1 Group
  for not_used_group_1_group_index = 1, num_in_group do
    index, not_used_group_1_group = euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_group.dissect(buffer, index, packet, parent, not_used_group_1_group_index)
  end

  return index
end

-- Dissect: Not Used Group 1 Groups
euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.not_used_group_1_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.fields(buffer, offset, packet, parent)
end

-- Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date = {}

-- Size: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.size = 2

-- Display: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Repo Settlement Date: No Value"
  end

  return "Repo Settlement Date: "..value
end

-- Dissect: Repo Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.repo_settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date = {}

-- Size: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.size = 2

-- Display: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settlement Date: No Value"
  end

  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Message Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation = {}

-- Size: Message Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.size = 1

-- Display: Message Price Notation
euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price = {}

-- Size: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.size = 8

-- Display: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap = {}

-- Size: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.size = 4

-- Display: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap = {}

-- Size: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.size = 4

-- Display: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Transparency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator = {}

-- Size: Transparency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.size = 1

-- Display: Transparency Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.transparency_indicator, range, value, display)

  return offset + length, value
end

-- Block Trade Code
euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code = {}

-- Size: Block Trade Code
euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.size = 1

-- Display: Block Trade Code
euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_trade_code, range, value, display)

  return offset + length, value
end

-- Effective Date Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator = {}

-- Size: Effective Date Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.size = 1

-- Display: Effective Date Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.effective_date_indicator, range, value, display)

  return offset + length, value
end

-- Transaction Type
euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type = {}

-- Size: Transaction Type
euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.size = 1

-- Display: Transaction Type
euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Uncrossing Trade
euronext_optiq_marketdatagateway_sbe_v5_33.uncrossing_trade = {}

-- First Trade Price
euronext_optiq_marketdatagateway_sbe_v5_33.first_trade_price = {}

-- Passive Order
euronext_optiq_marketdatagateway_sbe_v5_33.passive_order = {}

-- Aggressive Order
euronext_optiq_marketdatagateway_sbe_v5_33.aggressive_order = {}

-- Trade Creation By Market Operations
euronext_optiq_marketdatagateway_sbe_v5_33.trade_creation_by_market_operations = {}

-- Nav Trade Expressed In Bps
euronext_optiq_marketdatagateway_sbe_v5_33.nav_trade_expressed_in_bps = {}

-- Nav Trade Expressed In Price Currency
euronext_optiq_marketdatagateway_sbe_v5_33.nav_trade_expressed_in_price_currency = {}

-- Deferred Publication
euronext_optiq_marketdatagateway_sbe_v5_33.deferred_publication = {}

-- Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier = {}

-- Size: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.size = 1

-- Display: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator = {}

-- Size: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.size = 4

-- Display: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Duplicative Indicator: No Value"
  end

  return "Mmt Duplicative Indicator: "..value
end

-- Dissect: Mmt Duplicative Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral = {}

-- Size: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.size = 4

-- Display: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Post Trade Deferral: No Value"
  end

  return "Mmt Post Trade Deferral: "..value
end

-- Dissect: Mmt Post Trade Deferral
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode = {}

-- Size: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.size = 4

-- Display: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Publication Mode: No Value"
  end

  return "Mmt Publication Mode: "..value
end

-- Dissect: Mmt Publication Mode
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator = {}

-- Size: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.size = 4

-- Display: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Algorithmic Indicator: No Value"
  end

  return "Mmt Algorithmic Indicator: "..value
end

-- Dissect: Mmt Algorithmic Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price = {}

-- Size: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.size = 4

-- Display: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Contributionto Price: No Value"
  end

  return "Mmt Contributionto Price: "..value
end

-- Dissect: Mmt Contributionto Price
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator = {}

-- Size: Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.size = 1

-- Display: Mmt Off Book Automated Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional = {}

-- Size: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.size = 4

-- Display: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Modification Indicator char 4 optional: No Value"
  end

  return "Mmt Modification Indicator char 4 optional: "..value
end

-- Dissect: Mmt Modification Indicator char 4 optional
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_modification_indicator_char_4_optional, range, value, display)

  return offset + length, value
end

-- Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator = {}

-- Size: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.size = 4

-- Display: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Negotiation Indicator: No Value"
  end

  return "Mmt Negotiation Indicator: "..value
end

-- Dissect: Mmt Negotiation Indicator
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category = {}

-- Size: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.size = 4

-- Display: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mmt Transaction Category: No Value"
  end

  return "Mmt Transaction Category: "..value
end

-- Dissect: Mmt Transaction Category
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.size
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

  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism = {}

-- Size: Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.size = 1

-- Display: Mmt Market Mechanism
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message = {}

-- Calculate size of: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.venue.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.size(buffer, offset + index)

  return index
end

-- Display: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.trading_date_time.dissect(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String Nullable
  index, publication_date_time = euronext_optiq_marketdatagateway_sbe_v5_33.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, trade_type = euronext_optiq_marketdatagateway_sbe_v5_33.trade_type.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Type Optional: 4 Byte Ascii String Nullable
  index, mifid_instrument_id_type_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_type_optional.dissect(buffer, index, packet, parent)

  -- Mifid Instrument Id Optional: 12 Byte Ascii String Nullable
  index, mifid_instrument_id_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_execution_id.dissect(buffer, index, packet, parent)

  -- Mifid Price Optional: 20 Byte Ascii String Nullable
  index, mifid_price_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_optional.dissect(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity.dissect(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String Nullable
  index, mifid_price_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_price_notation.dissect(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String Nullable
  index, mifid_currency = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_currency.dissect(buffer, index, packet, parent)

  -- Mifid Qty In Msrmt Unit Notation: 25 Byte Ascii String Nullable
  index, mifid_qty_in_msrmt_unit_notation = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_qty_in_msrmt_unit_notation.dissect(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String Nullable
  index, mifid_quantity_measurement_unit = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_quantity_measurement_unit.dissect(buffer, index, packet, parent)

  -- Mifid Notional Amount: 20 Byte Ascii String Nullable
  index, mifid_notional_amount = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String Nullable
  index, notional_currency = euronext_optiq_marketdatagateway_sbe_v5_33.notional_currency.dissect(buffer, index, packet, parent)

  -- Mifid Clearing Flag: 5 Byte Ascii String Nullable
  index, mifid_clearing_flag = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_clearing_flag.dissect(buffer, index, packet, parent)

  -- Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, mmt_market_mechanism = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_market_mechanism.dissect(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String Enum with 12 values
  index, mmt_trading_mode = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Mmt Transaction Category: 4 Byte Ascii String Nullable
  index, mmt_transaction_category = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_transaction_category.dissect(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: 4 Byte Ascii String Nullable
  index, mmt_negotiation_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String Nullable
  index, mmt_agency_cross_trade_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_agency_cross_trade_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator char 4 optional: 4 Byte Ascii String Nullable
  index, mmt_modification_indicator_char_4_optional = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_modification_indicator_char_4_optional.dissect(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String Nullable
  index, mmt_benchmark_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String Nullable
  index, mmt_special_dividend_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Off Book Automated Indicator: 1 Byte Ascii String Enum with 4 values
  index, mmt_off_book_automated_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Contributionto Price: 4 Byte Ascii String Nullable
  index, mmt_contributionto_price = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_contributionto_price.dissect(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: 4 Byte Ascii String Nullable
  index, mmt_algorithmic_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Publication Mode: 4 Byte Ascii String Nullable
  index, mmt_publication_mode = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_publication_mode.dissect(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral: 4 Byte Ascii String Nullable
  index, mmt_post_trade_deferral = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_post_trade_deferral.dissect(buffer, index, packet, parent)

  -- Mmt Duplicative Indicator: 4 Byte Ascii String Nullable
  index, mmt_duplicative_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.mmt_duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.trade_qualifier.dissect(buffer, index, packet, parent)

  -- Transaction Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, transaction_type = euronext_optiq_marketdatagateway_sbe_v5_33.transaction_type.dissect(buffer, index, packet, parent)

  -- Effective Date Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, effective_date_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.effective_date_indicator.dissect(buffer, index, packet, parent)

  -- Block Trade Code: 1 Byte Ascii String Enum with 4 values
  index, block_trade_code = euronext_optiq_marketdatagateway_sbe_v5_33.block_trade_code.dissect(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String Nullable
  index, trade_reference = euronext_optiq_marketdatagateway_sbe_v5_33.trade_reference.dissect(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, original_report_timestamp = euronext_optiq_marketdatagateway_sbe_v5_33.original_report_timestamp.dissect(buffer, index, packet, parent)

  -- Transparency Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, transparency_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.transparency_indicator.dissect(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer Nullable
  index, currency_coefficient = euronext_optiq_marketdatagateway_sbe_v5_33.currency_coefficient.dissect(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier.dissect(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_multiplier_decimals = euronext_optiq_marketdatagateway_sbe_v5_33.price_multiplier_decimals.dissect(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = euronext_optiq_marketdatagateway_sbe_v5_33.venue.dissect(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_marketdatagateway_sbe_v5_33.start_time_vwap.dissect(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_marketdatagateway_sbe_v5_33.end_time_vwap.dissect(buffer, index, packet, parent)

  -- Mifid Emission Allowance Type: 4 Byte Ascii String Nullable
  index, mifid_emission_allowance_type = euronext_optiq_marketdatagateway_sbe_v5_33.mifid_emission_allowance_type.dissect(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String Nullable
  index, market_of_reference_mic = euronext_optiq_marketdatagateway_sbe_v5_33.market_of_reference_mic.dissect(buffer, index, packet, parent)

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = euronext_optiq_marketdatagateway_sbe_v5_33.evaluated_price.dissect(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_marketdatagateway_sbe_v5_33.message_price_notation.dissect(buffer, index, packet, parent)

  -- Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = euronext_optiq_marketdatagateway_sbe_v5_33.settlement_date.dissect(buffer, index, packet, parent)

  -- Repo Settlement Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, repo_settlement_date = euronext_optiq_marketdatagateway_sbe_v5_33.repo_settlement_date.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: 16 Byte Ascii String Nullable
  index, trade_unique_identifier = euronext_optiq_marketdatagateway_sbe_v5_33.trade_unique_identifier.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_marketdatagateway_sbe_v5_33.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Trade Information Message
euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.full_trade_information_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.full_trade_information_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.fields(buffer, offset, packet, parent)
end

-- Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier = {}

-- Size: Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.size = 1

-- Display: Price Qualifier
euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_qualifier, range, value, display)

  return offset + length, value
end

-- Imbalance Qty Side
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side = {}

-- Size: Imbalance Qty Side
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.size = 1

-- Display: Imbalance Qty Side
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.imbalance_qty_side, range, value, display)

  return offset + length, value
end

-- Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty = {}

-- Size: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.size = 8

-- Display: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Dissect: Imbalance Qty
euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional = {}

-- Size: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.size = 8

-- Display: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity Optional: No Value"
  end

  return "Quantity Optional: "..value
end

-- Dissect: Quantity Optional
euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.quantity_optional, range, value, display)

  return offset + length, value
end

-- Price Type
euronext_optiq_marketdatagateway_sbe_v5_33.price_type = {}

-- Size: Price Type
euronext_optiq_marketdatagateway_sbe_v5_33.price_type.size = 1

-- Display: Price Type
euronext_optiq_marketdatagateway_sbe_v5_33.price_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_type, range, value, display)

  return offset + length, value
end

-- Prices Group
euronext_optiq_marketdatagateway_sbe_v5_33.prices_group = {}

-- Calculate size of: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.size

  return index
end

-- Display: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.fields = function(buffer, offset, packet, parent, prices_group_index)
  local index = offset

  -- Implicit Prices Group Index
  if prices_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_group_index, prices_group_index)
    iteration:set_generated()
  end

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 23 values
  index, price_type = euronext_optiq_marketdatagateway_sbe_v5_33.price_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_33.price.dissect(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.dissect(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_qty = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty.dissect(buffer, index, packet, parent)

  -- Imbalance Qty Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, imbalance_qty_side = euronext_optiq_marketdatagateway_sbe_v5_33.imbalance_qty_side.dissect(buffer, index, packet, parent)

  -- Price Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, price_qualifier = euronext_optiq_marketdatagateway_sbe_v5_33.price_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prices Group
euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.dissect = function(buffer, offset, packet, parent, prices_group_index)
  if show.prices_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.fields(buffer, offset, packet, parent, prices_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.fields(buffer, offset, packet, parent, prices_group_index)
  end
end

-- Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups = {}

-- Calculate size of: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local prices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + prices_group_count * 31

  return index
end

-- Display: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Prices Group
  for prices_group_index = 1, num_in_group do
    index, prices_group = euronext_optiq_marketdatagateway_sbe_v5_33.prices_group.dissect(buffer, index, packet, parent, prices_group_index)
  end

  return index
end

-- Dissect: Prices Groups
euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.prices_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.prices_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.fields(buffer, offset, packet, parent)
end

-- Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message = {}

-- Calculate size of: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.size(buffer, offset + index)

  return index
end

-- Display: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Prices Groups: Struct of 2 fields
  index, prices_groups = euronext_optiq_marketdatagateway_sbe_v5_33.prices_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.price_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.price_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.fields(buffer, offset, packet, parent)
end

-- Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message = {}

-- Calculate size of: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Orders Groups: Struct of 2 fields
  index, orders_groups = euronext_optiq_marketdatagateway_sbe_v5_33.orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.order_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.fields(buffer, offset, packet, parent)
end

-- Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders = {}

-- Size: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.size = 2

-- Display: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.update_type = {}

-- Size: Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.update_type.size = 1

-- Display: Update Type
euronext_optiq_marketdatagateway_sbe_v5_33.update_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.update_type, range, value, display)

  return offset + length, value
end

-- Updates Group
euronext_optiq_marketdatagateway_sbe_v5_33.updates_group = {}

-- Calculate size of: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.update_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.price.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.size

  return index
end

-- Display: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.fields = function(buffer, offset, packet, parent, updates_group_index)
  local index = offset

  -- Implicit Updates Group Index
  if updates_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_group_index, updates_group_index)
    iteration:set_generated()
  end

  -- Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 96 values
  index, update_type = euronext_optiq_marketdatagateway_sbe_v5_33.update_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_orders = euronext_optiq_marketdatagateway_sbe_v5_33.number_of_orders.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = euronext_optiq_marketdatagateway_sbe_v5_33.price.dissect(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_marketdatagateway_sbe_v5_33.quantity_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Updates Group
euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.dissect = function(buffer, offset, packet, parent, updates_group_index)
  if show.updates_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_group, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.fields(buffer, offset, packet, parent, updates_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.fields(buffer, offset, packet, parent, updates_group_index)
  end
end

-- Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups = {}

-- Calculate size of: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local updates_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + updates_group_count * 23

  return index
end

-- Display: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_marketdatagateway_sbe_v5_33.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Updates Group
  for updates_group_index = 1, num_in_group do
    index, updates_group = euronext_optiq_marketdatagateway_sbe_v5_33.updates_group.dissect(buffer, index, packet, parent, updates_group_index)
  end

  return index
end

-- Dissect: Updates Groups
euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.updates_groups then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.updates_groups, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.fields(buffer, offset, packet, parent)
end

-- Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message = {}

-- Calculate size of: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.emm.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.size(buffer, offset + index)

  return index
end

-- Display: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_marketdatagateway_sbe_v5_33.emm.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  -- Updates Groups: Struct of 2 fields
  index, updates_groups = euronext_optiq_marketdatagateway_sbe_v5_33.updates_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Update Message
euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_update_message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_update_message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.fields(buffer, offset, packet, parent)
end

-- Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time = {}

-- Size: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.size = 8

-- Display: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission End Time: No Value"
  end

  return "Retransmission End Time: "..value
end

-- Dissect: Retransmission End Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.retransmission_end_time, range, value, display)

  return offset + length, value
end

-- Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time = {}

-- Size: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.size = 8

-- Display: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Retransmission Start Time: No Value"
  end

  return "Retransmission Start Time: "..value
end

-- Dissect: Retransmission Start Time
euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.retransmission_start_time, range, value, display)

  return offset + length, value
end

-- Technical Notification Type
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type = {}

-- Size: Technical Notification Type
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.size = 1

-- Display: Technical Notification Type
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.technical_notification_type, range, value, display)

  return offset + length, value
end

-- Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message = {}

-- Calculate size of: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.size

  return index
end

-- Display: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_seq_num_optional = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Technical Notification Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, technical_notification_type = euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_type.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = euronext_optiq_marketdatagateway_sbe_v5_33.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Retransmission Start Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_start_time = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_start_time.dissect(buffer, index, packet, parent)

  -- Retransmission End Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, retransmission_end_time = euronext_optiq_marketdatagateway_sbe_v5_33.retransmission_end_time.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_marketdatagateway_sbe_v5_33.symbol_index_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Notification Message
euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.technical_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.technical_notification_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message = {}

-- Calculate size of: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.event_time.size

  return index
end

-- Display: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = euronext_optiq_marketdatagateway_sbe_v5_33.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Health Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.dissect = function(buffer, offset, packet, parent)
  if show.health_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.health_status_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day = {}

-- Size: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.size = 2

-- Display: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.display = function(value)
  return "Session Trading Day: "..value
end

-- Dissect: Session Trading Day
euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.session_trading_day, range, value, display)

  return offset + length, value
end

-- End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message = {}

-- Calculate size of: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.size

  return index
end

-- Display: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.end_of_day_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message = {}

-- Calculate size of: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.size

  return index
end

-- Display: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = euronext_optiq_marketdatagateway_sbe_v5_33.md_seq_num.dissect(buffer, index, packet, parent)

  -- Session Trading Day: 2 Byte Unsigned Fixed Width Integer
  index, session_trading_day = euronext_optiq_marketdatagateway_sbe_v5_33.session_trading_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.start_of_day_message, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
euronext_optiq_marketdatagateway_sbe_v5_33.payload = {}

-- Calculate runtime size of: Payload
euronext_optiq_marketdatagateway_sbe_v5_33.payload.size = function(buffer, offset, template_id)
  -- Size of Start Of Day Message
  if template_id == 1101 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.size(buffer, offset)
  end
  -- Size of End Of Day Message
  if template_id == 1102 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.size(buffer, offset)
  end
  -- Size of Health Status Message
  if template_id == 1103 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.size(buffer, offset)
  end
  -- Size of Technical Notification Message
  if template_id == 1106 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.size(buffer, offset)
  end
  -- Size of Market Update Message
  if template_id == 1001 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.size(buffer, offset)
  end
  -- Size of Order Update Message
  if template_id == 1002 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.size(buffer, offset)
  end
  -- Size of Price Update Message
  if template_id == 1003 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.size(buffer, offset)
  end
  -- Size of Full Trade Information Message
  if template_id == 1004 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.size(buffer, offset)
  end
  -- Size of Market Status Change Message
  if template_id == 1005 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.size(buffer, offset)
  end
  -- Size of Timetable Message
  if template_id == 1006 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.size(buffer, offset)
  end
  -- Size of Standing Data Message
  if template_id == 1007 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.size(buffer, offset)
  end
  -- Size of Real Time Index Message
  if template_id == 1008 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.size(buffer, offset)
  end
  -- Size of Statistics Message
  if template_id == 1009 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.size(buffer, offset)
  end
  -- Size of Index Summary Message
  if template_id == 1011 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.size(buffer, offset)
  end
  -- Size of Strategy Standing Data Message
  if template_id == 1012 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.size(buffer, offset)
  end
  -- Size of Contract Standing Data Message
  if template_id == 1013 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.size(buffer, offset)
  end
  -- Size of Outright Standing Data Message
  if template_id == 1014 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.size(buffer, offset)
  end
  -- Size of Long Order Update Message
  if template_id == 1015 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.size(buffer, offset)
  end
  -- Size of Lis Package Structure Message
  if template_id == 1016 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.size(buffer, offset)
  end
  -- Size of Apa Quotes Message
  if template_id == 1026 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.size(buffer, offset)
  end
  -- Size of Apa Standing Data Message
  if template_id == 1027 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.size(buffer, offset)
  end
  -- Size of Apa Full Trade Information Message
  if template_id == 1028 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.size(buffer, offset)
  end
  -- Size of Bf Instrument Reference Message
  if template_id == 1201 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.size(buffer, offset)
  end
  -- Size of Bf Trade Message
  if template_id == 1202 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.size(buffer, offset)
  end
  -- Size of Bfnav Message
  if template_id == 1203 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.size(buffer, offset)
  end
  -- Size of Bf Instrument Suspension Message
  if template_id == 1204 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.size(buffer, offset)
  end
  -- Size of Start Of Snapshot Message
  if template_id == 2101 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.size(buffer, offset)
  end
  -- Size of End Of Snapshot Message
  if template_id == 2102 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
euronext_optiq_marketdatagateway_sbe_v5_33.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
euronext_optiq_marketdatagateway_sbe_v5_33.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Start Of Day Message
  if template_id == 1101 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if template_id == 1102 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Health Status Message
  if template_id == 1103 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.health_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Technical Notification Message
  if template_id == 1106 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.technical_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Update Message
  if template_id == 1001 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if template_id == 1002 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Update Message
  if template_id == 1003 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Full Trade Information Message
  if template_id == 1004 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.full_trade_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Change Message
  if template_id == 1005 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_status_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Timetable Message
  if template_id == 1006 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.timetable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Standing Data Message
  if template_id == 1007 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.standing_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Real Time Index Message
  if template_id == 1008 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.real_time_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if template_id == 1009 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if template_id == 1011 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.index_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Standing Data Message
  if template_id == 1012 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.strategy_standing_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Contract Standing Data Message
  if template_id == 1013 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.contract_standing_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Standing Data Message
  if template_id == 1014 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.outright_standing_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Order Update Message
  if template_id == 1015 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.long_order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Lis Package Structure Message
  if template_id == 1016 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.lis_package_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Apa Quotes Message
  if template_id == 1026 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Apa Standing Data Message
  if template_id == 1027 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_standing_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Apa Full Trade Information Message
  if template_id == 1028 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.apa_full_trade_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bf Instrument Reference Message
  if template_id == 1201 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bf Trade Message
  if template_id == 1202 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bfnav Message
  if template_id == 1203 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bfnav_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bf Instrument Suspension Message
  if template_id == 1204 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.bf_instrument_suspension_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Snapshot Message
  if template_id == 2101 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.start_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if template_id == 2102 then
    return euronext_optiq_marketdatagateway_sbe_v5_33.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
euronext_optiq_marketdatagateway_sbe_v5_33.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return euronext_optiq_marketdatagateway_sbe_v5_33.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = euronext_optiq_marketdatagateway_sbe_v5_33.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.payload.display(buffer, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.payload, range, display)

  return euronext_optiq_marketdatagateway_sbe_v5_33.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
euronext_optiq_marketdatagateway_sbe_v5_33.version = {}

-- Size: Version
euronext_optiq_marketdatagateway_sbe_v5_33.version.size = 2

-- Display: Version
euronext_optiq_marketdatagateway_sbe_v5_33.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
euronext_optiq_marketdatagateway_sbe_v5_33.version.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
euronext_optiq_marketdatagateway_sbe_v5_33.schema_id = {}

-- Size: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.size = 2

-- Display: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
euronext_optiq_marketdatagateway_sbe_v5_33.template_id = {}

-- Size: Template Id
euronext_optiq_marketdatagateway_sbe_v5_33.template_id.size = 2

-- Display: Template Id
euronext_optiq_marketdatagateway_sbe_v5_33.template_id.display = function(value)
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
euronext_optiq_marketdatagateway_sbe_v5_33.template_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
euronext_optiq_marketdatagateway_sbe_v5_33.block_length = {}

-- Size: Block Length
euronext_optiq_marketdatagateway_sbe_v5_33.block_length.size = 2

-- Display: Block Length
euronext_optiq_marketdatagateway_sbe_v5_33.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_marketdatagateway_sbe_v5_33.block_length.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
euronext_optiq_marketdatagateway_sbe_v5_33.message_header = {}

-- Calculate size of: Message Header
euronext_optiq_marketdatagateway_sbe_v5_33.message_header.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.block_length.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.template_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.version.size

  return index
end

-- Display: Message Header
euronext_optiq_marketdatagateway_sbe_v5_33.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_marketdatagateway_sbe_v5_33.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = euronext_optiq_marketdatagateway_sbe_v5_33.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, template_id = euronext_optiq_marketdatagateway_sbe_v5_33.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = euronext_optiq_marketdatagateway_sbe_v5_33.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_marketdatagateway_sbe_v5_33.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Frame
euronext_optiq_marketdatagateway_sbe_v5_33.frame = {}

-- Size: Frame
euronext_optiq_marketdatagateway_sbe_v5_33.frame.size = 2

-- Display: Frame
euronext_optiq_marketdatagateway_sbe_v5_33.frame.display = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_marketdatagateway_sbe_v5_33.frame.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.frame.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.frame, range, value, display)

  return offset + length, value
end

-- Message
euronext_optiq_marketdatagateway_sbe_v5_33.message = {}

-- Calculate size of: Message
euronext_optiq_marketdatagateway_sbe_v5_33.message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.frame.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_marketdatagateway_sbe_v5_33.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_marketdatagateway_sbe_v5_33.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_marketdatagateway_sbe_v5_33.frame.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_marketdatagateway_sbe_v5_33.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 28 branches
  index = euronext_optiq_marketdatagateway_sbe_v5_33.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_marketdatagateway_sbe_v5_33.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = euronext_optiq_marketdatagateway_sbe_v5_33.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.message, range, display)
  end

  return euronext_optiq_marketdatagateway_sbe_v5_33.message.fields(buffer, offset, packet, parent)
end

-- Channel Id
euronext_optiq_marketdatagateway_sbe_v5_33.channel_id = {}

-- Size: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.size = 2

-- Display: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Compression
euronext_optiq_marketdatagateway_sbe_v5_33.compression = {}

-- Mdg Restart Count
euronext_optiq_marketdatagateway_sbe_v5_33.mdg_restart_count = {}

-- Psn High Weight
euronext_optiq_marketdatagateway_sbe_v5_33.psn_high_weight = {}

-- Has Start Of Day Snapshot
euronext_optiq_marketdatagateway_sbe_v5_33.has_start_of_day_snapshot = {}

-- Has End Of Day Snapshot
euronext_optiq_marketdatagateway_sbe_v5_33.has_end_of_day_snapshot = {}

-- Has Status Message
euronext_optiq_marketdatagateway_sbe_v5_33.has_status_message = {}

-- Reserved Bits
euronext_optiq_marketdatagateway_sbe_v5_33.reserved_bits = {}

-- Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags = {}

-- Size: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.size = 2

-- Display: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.display = function(buffer, packet, parent)
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
euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Bits: 6 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.reserved_bits, buffer(offset, 2))

  -- Has Status Message: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_status_message, buffer(offset, 2))

  -- Has End Of Day Snapshot: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_end_of_day_snapshot, buffer(offset, 2))

  -- Has Start Of Day Snapshot: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.has_start_of_day_snapshot, buffer(offset, 2))

  -- Psn High Weight: 3 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.psn_high_weight, buffer(offset, 2))

  -- Mdg Restart Count: 3 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.mdg_restart_count, buffer(offset, 2))

  -- Compression: 1 Bit
  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.compression, buffer(offset, 2))
end

-- Dissect: Packet Flags
euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_flags, range, display)

  if show.packet_flags then
    euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number = {}

-- Size: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Time
euronext_optiq_marketdatagateway_sbe_v5_33.packet_time = {}

-- Size: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.size = 8

-- Display: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.display = function(value)
  return "Packet Time: "..value
end

-- Dissect: Packet Time
euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.packet_time, range, value, display)

  return offset + length, value
end

-- Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header = {}

-- Calculate size of: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.size

  index = index + euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.size

  return index
end

-- Display: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Time: 8 Byte Unsigned Fixed Width Integer
  index, packet_time = euronext_optiq_marketdatagateway_sbe_v5_33.packet_time.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = euronext_optiq_marketdatagateway_sbe_v5_33.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Flags: Struct of 7 fields
  index, packet_flags = euronext_optiq_marketdatagateway_sbe_v5_33.packet_flags.dissect(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = euronext_optiq_marketdatagateway_sbe_v5_33.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.market_data_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33.fields.market_data_packet_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
euronext_optiq_marketdatagateway_sbe_v5_33.packet = {}

-- Dissect Packet
euronext_optiq_marketdatagateway_sbe_v5_33.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = euronext_optiq_marketdatagateway_sbe_v5_33.market_data_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = euronext_optiq_marketdatagateway_sbe_v5_33.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_euronext_optiq_marketdatagateway_sbe_v5_33.init()
end

-- Dissector for Euronext Optiq MarketDataGateway Sbe 5.33
function omi_euronext_optiq_marketdatagateway_sbe_v5_33.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_euronext_optiq_marketdatagateway_sbe_v5_33.name

  -- Dissect protocol
  local protocol = parent:add(omi_euronext_optiq_marketdatagateway_sbe_v5_33, buffer(), omi_euronext_optiq_marketdatagateway_sbe_v5_33.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_marketdatagateway_sbe_v5_33.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_euronext_optiq_marketdatagateway_sbe_v5_33)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
euronext_optiq_marketdatagateway_sbe_v5_33.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
euronext_optiq_marketdatagateway_sbe_v5_33.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(24, 2):le_uint()

  if value == 333 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq MarketDataGateway Sbe 5.33
local function omi_euronext_optiq_marketdatagateway_sbe_v5_33_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not euronext_optiq_marketdatagateway_sbe_v5_33.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not euronext_optiq_marketdatagateway_sbe_v5_33.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not euronext_optiq_marketdatagateway_sbe_v5_33.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_euronext_optiq_marketdatagateway_sbe_v5_33
  omi_euronext_optiq_marketdatagateway_sbe_v5_33.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq MarketDataGateway Sbe 5.33
omi_euronext_optiq_marketdatagateway_sbe_v5_33:register_heuristic("udp", omi_euronext_optiq_marketdatagateway_sbe_v5_33_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 5.33
--   Date: Monday, February 26, 2024
--   Specification: Optiq MDG Messages - Interface Specification - Euronext Cash and Derivatives Markets - External - v5.33.0 +TC
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
