-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 4.3.0 Protocol
local euronext_optiq_marketdatagateway_sbe_v4_3_0 = Proto("Euronext.Optiq.MarketDataGateway.Sbe.v4.3.0.Lua", "Euronext Optiq MarketDataGateway Sbe 4.3.0")

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

-- Euronext Optiq MarketDataGateway Sbe 4.3.0 Fields
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.amount_decimals = ProtoField.new("Amount Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.amountdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_full_trade_information_message = ProtoField.new("Apa Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.apafulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_quotes_message = ProtoField.new("Apa Quotes Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.apaquotesmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_standing_data_message = ProtoField.new("Apa Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.apastandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_instrument_reference_message = ProtoField.new("Bf Instrument Reference Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bfinstrumentreferencemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_instrument_suspension_message = ProtoField.new("Bf Instrument Suspension Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bfinstrumentsuspensionmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_trade_message = ProtoField.new("Bf Trade Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bftrademessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bfna_v_message = ProtoField.new("Bfna V Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bfnavmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bid_offer_date_time = ProtoField.new("Bid Offer Date Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bidofferdatetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bid_price = ProtoField.new("Bid Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.bidprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.marketdatagateway.sbe.v4.3.0.blocklength", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.block_trade_code = ProtoField.new("Block Trade Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.blocktradecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.cfi = ProtoField.new("Cfi", "euronext.optiq.marketdatagateway.sbe.v4.3.0.cfi", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.channel_id = ProtoField.new("Channel Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.channelid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_price = ProtoField.new("Closing Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.closingprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_reference_level = ProtoField.new("Closing Reference Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.closingreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_reference_time = ProtoField.new("Closing Reference Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.closingreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.collar_expansion_factor = ProtoField.new("Collar Expansion Factor", "euronext.optiq.marketdatagateway.sbe.v4.3.0.collarexpansionfactor", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.compression = ProtoField.new("Compression", "euronext.optiq.marketdatagateway.sbe.v4.3.0.compression", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.confirmed_reference_level = ProtoField.new("Confirmed Reference Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.confirmedreferencelevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.confirmed_reference_time = ProtoField.new("Confirmed Reference Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.confirmedreferencetime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_event_date = ProtoField.new("Contract Event Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contracteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_name = ProtoField.new("Contract Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contractname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_standing_data_message = ProtoField.new("Contract Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contractstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contractsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_trading_type = ProtoField.new("Contract Trading Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contracttradingtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_type = ProtoField.new("Contract Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.contracttype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.country_of_exchange = ProtoField.new("Country Of Exchange", "euronext.optiq.marketdatagateway.sbe.v4.3.0.countryofexchange", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.coupon = ProtoField.new("Coupon", "euronext.optiq.marketdatagateway.sbe.v4.3.0.coupon", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.currency = ProtoField.new("Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.currency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.currency_coefficient = ProtoField.new("Currency Coefficient", "euronext.optiq.marketdatagateway.sbe.v4.3.0.currencycoefficient", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_eligibility = ProtoField.new("Dark Eligibility", "euronext.optiq.marketdatagateway.sbe.v4.3.0.darkeligibility", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_lis_threshold = ProtoField.new("Dark Lis Threshold", "euronext.optiq.marketdatagateway.sbe.v4.3.0.darklisthreshold", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_min_quantity = ProtoField.new("Dark Min Quantity", "euronext.optiq.marketdatagateway.sbe.v4.3.0.darkminquantity", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.date_of_initial_listing = ProtoField.new("Date Of Initial Listing", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dateofinitiallisting", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dateoflasttrade", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.days_to_expiry = ProtoField.new("Days To Expiry", "euronext.optiq.marketdatagateway.sbe.v4.3.0.daystoexpiry", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.depositary_list = ProtoField.new("Depositary List", "euronext.optiq.marketdatagateway.sbe.v4.3.0.depositarylist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_instrument_trading_code = ProtoField.new("Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.derivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_instrument_type = ProtoField.new("Derivatives Instrument Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.derivativesinstrumenttype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_market_model = ProtoField.new("Derivatives Market Model", "euronext.optiq.marketdatagateway.sbe.v4.3.0.derivativesmarketmodel", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_currency = ProtoField.new("Dividend Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dividendcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_payment_date = ProtoField.new("Dividend Payment Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dividendpaymentdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_rate = ProtoField.new("Dividend Rate", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dividendrate", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_record_date = ProtoField.new("Dividend Record Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.dividendrecorddate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.edsp_tick_size = ProtoField.new("Edsp Tick Size", "euronext.optiq.marketdatagateway.sbe.v4.3.0.edspticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.effective_date_indicator = ProtoField.new("Effective Date Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.effectivedateindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_agency_cross_trade_indicator = ProtoField.new("Efficient Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_algorithmic_indicator = ProtoField.new("Efficient Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_benchmark_indicator = ProtoField.new("Efficient Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_contributionto_price = ProtoField.new("Efficient Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_duplicative_indicator = ProtoField.new("Efficient Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_market_mechanism = ProtoField.new("Efficient Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_modification_indicator = ProtoField.new("Efficient Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_negotiation_indicator = ProtoField.new("Efficient Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_off_book_automated_indicator = ProtoField.new("Efficient Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_post_trade_deferral = ProtoField.new("Efficient Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_publication_mode = ProtoField.new("Efficient Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_special_dividend_indicator = ProtoField.new("Efficient Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_trading_mode = ProtoField.new("Efficient Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_transaction_category = ProtoField.new("Efficient Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v4.3.0.efficientmmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.emm = ProtoField.new("Emm", "euronext.optiq.marketdatagateway.sbe.v4.3.0.emm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_of_day_message = ProtoField.new("End Of Day Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.endofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.endofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.marketdatagateway.sbe.v4.3.0.endtimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.evaluatedprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.event_time = ProtoField.new("Event Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.eventtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ex_dividend_date = ProtoField.new("Ex Dividend Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.exdividenddate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.exchange_code = ProtoField.new("Exchange Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.exchangecode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.exer_style = ProtoField.new("Exer Style", "euronext.optiq.marketdatagateway.sbe.v4.3.0.exerstyle", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.expiry_cycle_type = ProtoField.new("Expiry Cycle Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.expirycycletype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.expiry_date = ProtoField.new("Expiry Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.expirydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.first_settlement_date = ProtoField.new("First Settlement Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.firstsettlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.frame = ProtoField.new("Frame", "euronext.optiq.marketdatagateway.sbe.v4.3.0.frame", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.full_instrument_name = ProtoField.new("Full Instrument Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.fullinstrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.full_trade_information_message = ProtoField.new("Full Trade Information Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.fulltradeinformationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_dividend_in_euros = ProtoField.new("Gross Dividend In Euros", "euronext.optiq.marketdatagateway.sbe.v4.3.0.grossdividendineuros", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_dividend_payable_per_unit = ProtoField.new("Gross Dividend Payable Per Unit", "euronext.optiq.marketdatagateway.sbe.v4.3.0.grossdividendpayableperunit", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_of_cdsc_indicator = ProtoField.new("Gross Of Cdsc Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.grossofcdscindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.guarantee_indicator = ProtoField.new("Guarantee Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.guaranteeindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_end_of_day_snapshot = ProtoField.new("Has End Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v4.3.0.hasendofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0100")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_start_of_day_snapshot = ProtoField.new("Has Start Of Day Snapshot", "euronext.optiq.marketdatagateway.sbe.v4.3.0.hasstartofdaysnapshot", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0080")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_status_message = ProtoField.new("Has Status Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.hasstatusmessage", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0200")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.health_status_message = ProtoField.new("Health Status Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.healthstatusmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.high_level = ProtoField.new("High Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.highlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.high_time = ProtoField.new("High Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.hightime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.icb = ProtoField.new("Icb", "euronext.optiq.marketdatagateway.sbe.v4.3.0.icb", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.icb_code = ProtoField.new("Icb Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.icbcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_level = ProtoField.new("Index Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.indexlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_level_type = ProtoField.new("Index Level Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.indexleveltype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_price_code = ProtoField.new("Index Price Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.indexpricecode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_summary_message = ProtoField.new("Index Summary Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.indexsummarymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.inst_unit_exp = ProtoField.new("Inst Unit Exp", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instunitexp", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_category = ProtoField.new("Instrument Category", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instrumentcategory", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_event_date = ProtoField.new("Instrument Event Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instrumenteventdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instrumentgroupcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_name = ProtoField.new("Instrument Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_trading_code = ProtoField.new("Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.instrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.isin_code = ProtoField.new("Isin Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.isincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_date = ProtoField.new("Issue Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.issuedate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_price = ProtoField.new("Issue Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.issueprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_price_decimals = ProtoField.new("Issue Price Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.issuepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issuing_country = ProtoField.new("Issuing Country", "euronext.optiq.marketdatagateway.sbe.v4.3.0.issuingcountry", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_adjusted_closing_price = ProtoField.new("Last Adjusted Closing Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lastadjustedclosingprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_md_seq_num = ProtoField.new("Last Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lastmdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_nav_price = ProtoField.new("Last Nav Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lastnavprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_trading_date = ProtoField.new("Last Trading Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lasttradingdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lei_code = ProtoField.new("Lei Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.leicode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquid_instrument_indicator = ProtoField.new("Liquid Instrument Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.liquidinstrumentindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquidation_level = ProtoField.new("Liquidation Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.liquidationlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquidation_time = ProtoField.new("Liquidation Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.liquidationtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lis_package_structure_message = ProtoField.new("Lis Package Structure Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lispackagestructuremessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_instrument_name = ProtoField.new("Long Instrument Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.longinstrumentname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_issuer_name = ProtoField.new("Long Issuer Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.longissuername", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_order_update_message = ProtoField.new("Long Order Update Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.longorderupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_trade_reference = ProtoField.new("Long Trade Reference", "euronext.optiq.marketdatagateway.sbe.v4.3.0.longtradereference", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lot_size = ProtoField.new("Lot Size", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lotsize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.low_level = ProtoField.new("Low Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lowlevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.low_time = ProtoField.new("Low Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.lowtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.main_depositary = ProtoField.new("Main Depositary", "euronext.optiq.marketdatagateway.sbe.v4.3.0.maindepositary", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "euronext.optiq.marketdatagateway.sbe.v4.3.0.marketdatapacketheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_of_reference_mic = ProtoField.new("Market Of Reference Mic", "euronext.optiq.marketdatagateway.sbe.v4.3.0.marketofreferencemic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_status_change_message = ProtoField.new("Market Status Change Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.marketstatuschangemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_update_message = ProtoField.new("Market Update Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.marketupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.maturity_date = ProtoField.new("Maturity Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.maturitydate", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.maximum_decimals_in_quantity = ProtoField.new("Maximum Decimals In Quantity", "euronext.optiq.marketdatagateway.sbe.v4.3.0.maximumdecimalsinquantity", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.md_seq_num = ProtoField.new("Md Seq Num", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mdseqnum", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mdg_restart_count = ProtoField.new("Mdg Restart Count", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mdgrestartcount", ftypes.UINT16, nil, base.DEC, "0x000E")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message = ProtoField.new("Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.message", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.marketdatagateway.sbe.v4.3.0.messageheader", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.marketdatagateway.sbe.v4.3.0.messagepricenotation", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_clearing_flag = ProtoField.new("Mi Fid Clearing Flag", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidclearingflag", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_emission_allowance_type = ProtoField.new("Mi Fid Emission Allowance Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidemissionallowancetype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_notional_amount = ProtoField.new("Mi Fid Notional Amount", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidnotionalamount", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_qtyin_msrmt_unit_notation = ProtoField.new("Mi Fid Qtyin Msrmt Unit Notation", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidqtyinmsrmtunitnotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_transaction_id = ProtoField.new("Mi Fid Transaction Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidtransactionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mic = ProtoField.new("Mic", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mic_list = ProtoField.new("Mic List", "euronext.optiq.marketdatagateway.sbe.v4.3.0.miclist", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_currency = ProtoField.new("Mifid Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_execution_id = ProtoField.new("Mifid Execution Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidexecutionid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_instrument_id = ProtoField.new("Mifid Instrument Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidinstrumentid", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_instrument_id_type = ProtoField.new("Mifid Instrument Id Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidinstrumentidtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_price = ProtoField.new("Mifid Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_price_notation = ProtoField.new("Mifid Price Notation", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidpricenotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_quantity = ProtoField.new("Mifid Quantity", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidquantity", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_quantity_measurement_unit = ProtoField.new("Mifid Quantity Measurement Unit", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidquantitymeasurementunit", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifidii_liquid_flag = ProtoField.new("Mifidii Liquid Flag", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mifidiiliquidflag", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.minimum_amount = ProtoField.new("Minimum Amount", "euronext.optiq.marketdatagateway.sbe.v4.3.0.minimumamount", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mm_protections = ProtoField.new("Mm Protections", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmprotections", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_agency_cross_trade_indicator = ProtoField.new("Mmt Agency Cross Trade Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtagencycrosstradeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtalgorithmicindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_benchmark_indicator = ProtoField.new("Mmt Benchmark Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtbenchmarkindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_contributionto_price = ProtoField.new("Mmt Contributionto Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtcontributiontoprice", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_duplicative_indicator = ProtoField.new("Mmt Duplicative Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtduplicativeindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtmarketmechanism", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtmodificationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtnegotiationindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_off_book_automated_indicator = ProtoField.new("Mmt Off Book Automated Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtoffbookautomatedindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_post_trade_deferral = ProtoField.new("Mmt Post Trade Deferral", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtposttradedeferral", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_publication_mode = ProtoField.new("Mmt Publication Mode", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtpublicationmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmtspecialdividendindicator", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmttradingmode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mmttransactioncategory", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mnemonic = ProtoField.new("Mnemonic", "euronext.optiq.marketdatagateway.sbe.v4.3.0.mnemonic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mother_stock_isin = ProtoField.new("Mother Stock Isin", "euronext.optiq.marketdatagateway.sbe.v4.3.0.motherstockisin", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_bid_price = ProtoField.new("Nav Bid Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.navbidprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_offer_price = ProtoField.new("Nav Offer Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.navofferprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_price = ProtoField.new("Nav Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.navprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.next_meeting = ProtoField.new("Next Meeting", "euronext.optiq.marketdatagateway.sbe.v4.3.0.nextmeeting", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nominal_currency = ProtoField.new("Nominal Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.nominalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.notional_amount_traded = ProtoField.new("Notional Amount Traded", "euronext.optiq.marketdatagateway.sbe.v4.3.0.notionalamounttraded", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.notional_currency = ProtoField.new("Notional Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.notionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.num_traded_instruments = ProtoField.new("Num Traded Instruments", "euronext.optiq.marketdatagateway.sbe.v4.3.0.numtradedinstruments", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.number_instrument_circulating = ProtoField.new("Number Instrument Circulating", "euronext.optiq.marketdatagateway.sbe.v4.3.0.numberinstrumentcirculating", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.offer_price = ProtoField.new("Offer Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.offerprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opened_closed_fund = ProtoField.new("Opened Closed Fund", "euronext.optiq.marketdatagateway.sbe.v4.3.0.openedclosedfund", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opening_level = ProtoField.new("Opening Level", "euronext.optiq.marketdatagateway.sbe.v4.3.0.openinglevel", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opening_time = ProtoField.new("Opening Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.openingtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.optiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.optiq_segment = ProtoField.new("Optiq Segment", "euronext.optiq.marketdatagateway.sbe.v4.3.0.optiqsegment", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.order_type_rules = ProtoField.new("Order Type Rules", "euronext.optiq.marketdatagateway.sbe.v4.3.0.ordertyperules", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.order_update_message = ProtoField.new("Order Update Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.orderupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.original_report_timestamp = ProtoField.new("Original Report Timestamp", "euronext.optiq.marketdatagateway.sbe.v4.3.0.originalreporttimestamp", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.outright_standing_data_message = ProtoField.new("Outright Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.outrightstandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet = ProtoField.new("Packet", "euronext.optiq.marketdatagateway.sbe.v4.3.0.packet", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_flags = ProtoField.new("Packet Flags", "euronext.optiq.marketdatagateway.sbe.v4.3.0.packetflags", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "euronext.optiq.marketdatagateway.sbe.v4.3.0.packetsequencenumber", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_time = ProtoField.new("Packet Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.packettime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.par_value = ProtoField.new("Par Value", "euronext.optiq.marketdatagateway.sbe.v4.3.0.parvalue", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.partition_id = ProtoField.new("Partition Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.partitionid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pattern_id = ProtoField.new("Pattern Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.patternid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.payload = ProtoField.new("Payload", "euronext.optiq.marketdatagateway.sbe.v4.3.0.payload", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.payment_frequency = ProtoField.new("Payment Frequency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.paymentfrequency", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pctg_of_capitalization = ProtoField.new("Pctg Of Capitalization", "euronext.optiq.marketdatagateway.sbe.v4.3.0.pctgofcapitalization", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.prct_varfrom_prev_close = ProtoField.new("Prct Varfrom Prev Close", "euronext.optiq.marketdatagateway.sbe.v4.3.0.prctvarfromprevclose", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price = ProtoField.new("Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.price", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_decimals = ProtoField.new("Price Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.pricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_index_level_decimals = ProtoField.new("Price Index Level Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.priceindexleveldecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_multiplier = ProtoField.new("Price Multiplier", "euronext.optiq.marketdatagateway.sbe.v4.3.0.pricemultiplier", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_multiplier_decimals = ProtoField.new("Price Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.pricemultiplierdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_update_message = ProtoField.new("Price Update Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.priceupdatemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pricing_algorithm = ProtoField.new("Pricing Algorithm", "euronext.optiq.marketdatagateway.sbe.v4.3.0.pricingalgorithm", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.product_code = ProtoField.new("Product Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.productcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.psn_high_weight = ProtoField.new("Psn High Weight", "euronext.optiq.marketdatagateway.sbe.v4.3.0.psnhighweight", ftypes.UINT16, nil, base.DEC, "0x0070")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.publication_date_time = ProtoField.new("Publication Date Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.publicationdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.marketdatagateway.sbe.v4.3.0.quantity", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.quantitydecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity_notation = ProtoField.new("Quantity Notation", "euronext.optiq.marketdatagateway.sbe.v4.3.0.quantitynotation", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quote_update_type = ProtoField.new("Quote Update Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.quoteupdatetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ratio_decimals = ProtoField.new("Ratio Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.ratiodecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ratio_multiplier_decimals = ProtoField.new("Ratio Multiplier Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.ratiomultiplierdecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.realtimeindexmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.rebroadcast_indicator = ProtoField.new("Rebroadcast Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.rebroadcastindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_continuous = ProtoField.new("Reference Price Origin In Continuous", "euronext.optiq.marketdatagateway.sbe.v4.3.0.referencepriceoriginincontinuous", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_opening_call = ProtoField.new("Reference Price Origin In Opening Call", "euronext.optiq.marketdatagateway.sbe.v4.3.0.referencepriceorigininopeningcall", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_trading_interruption = ProtoField.new("Reference Price Origin In Trading Interruption", "euronext.optiq.marketdatagateway.sbe.v4.3.0.referencepriceoriginintradinginterruption", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_spread_table_id = ProtoField.new("Reference Spread Table Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.referencespreadtableid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.repo_indicator = ProtoField.new("Repo Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.repoindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.repo_settlement_date = ProtoField.new("Repo Settlement Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.reposettlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "euronext.optiq.marketdatagateway.sbe.v4.3.0.reservedbits", ftypes.UINT16, nil, base.DEC, "0xFC00")
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.retransmission_end_time = ProtoField.new("Retransmission End Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.retransmissionendtime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.retransmission_start_time = ProtoField.new("Retransmission Start Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.retransmissionstarttime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.schemaid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.second_notional_currency = ProtoField.new("Second Notional Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.secondnotionalcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.security_condition = ProtoField.new("Security Condition", "euronext.optiq.marketdatagateway.sbe.v4.3.0.securitycondition", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.sedol_code = ProtoField.new("Sedol Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.sedolcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.session_trading_day = ProtoField.new("Session Trading Day", "euronext.optiq.marketdatagateway.sbe.v4.3.0.sessiontradingday", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_date = ProtoField.new("Settlement Date", "euronext.optiq.marketdatagateway.sbe.v4.3.0.settlementdate", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_delay = ProtoField.new("Settlement Delay", "euronext.optiq.marketdatagateway.sbe.v4.3.0.settlementdelay", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_method = ProtoField.new("Settlement Method", "euronext.optiq.marketdatagateway.sbe.v4.3.0.settlementmethod", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_tick_size = ProtoField.new("Settlement Tick Size", "euronext.optiq.marketdatagateway.sbe.v4.3.0.settlementticksize", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.share_amount_in_issue = ProtoField.new("Share Amount In Issue", "euronext.optiq.marketdatagateway.sbe.v4.3.0.shareamountinissue", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.snapshot_time = ProtoField.new("Snapshot Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.snapshottime", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.standing_data_message = ProtoField.new("Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.standingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.startofdaymessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_of_snapshot_message = ProtoField.new("Start Of Snapshot Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.startofsnapshotmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.marketdatagateway.sbe.v4.3.0.starttimevwap", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.statistics_message = ProtoField.new("Statistics Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.statisticsmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strategycode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strategy_standing_data_message = ProtoField.new("Strategy Standing Data Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strategystandingdatamessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_currency = ProtoField.new("Strike Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strikecurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strikecurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price = ProtoField.new("Strike Price", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strikeprice", ftypes.INT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price_decimals = ProtoField.new("Strike Price Decimals", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strikepricedecimals", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price_decimals_ratio = ProtoField.new("Strike Price Decimals Ratio", "euronext.optiq.marketdatagateway.sbe.v4.3.0.strikepricedecimalsratio", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.marketdatagateway.sbe.v4.3.0.symbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.tax_code = ProtoField.new("Tax Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.taxcode", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.tax_description_attaching_to_a_dividend = ProtoField.new("Tax Description Attaching To A Dividend", "euronext.optiq.marketdatagateway.sbe.v4.3.0.taxdescriptionattachingtoadividend", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.technical_notification_message = ProtoField.new("Technical Notification Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.technicalnotificationmessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.technical_notification_type = ProtoField.new("Technical Notification Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.technicalnotificationtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.marketdatagateway.sbe.v4.3.0.templateid", ftypes.UINT16)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_120mn = ProtoField.new("Threshold Lis Post Trade 120mn", "euronext.optiq.marketdatagateway.sbe.v4.3.0.thresholdlisposttrade120mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_60mn = ProtoField.new("Threshold Lis Post Trade 60mn", "euronext.optiq.marketdatagateway.sbe.v4.3.0.thresholdlisposttrade60mn", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_eod = ProtoField.new("Threshold Lis Post Trade Eod", "euronext.optiq.marketdatagateway.sbe.v4.3.0.thresholdlisposttradeeod", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.timetable_message = ProtoField.new("Timetable Message", "euronext.optiq.marketdatagateway.sbe.v4.3.0.timetablemessage", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradequalifier", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_reference = ProtoField.new("Trade Reference", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradereference", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradetype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_currency = ProtoField.new("Trading Currency", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradingcurrency", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradingcurrencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_date_time = ProtoField.new("Trading Date Time", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradingdatetime", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_policy = ProtoField.new("Trading Policy", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradingpolicy", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_unit = ProtoField.new("Trading Unit", "euronext.optiq.marketdatagateway.sbe.v4.3.0.tradingunit", ftypes.UINT64)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.transaction_type = ProtoField.new("Transaction Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.transactiontype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.transparency_indicator = ProtoField.new("Transparency Indicator", "euronext.optiq.marketdatagateway.sbe.v4.3.0.transparencyindicator", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "euronext.optiq.marketdatagateway.sbe.v4.3.0.typeofcorporateevent", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "euronext.optiq.marketdatagateway.sbe.v4.3.0.typeofmarketadmission", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_derivatives_instrument_trading_code = ProtoField.new("Underlying Derivatives Instrument Trading Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingderivativesinstrumenttradingcode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_expiry = ProtoField.new("Underlying Expiry", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingexpiry", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_index_name = ProtoField.new("Underlying Index Name", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingindexname", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_index_term = ProtoField.new("Underlying Index Term", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingindexterm", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_isin_code = ProtoField.new("Underlying Isin Code", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingisincode", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_mic = ProtoField.new("Underlying Mic", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingmic", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_subtype = ProtoField.new("Underlying Subtype", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingsubtype", ftypes.UINT8)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_symbol_index = ProtoField.new("Underlying Symbol Index", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingsymbolindex", ftypes.UINT32)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_type = ProtoField.new("Underlying Type", "euronext.optiq.marketdatagateway.sbe.v4.3.0.underlyingtype", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.venue = ProtoField.new("Venue", "euronext.optiq.marketdatagateway.sbe.v4.3.0.venue", ftypes.STRING)
euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.version = ProtoField.new("Version", "euronext.optiq.marketdatagateway.sbe.v4.3.0.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataGateway Sbe 4.3.0 Element Dissection Options
show.apa_full_trade_information_message = true
show.apa_quotes_message = true
show.apa_standing_data_message = true
show.bf_instrument_reference_message = true
show.bf_instrument_suspension_message = true
show.bf_trade_message = true
show.bfna_v_message = true
show.contract_standing_data_message = true
show.end_of_day_message = true
show.end_of_snapshot_message = true
show.full_trade_information_message = true
show.health_status_message = true
show.index_summary_message = true
show.lis_package_structure_message = true
show.long_order_update_message = true
show.market_data_packet_header = true
show.market_status_change_message = true
show.market_update_message = true
show.message = true
show.message_header = true
show.order_update_message = true
show.outright_standing_data_message = true
show.packet = true
show.packet_flags = true
show.price_update_message = true
show.real_time_index_message = true
show.standing_data_message = true
show.start_of_day_message = true
show.start_of_snapshot_message = true
show.statistics_message = true
show.strategy_standing_data_message = true
show.technical_notification_message = true
show.timetable_message = true
show.payload = false

-- Register Euronext Optiq MarketDataGateway Sbe 4.3.0 Show Options
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_full_trade_information_message = Pref.bool("Show Apa Full Trade Information Message", show.apa_full_trade_information_message, "Parse and add Apa Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_quotes_message = Pref.bool("Show Apa Quotes Message", show.apa_quotes_message, "Parse and add Apa Quotes Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_standing_data_message = Pref.bool("Show Apa Standing Data Message", show.apa_standing_data_message, "Parse and add Apa Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_reference_message = Pref.bool("Show Bf Instrument Reference Message", show.bf_instrument_reference_message, "Parse and add Bf Instrument Reference Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_suspension_message = Pref.bool("Show Bf Instrument Suspension Message", show.bf_instrument_suspension_message, "Parse and add Bf Instrument Suspension Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_trade_message = Pref.bool("Show Bf Trade Message", show.bf_trade_message, "Parse and add Bf Trade Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bfna_v_message = Pref.bool("Show Bfna V Message", show.bfna_v_message, "Parse and add Bfna V Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_contract_standing_data_message = Pref.bool("Show Contract Standing Data Message", show.contract_standing_data_message, "Parse and add Contract Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_snapshot_message = Pref.bool("Show End Of Snapshot Message", show.end_of_snapshot_message, "Parse and add End Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_full_trade_information_message = Pref.bool("Show Full Trade Information Message", show.full_trade_information_message, "Parse and add Full Trade Information Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_health_status_message = Pref.bool("Show Health Status Message", show.health_status_message, "Parse and add Health Status Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_index_summary_message = Pref.bool("Show Index Summary Message", show.index_summary_message, "Parse and add Index Summary Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_lis_package_structure_message = Pref.bool("Show Lis Package Structure Message", show.lis_package_structure_message, "Parse and add Lis Package Structure Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_long_order_update_message = Pref.bool("Show Long Order Update Message", show.long_order_update_message, "Parse and add Long Order Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_data_packet_header = Pref.bool("Show Market Data Packet Header", show.market_data_packet_header, "Parse and add Market Data Packet Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_status_change_message = Pref.bool("Show Market Status Change Message", show.market_status_change_message, "Parse and add Market Status Change Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_update_message = Pref.bool("Show Market Update Message", show.market_update_message, "Parse and add Market Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_order_update_message = Pref.bool("Show Order Update Message", show.order_update_message, "Parse and add Order Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_outright_standing_data_message = Pref.bool("Show Outright Standing Data Message", show.outright_standing_data_message, "Parse and add Outright Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_price_update_message = Pref.bool("Show Price Update Message", show.price_update_message, "Parse and add Price Update Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_real_time_index_message = Pref.bool("Show Real Time Index Message", show.real_time_index_message, "Parse and add Real Time Index Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_standing_data_message = Pref.bool("Show Standing Data Message", show.standing_data_message, "Parse and add Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_snapshot_message = Pref.bool("Show Start Of Snapshot Message", show.start_of_snapshot_message, "Parse and add Start Of Snapshot Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_strategy_standing_data_message = Pref.bool("Show Strategy Standing Data Message", show.strategy_standing_data_message, "Parse and add Strategy Standing Data Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_technical_notification_message = Pref.bool("Show Technical Notification Message", show.technical_notification_message, "Parse and add Technical Notification Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_timetable_message = Pref.bool("Show Timetable Message", show.timetable_message, "Parse and add Timetable Message to protocol tree")
euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.apa_full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_full_trade_information_message then
    show.apa_full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_full_trade_information_message
    changed = true
  end
  if show.apa_quotes_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_quotes_message then
    show.apa_quotes_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_quotes_message
    changed = true
  end
  if show.apa_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_standing_data_message then
    show.apa_standing_data_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_apa_standing_data_message
    changed = true
  end
  if show.bf_instrument_reference_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_reference_message then
    show.bf_instrument_reference_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_reference_message
    changed = true
  end
  if show.bf_instrument_suspension_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_suspension_message then
    show.bf_instrument_suspension_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_instrument_suspension_message
    changed = true
  end
  if show.bf_trade_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_trade_message then
    show.bf_trade_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bf_trade_message
    changed = true
  end
  if show.bfna_v_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bfna_v_message then
    show.bfna_v_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_bfna_v_message
    changed = true
  end
  if show.contract_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_contract_standing_data_message then
    show.contract_standing_data_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_contract_standing_data_message
    changed = true
  end
  if show.end_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_day_message then
    show.end_of_day_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_snapshot_message then
    show.end_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_end_of_snapshot_message
    changed = true
  end
  if show.full_trade_information_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_full_trade_information_message then
    show.full_trade_information_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_full_trade_information_message
    changed = true
  end
  if show.health_status_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_health_status_message then
    show.health_status_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_health_status_message
    changed = true
  end
  if show.index_summary_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_index_summary_message then
    show.index_summary_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_index_summary_message
    changed = true
  end
  if show.lis_package_structure_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_lis_package_structure_message then
    show.lis_package_structure_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_lis_package_structure_message
    changed = true
  end
  if show.long_order_update_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_long_order_update_message then
    show.long_order_update_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_long_order_update_message
    changed = true
  end
  if show.market_data_packet_header ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_data_packet_header then
    show.market_data_packet_header = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_data_packet_header
    changed = true
  end
  if show.market_status_change_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_status_change_message then
    show.market_status_change_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_status_change_message
    changed = true
  end
  if show.market_update_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_update_message then
    show.market_update_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_market_update_message
    changed = true
  end
  if show.message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message then
    show.message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message_header then
    show.message_header = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_message_header
    changed = true
  end
  if show.order_update_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_order_update_message then
    show.order_update_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_order_update_message
    changed = true
  end
  if show.outright_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_outright_standing_data_message then
    show.outright_standing_data_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_outright_standing_data_message
    changed = true
  end
  if show.packet ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet then
    show.packet = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet_flags then
    show.packet_flags = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_packet_flags
    changed = true
  end
  if show.price_update_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_price_update_message then
    show.price_update_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_price_update_message
    changed = true
  end
  if show.real_time_index_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_real_time_index_message then
    show.real_time_index_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_real_time_index_message
    changed = true
  end
  if show.standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_standing_data_message then
    show.standing_data_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_standing_data_message
    changed = true
  end
  if show.start_of_day_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_day_message then
    show.start_of_day_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_snapshot_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_snapshot_message then
    show.start_of_snapshot_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_start_of_snapshot_message
    changed = true
  end
  if show.statistics_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_statistics_message then
    show.statistics_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_statistics_message
    changed = true
  end
  if show.strategy_standing_data_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_strategy_standing_data_message then
    show.strategy_standing_data_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_strategy_standing_data_message
    changed = true
  end
  if show.technical_notification_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_technical_notification_message then
    show.technical_notification_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_technical_notification_message
    changed = true
  end
  if show.timetable_message ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_timetable_message then
    show.timetable_message = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_timetable_message
    changed = true
  end
  if show.payload ~= euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_payload then
    show.payload = euronext_optiq_marketdatagateway_sbe_v4_3_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq MarketDataGateway Sbe 4.3.0
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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.snapshot_time, range, value, display)

  return offset + length, value
end

-- Size: Last Md Seq Num
size_of.last_md_seq_num = 8

-- Display: Last Md Seq Num
display.last_md_seq_num = function(value)
  return "Last Md Seq Num: "..value
end

-- Dissect: Last Md Seq Num
dissect.last_md_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.last_md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_md_seq_num, range, value, display)

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

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_of_snapshot_message, range, display)
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

  -- Last Md Seq Num: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_of_snapshot_message, range, display)
  end

  return dissect.start_of_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Size: Security Condition
size_of.security_condition = 1

-- Display: Security Condition
display.security_condition = function(value)
  return "Security Condition: "..value
end

-- Dissect: Security Condition
dissect.security_condition = function(buffer, offset, packet, parent)
  local length = size_of.security_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_condition(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.security_condition, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.symbol_index, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.rebroadcast_indicator, range, value, display)

  return offset + length, value
end

-- Size: Md Seq Num
size_of.md_seq_num = 8

-- Display: Md Seq Num
display.md_seq_num = function(value)
  return "Md Seq Num: "..value
end

-- Dissect: Md Seq Num
dissect.md_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.md_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.md_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.md_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Instrument Suspension Message
size_of.bf_instrument_suspension_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.event_time

  index = index + size_of.security_condition

  return index
end

-- Display: Bf Instrument Suspension Message
display.bf_instrument_suspension_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bf Instrument Suspension Message
dissect.bf_instrument_suspension_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String
  index, security_condition = dissect.security_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Suspension Message
dissect.bf_instrument_suspension_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bf_instrument_suspension_message then
    local length = size_of.bf_instrument_suspension_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bf_instrument_suspension_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_instrument_suspension_message, range, display)
  end

  return dissect.bf_instrument_suspension_message_fields(buffer, offset, packet, parent)
end

-- Size: Nav Offer Price
size_of.nav_offer_price = 8

-- Display: Nav Offer Price
display.nav_offer_price = function(value)
  return "Nav Offer Price: "..value
end

-- Dissect: Nav Offer Price
dissect.nav_offer_price = function(buffer, offset, packet, parent)
  local length = size_of.nav_offer_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.nav_offer_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Nav Bid Price
size_of.nav_bid_price = 8

-- Display: Nav Bid Price
display.nav_bid_price = function(value)
  return "Nav Bid Price: "..value
end

-- Dissect: Nav Bid Price
dissect.nav_bid_price = function(buffer, offset, packet, parent)
  local length = size_of.nav_bid_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.nav_bid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Nav Price
size_of.nav_price = 8

-- Display: Nav Price
display.nav_price = function(value)
  return "Nav Price: "..value
end

-- Dissect: Nav Price
dissect.nav_price = function(buffer, offset, packet, parent)
  local length = size_of.nav_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.nav_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nav_price, range, value, display)

  return offset + length, value
end

-- Size: Mmt Modification Indicator
size_of.mmt_modification_indicator = 4

-- Display: Mmt Modification Indicator
display.mmt_modification_indicator = function(value)
  return "Mmt Modification Indicator: "..value
end

-- Dissect: Mmt Modification Indicator
dissect.mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_modification_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Transaction Id
size_of.mi_fid_transaction_id = 52

-- Display: Mi Fid Transaction Id
display.mi_fid_transaction_id = function(value)
  return "Mi Fid Transaction Id: "..value
end

-- Dissect: Mi Fid Transaction Id
dissect.mi_fid_transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_transaction_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_fid_transaction_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Bid Offer Date Time
size_of.bid_offer_date_time = 8

-- Display: Bid Offer Date Time
display.bid_offer_date_time = function(value)
  return "Bid Offer Date Time: "..value
end

-- Dissect: Bid Offer Date Time
dissect.bid_offer_date_time = function(buffer, offset, packet, parent)
  local length = size_of.bid_offer_date_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_offer_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bid_offer_date_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bfna V Message
size_of.bfna_v_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.bid_offer_date_time

  index = index + size_of.mi_fid_transaction_id

  index = index + size_of.mmt_modification_indicator

  index = index + size_of.nav_price

  index = index + size_of.event_time

  index = index + size_of.nav_bid_price

  index = index + size_of.nav_offer_price

  return index
end

-- Display: Bfna V Message
display.bfna_v_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bfna V Message
dissect.bfna_v_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer
  index, bid_offer_date_time = dissect.bid_offer_date_time(buffer, index, packet, parent)

  -- Mi Fid Transaction Id: 52 Byte Ascii String
  index, mi_fid_transaction_id = dissect.mi_fid_transaction_id(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Nav Price: 8 Byte Signed Fixed Width Integer
  index, nav_price = dissect.nav_price(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Nav Bid Price: 8 Byte Signed Fixed Width Integer
  index, nav_bid_price = dissect.nav_bid_price(buffer, index, packet, parent)

  -- Nav Offer Price: 8 Byte Signed Fixed Width Integer
  index, nav_offer_price = dissect.nav_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Bfna V Message
dissect.bfna_v_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bfna_v_message then
    local length = size_of.bfna_v_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bfna_v_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bfna_v_message, range, display)
  end

  return dissect.bfna_v_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Currency
size_of.trading_currency = 3

-- Display: Trading Currency
display.trading_currency = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
dissect.trading_currency = function(buffer, offset, packet, parent)
  local length = size_of.trading_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Size: Notional Amount Traded
size_of.notional_amount_traded = 8

-- Display: Notional Amount Traded
display.notional_amount_traded = function(value)
  return "Notional Amount Traded: "..value
end

-- Dissect: Notional Amount Traded
dissect.notional_amount_traded = function(buffer, offset, packet, parent)
  local length = size_of.notional_amount_traded
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.notional_amount_traded(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.notional_amount_traded, range, value, display)

  return offset + length, value
end

-- Size: Quantity Notation
size_of.quantity_notation = 3

-- Display: Quantity Notation
display.quantity_notation = function(value)
  return "Quantity Notation: "..value
end

-- Dissect: Quantity Notation
dissect.quantity_notation = function(buffer, offset, packet, parent)
  local length = size_of.quantity_notation
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quantity_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price Notation
size_of.mifid_price_notation = 4

-- Display: Mifid Price Notation
display.mifid_price_notation = function(value)
  return "Mifid Price Notation: "..value
end

-- Dissect: Mifid Price Notation
dissect.mifid_price_notation = function(buffer, offset, packet, parent)
  local length = size_of.mifid_price_notation
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Mmt Trading Mode
size_of.mmt_trading_mode = 1

-- Display: Mmt Trading Mode
display.mmt_trading_mode = function(value)
  return "Mmt Trading Mode: "..value
end

-- Dissect: Mmt Trading Mode
dissect.mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = size_of.mmt_trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Special Dividend Indicator
size_of.mmt_special_dividend_indicator = 4

-- Display: Mmt Special Dividend Indicator
display.mmt_special_dividend_indicator = function(value)
  return "Mmt Special Dividend Indicator: "..value
end

-- Dissect: Mmt Special Dividend Indicator
dissect.mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_special_dividend_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Benchmark Indicator
size_of.mmt_benchmark_indicator = 4

-- Display: Mmt Benchmark Indicator
display.mmt_benchmark_indicator = function(value)
  return "Mmt Benchmark Indicator: "..value
end

-- Dissect: Mmt Benchmark Indicator
dissect.mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_benchmark_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Agency Cross Trade Indicator
size_of.mmt_agency_cross_trade_indicator = 4

-- Display: Mmt Agency Cross Trade Indicator
display.mmt_agency_cross_trade_indicator = function(value)
  return "Mmt Agency Cross Trade Indicator: "..value
end

-- Dissect: Mmt Agency Cross Trade Indicator
dissect.mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_agency_cross_trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 8

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
size_of.offer_price = 8

-- Display: Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
dissect.offer_price = function(buffer, offset, packet, parent)
  local length = size_of.offer_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 8

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Trade Message
size_of.bf_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.mi_fid_transaction_id

  index = index + size_of.event_time

  index = index + size_of.bid_offer_date_time

  index = index + size_of.mmt_modification_indicator

  index = index + size_of.price

  index = index + size_of.bid_price

  index = index + size_of.offer_price

  index = index + size_of.quantity

  index = index + size_of.mmt_agency_cross_trade_indicator

  index = index + size_of.mmt_benchmark_indicator

  index = index + size_of.mmt_special_dividend_indicator

  index = index + size_of.mmt_trading_mode

  index = index + size_of.mifid_price_notation

  index = index + size_of.quantity_notation

  index = index + size_of.notional_amount_traded

  index = index + size_of.trading_currency

  return index
end

-- Display: Bf Trade Message
display.bf_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bf Trade Message
dissect.bf_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Mi Fid Transaction Id: 52 Byte Ascii String
  index, mi_fid_transaction_id = dissect.mi_fid_transaction_id(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Bid Offer Date Time: 8 Byte Unsigned Fixed Width Integer
  index, bid_offer_date_time = dissect.bid_offer_date_time(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String
  index, mmt_agency_cross_trade_indicator = dissect.mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String
  index, mmt_benchmark_indicator = dissect.mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String
  index, mmt_special_dividend_indicator = dissect.mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String
  index, mmt_trading_mode = dissect.mmt_trading_mode(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String
  index, quantity_notation = dissect.quantity_notation(buffer, index, packet, parent)

  -- Notional Amount Traded: 8 Byte Signed Fixed Width Integer
  index, notional_amount_traded = dissect.notional_amount_traded(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Trade Message
dissect.bf_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bf_trade_message then
    local length = size_of.bf_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bf_trade_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_trade_message, range, display)
  end

  return dissect.bf_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Ratio Multiplier Decimals
size_of.ratio_multiplier_decimals = 1

-- Display: Ratio Multiplier Decimals
display.ratio_multiplier_decimals = function(value)
  return "Ratio Multiplier Decimals: "..value
end

-- Dissect: Ratio Multiplier Decimals
dissect.ratio_multiplier_decimals = function(buffer, offset, packet, parent)
  local length = size_of.ratio_multiplier_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ratio_multiplier_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ratio_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Size: Amount Decimals
size_of.amount_decimals = 1

-- Display: Amount Decimals
display.amount_decimals = function(value)
  return "Amount Decimals: "..value
end

-- Dissect: Amount Decimals
dissect.amount_decimals = function(buffer, offset, packet, parent)
  local length = size_of.amount_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.amount_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.amount_decimals, range, value, display)

  return offset + length, value
end

-- Size: Quantity Decimals
size_of.quantity_decimals = 1

-- Display: Quantity Decimals
display.quantity_decimals = function(value)
  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
dissect.quantity_decimals = function(buffer, offset, packet, parent)
  local length = size_of.quantity_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quantity_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Index Level Decimals
size_of.price_index_level_decimals = 1

-- Display: Price Index Level Decimals
display.price_index_level_decimals = function(value)
  return "Price Index Level Decimals: "..value
end

-- Dissect: Price Index Level Decimals
dissect.price_index_level_decimals = function(buffer, offset, packet, parent)
  local length = size_of.price_index_level_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_index_level_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_index_level_decimals, range, value, display)

  return offset + length, value
end

-- Size: Instrument Category
size_of.instrument_category = 1

-- Display: Instrument Category
display.instrument_category = function(value)
  return "Instrument Category: "..value
end

-- Dissect: Instrument Category
dissect.instrument_category = function(buffer, offset, packet, parent)
  local length = size_of.instrument_category
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instrument_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_category, range, value, display)

  return offset + length, value
end

-- Size: Minimum Amount
size_of.minimum_amount = 8

-- Display: Minimum Amount
display.minimum_amount = function(value)
  return "Minimum Amount: "..value
end

-- Dissect: Minimum Amount
dissect.minimum_amount = function(buffer, offset, packet, parent)
  local length = size_of.minimum_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.minimum_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.minimum_amount, range, value, display)

  return offset + length, value
end

-- Size: Payment Frequency
size_of.payment_frequency = 1

-- Display: Payment Frequency
display.payment_frequency = function(value)
  return "Payment Frequency: "..value
end

-- Dissect: Payment Frequency
dissect.payment_frequency = function(buffer, offset, packet, parent)
  local length = size_of.payment_frequency
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.payment_frequency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Size: Cfi
size_of.cfi = 6

-- Display: Cfi
display.cfi = function(value)
  return "Cfi: "..value
end

-- Dissect: Cfi
dissect.cfi = function(buffer, offset, packet, parent)
  local length = size_of.cfi
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cfi(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.cfi, range, value, display)

  return offset + length, value
end

-- Size: Issuing Country
size_of.issuing_country = 3

-- Display: Issuing Country
display.issuing_country = function(value)
  return "Issuing Country: "..value
end

-- Dissect: Issuing Country
dissect.issuing_country = function(buffer, offset, packet, parent)
  local length = size_of.issuing_country
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.issuing_country(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issuing_country, range, value, display)

  return offset + length, value
end

-- Size: Issue Date
size_of.issue_date = 2

-- Display: Issue Date
display.issue_date = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
dissect.issue_date = function(buffer, offset, packet, parent)
  local length = size_of.issue_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.issue_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Size: Gross Dividend In Euros
size_of.gross_dividend_in_euros = 8

-- Display: Gross Dividend In Euros
display.gross_dividend_in_euros = function(value)
  return "Gross Dividend In Euros: "..value
end

-- Dissect: Gross Dividend In Euros
dissect.gross_dividend_in_euros = function(buffer, offset, packet, parent)
  local length = size_of.gross_dividend_in_euros
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.gross_dividend_in_euros(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_dividend_in_euros, range, value, display)

  return offset + length, value
end

-- Size: Next Meeting
size_of.next_meeting = 8

-- Display: Next Meeting
display.next_meeting = function(value)
  return "Next Meeting: "..value
end

-- Dissect: Next Meeting
dissect.next_meeting = function(buffer, offset, packet, parent)
  local length = size_of.next_meeting
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.next_meeting(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.next_meeting, range, value, display)

  return offset + length, value
end

-- Size: Tax Description Attaching To A Dividend
size_of.tax_description_attaching_to_a_dividend = 1

-- Display: Tax Description Attaching To A Dividend
display.tax_description_attaching_to_a_dividend = function(value)
  return "Tax Description Attaching To A Dividend: "..value
end

-- Dissect: Tax Description Attaching To A Dividend
dissect.tax_description_attaching_to_a_dividend = function(buffer, offset, packet, parent)
  local length = size_of.tax_description_attaching_to_a_dividend
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tax_description_attaching_to_a_dividend(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.tax_description_attaching_to_a_dividend, range, value, display)

  return offset + length, value
end

-- Size: Dividend Payment Date
size_of.dividend_payment_date = 2

-- Display: Dividend Payment Date
display.dividend_payment_date = function(value)
  return "Dividend Payment Date: "..value
end

-- Dissect: Dividend Payment Date
dissect.dividend_payment_date = function(buffer, offset, packet, parent)
  local length = size_of.dividend_payment_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dividend_payment_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_payment_date, range, value, display)

  return offset + length, value
end

-- Size: Ex Dividend Date
size_of.ex_dividend_date = 2

-- Display: Ex Dividend Date
display.ex_dividend_date = function(value)
  return "Ex Dividend Date: "..value
end

-- Dissect: Ex Dividend Date
dissect.ex_dividend_date = function(buffer, offset, packet, parent)
  local length = size_of.ex_dividend_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ex_dividend_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ex_dividend_date, range, value, display)

  return offset + length, value
end

-- Size: Dividend Rate
size_of.dividend_rate = 8

-- Display: Dividend Rate
display.dividend_rate = function(value)
  return "Dividend Rate: "..value
end

-- Dissect: Dividend Rate
dissect.dividend_rate = function(buffer, offset, packet, parent)
  local length = size_of.dividend_rate
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.dividend_rate(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_rate, range, value, display)

  return offset + length, value
end

-- Size: Dividend Record Date
size_of.dividend_record_date = 2

-- Display: Dividend Record Date
display.dividend_record_date = function(value)
  return "Dividend Record Date: "..value
end

-- Dissect: Dividend Record Date
dissect.dividend_record_date = function(buffer, offset, packet, parent)
  local length = size_of.dividend_record_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dividend_record_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_record_date, range, value, display)

  return offset + length, value
end

-- Size: Dividend Currency
size_of.dividend_currency = 3

-- Display: Dividend Currency
display.dividend_currency = function(value)
  return "Dividend Currency: "..value
end

-- Dissect: Dividend Currency
dissect.dividend_currency = function(buffer, offset, packet, parent)
  local length = size_of.dividend_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.dividend_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dividend_currency, range, value, display)

  return offset + length, value
end

-- Size: Gross Dividend Payable Per Unit
size_of.gross_dividend_payable_per_unit = 8

-- Display: Gross Dividend Payable Per Unit
display.gross_dividend_payable_per_unit = function(value)
  return "Gross Dividend Payable Per Unit: "..value
end

-- Dissect: Gross Dividend Payable Per Unit
dissect.gross_dividend_payable_per_unit = function(buffer, offset, packet, parent)
  local length = size_of.gross_dividend_payable_per_unit
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.gross_dividend_payable_per_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_dividend_payable_per_unit, range, value, display)

  return offset + length, value
end

-- Size: Mic
size_of.mic = 4

-- Display: Mic
display.mic = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
dissect.mic = function(buffer, offset, packet, parent)
  local length = size_of.mic
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mic, range, value, display)

  return offset + length, value
end

-- Size: Closing Price
size_of.closing_price = 8

-- Display: Closing Price
display.closing_price = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
dissect.closing_price = function(buffer, offset, packet, parent)
  local length = size_of.closing_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.closing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
size_of.maturity_date = 8

-- Display: Maturity Date
display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Coupon
size_of.coupon = 8

-- Display: Coupon
display.coupon = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
dissect.coupon = function(buffer, offset, packet, parent)
  local length = size_of.coupon
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.coupon(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.coupon, range, value, display)

  return offset + length, value
end

-- Size: Gross Of Cdsc Indicator
size_of.gross_of_cdsc_indicator = 1

-- Display: Gross Of Cdsc Indicator
display.gross_of_cdsc_indicator = function(value)
  return "Gross Of Cdsc Indicator: "..value
end

-- Dissect: Gross Of Cdsc Indicator
dissect.gross_of_cdsc_indicator = function(buffer, offset, packet, parent)
  local length = size_of.gross_of_cdsc_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.gross_of_cdsc_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.gross_of_cdsc_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Nav Price
size_of.last_nav_price = 8

-- Display: Last Nav Price
display.last_nav_price = function(value)
  return "Last Nav Price: "..value
end

-- Dissect: Last Nav Price
dissect.last_nav_price = function(buffer, offset, packet, parent)
  local length = size_of.last_nav_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_nav_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_nav_price, range, value, display)

  return offset + length, value
end

-- Size: Opened Closed Fund
size_of.opened_closed_fund = 1

-- Display: Opened Closed Fund
display.opened_closed_fund = function(value)
  return "Opened Closed Fund: "..value
end

-- Dissect: Opened Closed Fund
dissect.opened_closed_fund = function(buffer, offset, packet, parent)
  local length = size_of.opened_closed_fund
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opened_closed_fund(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opened_closed_fund, range, value, display)

  return offset + length, value
end

-- Size: Share Amount In Issue
size_of.share_amount_in_issue = 8

-- Display: Share Amount In Issue
display.share_amount_in_issue = function(value)
  return "Share Amount In Issue: "..value
end

-- Dissect: Share Amount In Issue
dissect.share_amount_in_issue = function(buffer, offset, packet, parent)
  local length = size_of.share_amount_in_issue
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.share_amount_in_issue(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.share_amount_in_issue, range, value, display)

  return offset + length, value
end

-- Size: Date Of Initial Listing
size_of.date_of_initial_listing = 2

-- Display: Date Of Initial Listing
display.date_of_initial_listing = function(value)
  return "Date Of Initial Listing: "..value
end

-- Dissect: Date Of Initial Listing
dissect.date_of_initial_listing = function(buffer, offset, packet, parent)
  local length = size_of.date_of_initial_listing
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.date_of_initial_listing(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.date_of_initial_listing, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Long Instrument Name
size_of.long_instrument_name = 250

-- Display: Long Instrument Name
display.long_instrument_name = function(value)
  return "Long Instrument Name: "..value
end

-- Dissect: Long Instrument Name
dissect.long_instrument_name = function(buffer, offset, packet, parent)
  local length = size_of.long_instrument_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_instrument_name, range, value, display)

  return offset + length, value
end

-- Size: Long Issuer Name
size_of.long_issuer_name = 250

-- Display: Long Issuer Name
display.long_issuer_name = function(value)
  return "Long Issuer Name: "..value
end

-- Dissect: Long Issuer Name
dissect.long_issuer_name = function(buffer, offset, packet, parent)
  local length = size_of.long_issuer_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_issuer_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_issuer_name, range, value, display)

  return offset + length, value
end

-- Size: Sedol Code
size_of.sedol_code = 7

-- Display: Sedol Code
display.sedol_code = function(value)
  return "Sedol Code: "..value
end

-- Dissect: Sedol Code
dissect.sedol_code = function(buffer, offset, packet, parent)
  local length = size_of.sedol_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sedol_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.sedol_code, range, value, display)

  return offset + length, value
end

-- Size: Isin Code
size_of.isin_code = 12

-- Display: Isin Code
display.isin_code = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
dissect.isin_code = function(buffer, offset, packet, parent)
  local length = size_of.isin_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Size: Optiq Segment
size_of.optiq_segment = 1

-- Display: Optiq Segment
display.optiq_segment = function(value)
  return "Optiq Segment: "..value
end

-- Dissect: Optiq Segment
dissect.optiq_segment = function(buffer, offset, packet, parent)
  local length = size_of.optiq_segment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.optiq_segment(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.optiq_segment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bf Instrument Reference Message
size_of.bf_instrument_reference_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  index = index + size_of.optiq_segment

  index = index + size_of.isin_code

  index = index + size_of.sedol_code

  index = index + size_of.long_issuer_name

  index = index + size_of.long_instrument_name

  index = index + size_of.currency

  index = index + size_of.date_of_initial_listing

  index = index + size_of.share_amount_in_issue

  index = index + size_of.opened_closed_fund

  index = index + size_of.last_nav_price

  index = index + size_of.gross_of_cdsc_indicator

  index = index + size_of.coupon

  index = index + size_of.maturity_date

  index = index + size_of.closing_price

  index = index + size_of.mic

  index = index + size_of.gross_dividend_payable_per_unit

  index = index + size_of.dividend_currency

  index = index + size_of.dividend_record_date

  index = index + size_of.dividend_rate

  index = index + size_of.ex_dividend_date

  index = index + size_of.dividend_payment_date

  index = index + size_of.tax_description_attaching_to_a_dividend

  index = index + size_of.next_meeting

  index = index + size_of.gross_dividend_in_euros

  index = index + size_of.issue_date

  index = index + size_of.issuing_country

  index = index + size_of.cfi

  index = index + size_of.payment_frequency

  index = index + size_of.minimum_amount

  index = index + size_of.instrument_category

  index = index + size_of.security_condition

  index = index + size_of.mifid_price_notation

  index = index + size_of.price_index_level_decimals

  index = index + size_of.quantity_decimals

  index = index + size_of.amount_decimals

  index = index + size_of.ratio_multiplier_decimals

  return index
end

-- Display: Bf Instrument Reference Message
display.bf_instrument_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bf Instrument Reference Message
dissect.bf_instrument_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer
  index, optiq_segment = dissect.optiq_segment(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = dissect.isin_code(buffer, index, packet, parent)

  -- Sedol Code: 7 Byte Ascii String
  index, sedol_code = dissect.sedol_code(buffer, index, packet, parent)

  -- Long Issuer Name: 250 Byte Ascii String
  index, long_issuer_name = dissect.long_issuer_name(buffer, index, packet, parent)

  -- Long Instrument Name: 250 Byte Ascii String
  index, long_instrument_name = dissect.long_instrument_name(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Date Of Initial Listing: 2 Byte Unsigned Fixed Width Integer
  index, date_of_initial_listing = dissect.date_of_initial_listing(buffer, index, packet, parent)

  -- Share Amount In Issue: 8 Byte Signed Fixed Width Integer
  index, share_amount_in_issue = dissect.share_amount_in_issue(buffer, index, packet, parent)

  -- Opened Closed Fund: 1 Byte Ascii String
  index, opened_closed_fund = dissect.opened_closed_fund(buffer, index, packet, parent)

  -- Last Nav Price: 8 Byte Signed Fixed Width Integer
  index, last_nav_price = dissect.last_nav_price(buffer, index, packet, parent)

  -- Gross Of Cdsc Indicator: 1 Byte Ascii String
  index, gross_of_cdsc_indicator = dissect.gross_of_cdsc_indicator(buffer, index, packet, parent)

  -- Coupon: 8 Byte Signed Fixed Width Integer
  index, coupon = dissect.coupon(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Closing Price: 8 Byte Signed Fixed Width Integer
  index, closing_price = dissect.closing_price(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Gross Dividend Payable Per Unit: 8 Byte Signed Fixed Width Integer
  index, gross_dividend_payable_per_unit = dissect.gross_dividend_payable_per_unit(buffer, index, packet, parent)

  -- Dividend Currency: 3 Byte Ascii String
  index, dividend_currency = dissect.dividend_currency(buffer, index, packet, parent)

  -- Dividend Record Date: 2 Byte Unsigned Fixed Width Integer
  index, dividend_record_date = dissect.dividend_record_date(buffer, index, packet, parent)

  -- Dividend Rate: 8 Byte Unsigned Fixed Width Integer
  index, dividend_rate = dissect.dividend_rate(buffer, index, packet, parent)

  -- Ex Dividend Date: 2 Byte Unsigned Fixed Width Integer
  index, ex_dividend_date = dissect.ex_dividend_date(buffer, index, packet, parent)

  -- Dividend Payment Date: 2 Byte Unsigned Fixed Width Integer
  index, dividend_payment_date = dissect.dividend_payment_date(buffer, index, packet, parent)

  -- Tax Description Attaching To A Dividend: 1 Byte Ascii String
  index, tax_description_attaching_to_a_dividend = dissect.tax_description_attaching_to_a_dividend(buffer, index, packet, parent)

  -- Next Meeting: 8 Byte Ascii String
  index, next_meeting = dissect.next_meeting(buffer, index, packet, parent)

  -- Gross Dividend In Euros: 8 Byte Signed Fixed Width Integer
  index, gross_dividend_in_euros = dissect.gross_dividend_in_euros(buffer, index, packet, parent)

  -- Issue Date: 2 Byte Unsigned Fixed Width Integer
  index, issue_date = dissect.issue_date(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String
  index, issuing_country = dissect.issuing_country(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Payment Frequency: 1 Byte Unsigned Fixed Width Integer
  index, payment_frequency = dissect.payment_frequency(buffer, index, packet, parent)

  -- Minimum Amount: 8 Byte Signed Fixed Width Integer
  index, minimum_amount = dissect.minimum_amount(buffer, index, packet, parent)

  -- Instrument Category: 1 Byte Unsigned Fixed Width Integer
  index, instrument_category = dissect.instrument_category(buffer, index, packet, parent)

  -- Security Condition: 1 Byte Ascii String
  index, security_condition = dissect.security_condition(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Price Index Level Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_index_level_decimals = dissect.price_index_level_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer
  index, quantity_decimals = dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer
  index, amount_decimals = dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer
  index, ratio_multiplier_decimals = dissect.ratio_multiplier_decimals(buffer, index, packet, parent)

  return index
end

-- Dissect: Bf Instrument Reference Message
dissect.bf_instrument_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bf_instrument_reference_message then
    local length = size_of.bf_instrument_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bf_instrument_reference_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.bf_instrument_reference_message, range, display)
  end

  return dissect.bf_instrument_reference_message_fields(buffer, offset, packet, parent)
end

-- Size: Long Trade Reference
size_of.long_trade_reference = 52

-- Display: Long Trade Reference
display.long_trade_reference = function(value)
  return "Long Trade Reference: "..value
end

-- Dissect: Long Trade Reference
dissect.long_trade_reference = function(buffer, offset, packet, parent)
  local length = size_of.long_trade_reference
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_trade_reference(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_trade_reference, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Emission Allowance Type
size_of.mi_fid_emission_allowance_type = 4

-- Display: Mi Fid Emission Allowance Type
display.mi_fid_emission_allowance_type = function(value)
  return "Mi Fid Emission Allowance Type: "..value
end

-- Dissect: Mi Fid Emission Allowance Type
dissect.mi_fid_emission_allowance_type = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_emission_allowance_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_fid_emission_allowance_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Size: Venue
size_of.venue = 11

-- Display: Venue
display.venue = function(value)
  return "Venue: "..value
end

-- Dissect: Venue
dissect.venue = function(buffer, offset, packet, parent)
  local length = size_of.venue
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.venue(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.venue, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier Decimals
size_of.price_multiplier_decimals = 1

-- Display: Price Multiplier Decimals
display.price_multiplier_decimals = function(value)
  return "Price Multiplier Decimals: "..value
end

-- Dissect: Price Multiplier Decimals
dissect.price_multiplier_decimals = function(buffer, offset, packet, parent)
  local length = size_of.price_multiplier_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_multiplier_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_multiplier_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Multiplier
size_of.price_multiplier = 4

-- Display: Price Multiplier
display.price_multiplier = function(value)
  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
dissect.price_multiplier = function(buffer, offset, packet, parent)
  local length = size_of.price_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_multiplier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Original Report Timestamp
size_of.original_report_timestamp = 8

-- Display: Original Report Timestamp
display.original_report_timestamp = function(value)
  return "Original Report Timestamp: "..value
end

-- Dissect: Original Report Timestamp
dissect.original_report_timestamp = function(buffer, offset, packet, parent)
  local length = size_of.original_report_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.original_report_timestamp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.original_report_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trade Reference
size_of.trade_reference = 30

-- Display: Trade Reference
display.trade_reference = function(value)
  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
dissect.trade_reference = function(buffer, offset, packet, parent)
  local length = size_of.trade_reference
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_reference(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Duplicative Indicator
size_of.efficient_mmt_duplicative_indicator = 1

-- Display: Efficient Mmt Duplicative Indicator
display.efficient_mmt_duplicative_indicator = function(value)
  return "Efficient Mmt Duplicative Indicator: "..value
end

-- Dissect: Efficient Mmt Duplicative Indicator
dissect.efficient_mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_duplicative_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Post Trade Deferral
size_of.efficient_mmt_post_trade_deferral = 1

-- Display: Efficient Mmt Post Trade Deferral
display.efficient_mmt_post_trade_deferral = function(value)
  return "Efficient Mmt Post Trade Deferral: "..value
end

-- Dissect: Efficient Mmt Post Trade Deferral
dissect.efficient_mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_post_trade_deferral
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Publication Mode
size_of.efficient_mmt_publication_mode = 1

-- Display: Efficient Mmt Publication Mode
display.efficient_mmt_publication_mode = function(value)
  return "Efficient Mmt Publication Mode: "..value
end

-- Dissect: Efficient Mmt Publication Mode
dissect.efficient_mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_publication_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Algorithmic Indicator
size_of.efficient_mmt_algorithmic_indicator = 1

-- Display: Efficient Mmt Algorithmic Indicator
display.efficient_mmt_algorithmic_indicator = function(value)
  return "Efficient Mmt Algorithmic Indicator: "..value
end

-- Dissect: Efficient Mmt Algorithmic Indicator
dissect.efficient_mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_algorithmic_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Contributionto Price
size_of.efficient_mmt_contributionto_price = 1

-- Display: Efficient Mmt Contributionto Price
display.efficient_mmt_contributionto_price = function(value)
  return "Efficient Mmt Contributionto Price: "..value
end

-- Dissect: Efficient Mmt Contributionto Price
dissect.efficient_mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_contributionto_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Off Book Automated Indicator
size_of.efficient_mmt_off_book_automated_indicator = 1

-- Display: Efficient Mmt Off Book Automated Indicator
display.efficient_mmt_off_book_automated_indicator = function(value)
  return "Efficient Mmt Off Book Automated Indicator: "..value
end

-- Dissect: Efficient Mmt Off Book Automated Indicator
dissect.efficient_mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_off_book_automated_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Special Dividend Indicator
size_of.efficient_mmt_special_dividend_indicator = 1

-- Display: Efficient Mmt Special Dividend Indicator
display.efficient_mmt_special_dividend_indicator = function(value)
  return "Efficient Mmt Special Dividend Indicator: "..value
end

-- Dissect: Efficient Mmt Special Dividend Indicator
dissect.efficient_mmt_special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_special_dividend_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Benchmark Indicator
size_of.efficient_mmt_benchmark_indicator = 1

-- Display: Efficient Mmt Benchmark Indicator
display.efficient_mmt_benchmark_indicator = function(value)
  return "Efficient Mmt Benchmark Indicator: "..value
end

-- Dissect: Efficient Mmt Benchmark Indicator
dissect.efficient_mmt_benchmark_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_benchmark_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Modification Indicator
size_of.efficient_mmt_modification_indicator = 1

-- Display: Efficient Mmt Modification Indicator
display.efficient_mmt_modification_indicator = function(value)
  return "Efficient Mmt Modification Indicator: "..value
end

-- Dissect: Efficient Mmt Modification Indicator
dissect.efficient_mmt_modification_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_modification_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_modification_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Agency Cross Trade Indicator
size_of.efficient_mmt_agency_cross_trade_indicator = 1

-- Display: Efficient Mmt Agency Cross Trade Indicator
display.efficient_mmt_agency_cross_trade_indicator = function(value)
  return "Efficient Mmt Agency Cross Trade Indicator: "..value
end

-- Dissect: Efficient Mmt Agency Cross Trade Indicator
dissect.efficient_mmt_agency_cross_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_agency_cross_trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_agency_cross_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Negotiation Indicator
size_of.efficient_mmt_negotiation_indicator = 1

-- Display: Efficient Mmt Negotiation Indicator
display.efficient_mmt_negotiation_indicator = function(value)
  return "Efficient Mmt Negotiation Indicator: "..value
end

-- Dissect: Efficient Mmt Negotiation Indicator
dissect.efficient_mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_negotiation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Transaction Category
size_of.efficient_mmt_transaction_category = 1

-- Display: Efficient Mmt Transaction Category
display.efficient_mmt_transaction_category = function(value)
  return "Efficient Mmt Transaction Category: "..value
end

-- Dissect: Efficient Mmt Transaction Category
dissect.efficient_mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Trading Mode
size_of.efficient_mmt_trading_mode = 1

-- Display: Efficient Mmt Trading Mode
display.efficient_mmt_trading_mode = function(value)
  return "Efficient Mmt Trading Mode: "..value
end

-- Dissect: Efficient Mmt Trading Mode
dissect.efficient_mmt_trading_mode = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.efficient_mmt_trading_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Efficient Mmt Market Mechanism
size_of.efficient_mmt_market_mechanism = 1

-- Display: Efficient Mmt Market Mechanism
display.efficient_mmt_market_mechanism = function(value)
  return "Efficient Mmt Market Mechanism: "..value
end

-- Dissect: Efficient Mmt Market Mechanism
dissect.efficient_mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = size_of.efficient_mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.efficient_mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.efficient_mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Clearing Flag
size_of.mi_fid_clearing_flag = 5

-- Display: Mi Fid Clearing Flag
display.mi_fid_clearing_flag = function(value)
  return "Mi Fid Clearing Flag: "..value
end

-- Dissect: Mi Fid Clearing Flag
dissect.mi_fid_clearing_flag = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_clearing_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_fid_clearing_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_clearing_flag, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
size_of.notional_currency = 3

-- Display: Notional Currency
display.notional_currency = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = size_of.notional_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Notional Amount
size_of.mi_fid_notional_amount = 20

-- Display: Mi Fid Notional Amount
display.mi_fid_notional_amount = function(value)
  return "Mi Fid Notional Amount: "..value
end

-- Dissect: Mi Fid Notional Amount
dissect.mi_fid_notional_amount = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_notional_amount
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_fid_notional_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity Measurement Unit
size_of.mifid_quantity_measurement_unit = 20

-- Display: Mifid Quantity Measurement Unit
display.mifid_quantity_measurement_unit = function(value)
  return "Mifid Quantity Measurement Unit: "..value
end

-- Dissect: Mifid Quantity Measurement Unit
dissect.mifid_quantity_measurement_unit = function(buffer, offset, packet, parent)
  local length = size_of.mifid_quantity_measurement_unit
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_quantity_measurement_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_quantity_measurement_unit, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Qtyin Msrmt Unit Notation
size_of.mi_fid_qtyin_msrmt_unit_notation = 25

-- Display: Mi Fid Qtyin Msrmt Unit Notation
display.mi_fid_qtyin_msrmt_unit_notation = function(value)
  return "Mi Fid Qtyin Msrmt Unit Notation: "..value
end

-- Dissect: Mi Fid Qtyin Msrmt Unit Notation
dissect.mi_fid_qtyin_msrmt_unit_notation = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_qtyin_msrmt_unit_notation
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_fid_qtyin_msrmt_unit_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mi_fid_qtyin_msrmt_unit_notation, range, value, display)

  return offset + length, value
end

-- Size: Mifid Currency
size_of.mifid_currency = 3

-- Display: Mifid Currency
display.mifid_currency = function(value)
  return "Mifid Currency: "..value
end

-- Dissect: Mifid Currency
dissect.mifid_currency = function(buffer, offset, packet, parent)
  local length = size_of.mifid_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_currency, range, value, display)

  return offset + length, value
end

-- Size: Mifid Quantity
size_of.mifid_quantity = 20

-- Display: Mifid Quantity
display.mifid_quantity = function(value)
  return "Mifid Quantity: "..value
end

-- Dissect: Mifid Quantity
dissect.mifid_quantity = function(buffer, offset, packet, parent)
  local length = size_of.mifid_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Mifid Price
size_of.mifid_price = 20

-- Display: Mifid Price
display.mifid_price = function(value)
  return "Mifid Price: "..value
end

-- Dissect: Mifid Price
dissect.mifid_price = function(buffer, offset, packet, parent)
  local length = size_of.mifid_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_price, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id
size_of.mifid_instrument_id = 12

-- Display: Mifid Instrument Id
display.mifid_instrument_id = function(value)
  return "Mifid Instrument Id: "..value
end

-- Dissect: Mifid Instrument Id
dissect.mifid_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.mifid_instrument_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Mifid Instrument Id Type
size_of.mifid_instrument_id_type = 4

-- Display: Mifid Instrument Id Type
display.mifid_instrument_id_type = function(value)
  return "Mifid Instrument Id Type: "..value
end

-- Dissect: Mifid Instrument Id Type
dissect.mifid_instrument_id_type = function(buffer, offset, packet, parent)
  local length = size_of.mifid_instrument_id_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_instrument_id_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_instrument_id_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
size_of.trade_type = 1

-- Display: Trade Type
display.trade_type = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
dissect.trade_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Size: Publication Date Time
size_of.publication_date_time = 27

-- Display: Publication Date Time
display.publication_date_time = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
dissect.publication_date_time = function(buffer, offset, packet, parent)
  local length = size_of.publication_date_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.publication_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Size: Trading Date Time
size_of.trading_date_time = 27

-- Display: Trading Date Time
display.trading_date_time = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
dissect.trading_date_time = function(buffer, offset, packet, parent)
  local length = size_of.trading_date_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_date_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Size: Emm
size_of.emm = 1

-- Display: Emm
display.emm = function(value)
  return "Emm: "..value
end

-- Dissect: Emm
dissect.emm = function(buffer, offset, packet, parent)
  local length = size_of.emm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.emm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.emm, range, value, display)

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

  index = index + size_of.long_trade_reference

  return index
end

-- Display: Apa Full Trade Information Message
display.apa_full_trade_information_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Apa Full Trade Information Message
dissect.apa_full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mi Fid Transaction Id: 52 Byte Ascii String
  index, mi_fid_transaction_id = dissect.mi_fid_transaction_id(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String
  index, mifid_price = dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String
  index, mifid_currency = dissect.mifid_currency(buffer, index, packet, parent)

  -- Mi Fid Qtyin Msrmt Unit Notation: 25 Byte Ascii String
  index, mi_fid_qtyin_msrmt_unit_notation = dissect.mi_fid_qtyin_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String
  index, mifid_quantity_measurement_unit = dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mi Fid Notional Amount: 20 Byte Ascii String
  index, mi_fid_notional_amount = dissect.mi_fid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Mi Fid Clearing Flag: 5 Byte Ascii String
  index, mi_fid_clearing_flag = dissect.mi_fid_clearing_flag(buffer, index, packet, parent)

  -- Efficient Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer
  index, efficient_mmt_market_mechanism = dissect.efficient_mmt_market_mechanism(buffer, index, packet, parent)

  -- Efficient Mmt Trading Mode: 1 Byte Ascii String
  index, efficient_mmt_trading_mode = dissect.efficient_mmt_trading_mode(buffer, index, packet, parent)

  -- Efficient Mmt Transaction Category: 1 Byte Ascii String
  index, efficient_mmt_transaction_category = dissect.efficient_mmt_transaction_category(buffer, index, packet, parent)

  -- Efficient Mmt Negotiation Indicator: 1 Byte Ascii String
  index, efficient_mmt_negotiation_indicator = dissect.efficient_mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Agency Cross Trade Indicator: 1 Byte Ascii String
  index, efficient_mmt_agency_cross_trade_indicator = dissect.efficient_mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Modification Indicator: 1 Byte Ascii String
  index, efficient_mmt_modification_indicator = dissect.efficient_mmt_modification_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Benchmark Indicator: 1 Byte Ascii String
  index, efficient_mmt_benchmark_indicator = dissect.efficient_mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Special Dividend Indicator: 1 Byte Ascii String
  index, efficient_mmt_special_dividend_indicator = dissect.efficient_mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Off Book Automated Indicator: 1 Byte Ascii String
  index, efficient_mmt_off_book_automated_indicator = dissect.efficient_mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Contributionto Price: 1 Byte Ascii String
  index, efficient_mmt_contributionto_price = dissect.efficient_mmt_contributionto_price(buffer, index, packet, parent)

  -- Efficient Mmt Algorithmic Indicator: 1 Byte Ascii String
  index, efficient_mmt_algorithmic_indicator = dissect.efficient_mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Efficient Mmt Publication Mode: 1 Byte Ascii String
  index, efficient_mmt_publication_mode = dissect.efficient_mmt_publication_mode(buffer, index, packet, parent)

  -- Efficient Mmt Post Trade Deferral: 1 Byte Ascii String
  index, efficient_mmt_post_trade_deferral = dissect.efficient_mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Efficient Mmt Duplicative Indicator: 1 Byte Ascii String
  index, efficient_mmt_duplicative_indicator = dissect.efficient_mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String
  index, trade_reference = dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, original_report_timestamp = dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = dissect.venue(buffer, index, packet, parent)

  -- Mi Fid Emission Allowance Type: 4 Byte Ascii String
  index, mi_fid_emission_allowance_type = dissect.mi_fid_emission_allowance_type(buffer, index, packet, parent)

  -- Long Trade Reference: 52 Byte Ascii String
  index, long_trade_reference = dissect.long_trade_reference(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Full Trade Information Message
dissect.apa_full_trade_information_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.apa_full_trade_information_message then
    local length = size_of.apa_full_trade_information_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.apa_full_trade_information_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_full_trade_information_message, range, display)
  end

  return dissect.apa_full_trade_information_message_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Method
size_of.settlement_method = 1

-- Display: Settlement Method
display.settlement_method = function(value)
  return "Settlement Method: "..value
end

-- Dissect: Settlement Method
dissect.settlement_method = function(buffer, offset, packet, parent)
  local length = size_of.settlement_method
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_method(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_method, range, value, display)

  return offset + length, value
end

-- Size: Expiry Date
size_of.expiry_date = 8

-- Display: Expiry Date
display.expiry_date = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
dissect.expiry_date = function(buffer, offset, packet, parent)
  local length = size_of.expiry_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.expiry_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Size: Exer Style
size_of.exer_style = 1

-- Display: Exer Style
display.exer_style = function(value)
  return "Exer Style: "..value
end

-- Dissect: Exer Style
dissect.exer_style = function(buffer, offset, packet, parent)
  local length = size_of.exer_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exer_style(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.exer_style, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimals
size_of.strike_price_decimals = 1

-- Display: Strike Price Decimals
display.strike_price_decimals = function(value)
  return "Strike Price Decimals: "..value
end

-- Dissect: Strike Price Decimals
dissect.strike_price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Term
size_of.underlying_index_term = 8

-- Display: Underlying Index Term
display.underlying_index_term = function(value)
  return "Underlying Index Term: "..value
end

-- Dissect: Underlying Index Term
dissect.underlying_index_term = function(buffer, offset, packet, parent)
  local length = size_of.underlying_index_term
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_index_term(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_index_term, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index Name
size_of.underlying_index_name = 25

-- Display: Underlying Index Name
display.underlying_index_name = function(value)
  return "Underlying Index Name: "..value
end

-- Dissect: Underlying Index Name
dissect.underlying_index_name = function(buffer, offset, packet, parent)
  local length = size_of.underlying_index_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_index_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_index_name, range, value, display)

  return offset + length, value
end

-- Size: Underlying Isin Code
size_of.underlying_isin_code = 12

-- Display: Underlying Isin Code
display.underlying_isin_code = function(value)
  return "Underlying Isin Code: "..value
end

-- Dissect: Underlying Isin Code
dissect.underlying_isin_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_isin_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_isin_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_isin_code, range, value, display)

  return offset + length, value
end

-- Size: Second Notional Currency
size_of.second_notional_currency = 3

-- Display: Second Notional Currency
display.second_notional_currency = function(value)
  return "Second Notional Currency: "..value
end

-- Dissect: Second Notional Currency
dissect.second_notional_currency = function(buffer, offset, packet, parent)
  local length = size_of.second_notional_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.second_notional_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.second_notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Full Instrument Name
size_of.full_instrument_name = 102

-- Display: Full Instrument Name
display.full_instrument_name = function(value)
  return "Full Instrument Name: "..value
end

-- Dissect: Full Instrument Name
dissect.full_instrument_name = function(buffer, offset, packet, parent)
  local length = size_of.full_instrument_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.full_instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.full_instrument_name, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String
  index, full_instrument_name = dissect.full_instrument_name(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Second Notional Currency: 3 Byte Ascii String
  index, second_notional_currency = dissect.second_notional_currency(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Index Name: 25 Byte Ascii String
  index, underlying_index_name = dissect.underlying_index_name(buffer, index, packet, parent)

  -- Underlying Index Term: 8 Byte Ascii String
  index, underlying_index_term = dissect.underlying_index_term(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimals = dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer
  index, exer_style = dissect.exer_style(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Expiry Date: 8 Byte Ascii String
  index, expiry_date = dissect.expiry_date(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_standing_data_message, range, display)
  end

  return dissect.apa_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Update Type
size_of.quote_update_type = 1

-- Display: Quote Update Type
display.quote_update_type = function(value)
  return "Quote Update Type: "..value
end

-- Dissect: Quote Update Type
dissect.quote_update_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.quote_update_type, range, value, display)

  return offset + length, value
end

-- Size: Lei Code
size_of.lei_code = 20

-- Display: Lei Code
display.lei_code = function(value)
  return "Lei Code: "..value
end

-- Dissect: Lei Code
dissect.lei_code = function(buffer, offset, packet, parent)
  local length = size_of.lei_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.lei_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lei_code, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Lei Code: 20 Byte Ascii String
  index, lei_code = dissect.lei_code(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Quote Update Type: 1 Byte Unsigned Fixed Width Integer
  index, quote_update_type = dissect.quote_update_type(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.apa_quotes_message, range, display)
  end

  return dissect.apa_quotes_message_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Code
size_of.strategy_code = 1

-- Display: Strategy Code
display.strategy_code = function(value)
  return "Strategy Code: "..value
end

-- Dissect: Strategy Code
dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = size_of.strategy_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Mifid Execution Id
size_of.mifid_execution_id = 52

-- Display: Mifid Execution Id
display.mifid_execution_id = function(value)
  return "Mifid Execution Id: "..value
end

-- Dissect: Mifid Execution Id
dissect.mifid_execution_id = function(buffer, offset, packet, parent)
  local length = size_of.mifid_execution_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mifid_execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifid_execution_id, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_symbol_index, range, value, display)

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

  return index
end

-- Display: Lis Package Structure Message
display.lis_package_structure_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lis Package Structure Message
dissect.lis_package_structure_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Lis Package Structure Message
dissect.lis_package_structure_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.lis_package_structure_message then
    local length = size_of.lis_package_structure_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.lis_package_structure_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lis_package_structure_message, range, display)
  end

  return dissect.lis_package_structure_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Long Order Update Message
size_of.long_order_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  return index
end

-- Display: Long Order Update Message
display.long_order_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Order Update Message
dissect.long_order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Order Update Message
dissect.long_order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_order_update_message then
    local length = size_of.long_order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.long_order_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.long_order_update_message, range, display)
  end

  return dissect.long_order_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Unit
size_of.trading_unit = 8

-- Display: Trading Unit
display.trading_unit = function(value)
  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
dissect.trading_unit = function(buffer, offset, packet, parent)
  local length = size_of.trading_unit
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trading_unit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Index
size_of.underlying_symbol_index = 4

-- Display: Underlying Symbol Index
display.underlying_symbol_index = function(value)
  return "Underlying Symbol Index: "..value
end

-- Dissect: Underlying Symbol Index
dissect.underlying_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Underlying Derivatives Instrument Trading Code
size_of.underlying_derivatives_instrument_trading_code = 18

-- Display: Underlying Derivatives Instrument Trading Code
display.underlying_derivatives_instrument_trading_code = function(value)
  return "Underlying Derivatives Instrument Trading Code: "..value
end

-- Dissect: Underlying Derivatives Instrument Trading Code
dissect.underlying_derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_derivatives_instrument_trading_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Expiry Cycle Type
size_of.expiry_cycle_type = 1

-- Display: Expiry Cycle Type
display.expiry_cycle_type = function(value)
  return "Expiry Cycle Type: "..value
end

-- Dissect: Expiry Cycle Type
dissect.expiry_cycle_type = function(buffer, offset, packet, parent)
  local length = size_of.expiry_cycle_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expiry_cycle_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.expiry_cycle_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Type
size_of.derivatives_instrument_type = 1

-- Display: Derivatives Instrument Type
display.derivatives_instrument_type = function(value)
  return "Derivatives Instrument Type: "..value
end

-- Dissect: Derivatives Instrument Type
dissect.derivatives_instrument_type = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_instrument_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.derivatives_instrument_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Instrument Trading Code
size_of.derivatives_instrument_trading_code = 18

-- Display: Derivatives Instrument Trading Code
display.derivatives_instrument_trading_code = function(value)
  return "Derivatives Instrument Trading Code: "..value
end

-- Dissect: Derivatives Instrument Trading Code
dissect.derivatives_instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_instrument_trading_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.derivatives_instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Days To Expiry
size_of.days_to_expiry = 2

-- Display: Days To Expiry
display.days_to_expiry = function(value)
  return "Days To Expiry: "..value
end

-- Dissect: Days To Expiry
dissect.days_to_expiry = function(buffer, offset, packet, parent)
  local length = size_of.days_to_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.days_to_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.days_to_expiry, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Date
size_of.last_trading_date = 2

-- Display: Last Trading Date
display.last_trading_date = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
dissect.last_trading_date = function(buffer, offset, packet, parent)
  local length = size_of.last_trading_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
size_of.lot_size = 8

-- Display: Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local length = size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.lot_size, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_event_date, range, value, display)

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

  return index
end

-- Display: Outright Standing Data Message
display.outright_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Standing Data Message
dissect.outright_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = dissect.instrument_event_date(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = dissect.isin_code(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Last Trading Date: 2 Byte Unsigned Fixed Width Integer
  index, last_trading_date = dissect.last_trading_date(buffer, index, packet, parent)

  -- Days To Expiry: 2 Byte Unsigned Fixed Width Integer
  index, days_to_expiry = dissect.days_to_expiry(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String
  index, derivatives_instrument_trading_code = dissect.derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Derivatives Instrument Type: 1 Byte Unsigned Fixed Width Integer
  index, derivatives_instrument_type = dissect.derivatives_instrument_type(buffer, index, packet, parent)

  -- Expiry Cycle Type: 1 Byte Unsigned Fixed Width Integer
  index, expiry_cycle_type = dissect.expiry_cycle_type(buffer, index, packet, parent)

  -- Underlying Derivatives Instrument Trading Code: 18 Byte Ascii String
  index, underlying_derivatives_instrument_trading_code = dissect.underlying_derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_index = dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer
  index, trading_unit = dissect.trading_unit(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Standing Data Message
dissect.outright_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_standing_data_message then
    local length = size_of.outright_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.outright_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.outright_standing_data_message, range, display)
  end

  return dissect.outright_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Pricing Algorithm
size_of.pricing_algorithm = 1

-- Display: Pricing Algorithm
display.pricing_algorithm = function(value)
  return "Pricing Algorithm: "..value
end

-- Dissect: Pricing Algorithm
dissect.pricing_algorithm = function(buffer, offset, packet, parent)
  local length = size_of.pricing_algorithm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.pricing_algorithm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pricing_algorithm, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mifidii_liquid_flag, range, value, display)

  return offset + length, value
end

-- Size: Collar Expansion Factor
size_of.collar_expansion_factor = 1

-- Display: Collar Expansion Factor
display.collar_expansion_factor = function(value)
  return "Collar Expansion Factor: "..value
end

-- Dissect: Collar Expansion Factor
dissect.collar_expansion_factor = function(buffer, offset, packet, parent)
  local length = size_of.collar_expansion_factor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.collar_expansion_factor(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.collar_expansion_factor, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Trading Interruption
size_of.reference_price_origin_in_trading_interruption = 1

-- Display: Reference Price Origin In Trading Interruption
display.reference_price_origin_in_trading_interruption = function(value)
  return "Reference Price Origin In Trading Interruption: "..value
end

-- Dissect: Reference Price Origin In Trading Interruption
dissect.reference_price_origin_in_trading_interruption = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_trading_interruption
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_trading_interruption(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_trading_interruption, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Continuous
size_of.reference_price_origin_in_continuous = 1

-- Display: Reference Price Origin In Continuous
display.reference_price_origin_in_continuous = function(value)
  return "Reference Price Origin In Continuous: "..value
end

-- Dissect: Reference Price Origin In Continuous
dissect.reference_price_origin_in_continuous = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_continuous
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_continuous(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_continuous, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Origin In Opening Call
size_of.reference_price_origin_in_opening_call = 1

-- Display: Reference Price Origin In Opening Call
display.reference_price_origin_in_opening_call = function(value)
  return "Reference Price Origin In Opening Call: "..value
end

-- Dissect: Reference Price Origin In Opening Call
dissect.reference_price_origin_in_opening_call = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_origin_in_opening_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_price_origin_in_opening_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_price_origin_in_opening_call, range, value, display)

  return offset + length, value
end

-- Size: Derivatives Market Model
size_of.derivatives_market_model = 1

-- Display: Derivatives Market Model
display.derivatives_market_model = function(value)
  return "Derivatives Market Model: "..value
end

-- Dissect: Derivatives Market Model
dissect.derivatives_market_model = function(buffer, offset, packet, parent)
  local length = size_of.derivatives_market_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.derivatives_market_model(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.derivatives_market_model, range, value, display)

  return offset + length, value
end

-- Size: Reference Spread Table Id
size_of.reference_spread_table_id = 2

-- Display: Reference Spread Table Id
display.reference_spread_table_id = function(value)
  return "Reference Spread Table Id: "..value
end

-- Dissect: Reference Spread Table Id
dissect.reference_spread_table_id = function(buffer, offset, packet, parent)
  local length = size_of.reference_spread_table_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_spread_table_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reference_spread_table_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Policy
size_of.trading_policy = 1

-- Display: Trading Policy
display.trading_policy = function(value)
  return "Trading Policy: "..value
end

-- Dissect: Trading Policy
dissect.trading_policy = function(buffer, offset, packet, parent)
  local length = size_of.trading_policy
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_policy(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_policy, range, value, display)

  return offset + length, value
end

-- Size: Edsp Tick Size
size_of.edsp_tick_size = 8

-- Display: Edsp Tick Size
display.edsp_tick_size = function(value)
  return "Edsp Tick Size: "..value
end

-- Dissect: Edsp Tick Size
dissect.edsp_tick_size = function(buffer, offset, packet, parent)
  local length = size_of.edsp_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.edsp_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.edsp_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Settlement Tick Size
size_of.settlement_tick_size = 8

-- Display: Settlement Tick Size
display.settlement_tick_size = function(value)
  return "Settlement Tick Size: "..value
end

-- Dissect: Settlement Tick Size
dissect.settlement_tick_size = function(buffer, offset, packet, parent)
  local length = size_of.settlement_tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.settlement_tick_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_tick_size, range, value, display)

  return offset + length, value
end

-- Size: Mother Stock Isin
size_of.mother_stock_isin = 12

-- Display: Mother Stock Isin
display.mother_stock_isin = function(value)
  return "Mother Stock Isin: "..value
end

-- Dissect: Mother Stock Isin
dissect.mother_stock_isin = function(buffer, offset, packet, parent)
  local length = size_of.mother_stock_isin
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mother_stock_isin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mother_stock_isin, range, value, display)

  return offset + length, value
end

-- Size: Underlying Subtype
size_of.underlying_subtype = 1

-- Display: Underlying Subtype
display.underlying_subtype = function(value)
  return "Underlying Subtype: "..value
end

-- Dissect: Underlying Subtype
dissect.underlying_subtype = function(buffer, offset, packet, parent)
  local length = size_of.underlying_subtype
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_subtype(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_subtype, range, value, display)

  return offset + length, value
end

-- Size: Inst Unit Exp
size_of.inst_unit_exp = 1

-- Display: Inst Unit Exp
display.inst_unit_exp = function(value)
  return "Inst Unit Exp: "..value
end

-- Dissect: Inst Unit Exp
dissect.inst_unit_exp = function(buffer, offset, packet, parent)
  local length = size_of.inst_unit_exp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.inst_unit_exp(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.inst_unit_exp, range, value, display)

  return offset + length, value
end

-- Size: Contract Trading Type
size_of.contract_trading_type = 1

-- Display: Contract Trading Type
display.contract_trading_type = function(value)
  return "Contract Trading Type: "..value
end

-- Dissect: Contract Trading Type
dissect.contract_trading_type = function(buffer, offset, packet, parent)
  local length = size_of.contract_trading_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_trading_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_trading_type, range, value, display)

  return offset + length, value
end

-- Size: Mm Protections
size_of.mm_protections = 1

-- Display: Mm Protections
display.mm_protections = function(value)
  return "Mm Protections: "..value
end

-- Dissect: Mm Protections
dissect.mm_protections = function(buffer, offset, packet, parent)
  local length = size_of.mm_protections
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mm_protections(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mm_protections, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimals Ratio
size_of.strike_price_decimals_ratio = 1

-- Display: Strike Price Decimals Ratio
display.strike_price_decimals_ratio = function(value)
  return "Strike Price Decimals Ratio: "..value
end

-- Dissect: Strike Price Decimals Ratio
dissect.strike_price_decimals_ratio = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_decimals_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price_decimals_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_price_decimals_ratio, range, value, display)

  return offset + length, value
end

-- Size: Order Type Rules
size_of.order_type_rules = 2

-- Display: Order Type Rules
display.order_type_rules = function(value)
  return "Order Type Rules: "..value
end

-- Dissect: Order Type Rules
dissect.order_type_rules = function(buffer, offset, packet, parent)
  local length = size_of.order_type_rules
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_type_rules(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.order_type_rules, range, value, display)

  return offset + length, value
end

-- Size: Underlying Expiry
size_of.underlying_expiry = 4

-- Display: Underlying Expiry
display.underlying_expiry = function(value)
  return "Underlying Expiry: "..value
end

-- Dissect: Underlying Expiry
dissect.underlying_expiry = function(buffer, offset, packet, parent)
  local length = size_of.underlying_expiry
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_expiry(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_expiry, range, value, display)

  return offset + length, value
end

-- Size: Underlying Mic
size_of.underlying_mic = 4

-- Display: Underlying Mic
display.underlying_mic = function(value)
  return "Underlying Mic: "..value
end

-- Dissect: Underlying Mic
dissect.underlying_mic = function(buffer, offset, packet, parent)
  local length = size_of.underlying_mic
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_mic, range, value, display)

  return offset + length, value
end

-- Size: Product Code
size_of.product_code = 4

-- Display: Product Code
display.product_code = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
dissect.product_code = function(buffer, offset, packet, parent)
  local length = size_of.product_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.product_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.product_code, range, value, display)

  return offset + length, value
end

-- Size: Country Of Exchange
size_of.country_of_exchange = 3

-- Display: Country Of Exchange
display.country_of_exchange = function(value)
  return "Country Of Exchange: "..value
end

-- Dissect: Country Of Exchange
dissect.country_of_exchange = function(buffer, offset, packet, parent)
  local length = size_of.country_of_exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.country_of_exchange(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.country_of_exchange, range, value, display)

  return offset + length, value
end

-- Size: Main Depositary
size_of.main_depositary = 5

-- Display: Main Depositary
display.main_depositary = function(value)
  return "Main Depositary: "..value
end

-- Dissect: Main Depositary
dissect.main_depositary = function(buffer, offset, packet, parent)
  local length = size_of.main_depositary
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.main_depositary(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Size: Ratio Decimals
size_of.ratio_decimals = 1

-- Display: Ratio Decimals
display.ratio_decimals = function(value)
  return "Ratio Decimals: "..value
end

-- Dissect: Ratio Decimals
dissect.ratio_decimals = function(buffer, offset, packet, parent)
  local length = size_of.ratio_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ratio_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.ratio_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Decimals
size_of.price_decimals = 1

-- Display: Price Decimals
display.price_decimals = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
dissect.price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Underlying Type
size_of.underlying_type = 1

-- Display: Underlying Type
display.underlying_type = function(value)
  return "Underlying Type: "..value
end

-- Dissect: Underlying Type
dissect.underlying_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Type
size_of.contract_type = 1

-- Display: Contract Type
display.contract_type = function(value)
  return "Contract Type: "..value
end

-- Dissect: Contract Type
dissect.contract_type = function(buffer, offset, packet, parent)
  local length = size_of.contract_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.contract_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Name
size_of.contract_name = 60

-- Display: Contract Name
display.contract_name = function(value)
  return "Contract Name: "..value
end

-- Dissect: Contract Name
dissect.contract_name = function(buffer, offset, packet, parent)
  local length = size_of.contract_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.contract_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_name, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
  return "Exchange Code: "..value
end

-- Dissect: Exchange Code
dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Size: Contract Event Date
size_of.contract_event_date = 2

-- Display: Contract Event Date
display.contract_event_date = function(value)
  return "Contract Event Date: "..value
end

-- Dissect: Contract Event Date
dissect.contract_event_date = function(buffer, offset, packet, parent)
  local length = size_of.contract_event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_event_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_event_date, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.partition_id, range, value, display)

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

  return index
end

-- Display: Contract Standing Data Message
display.contract_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contract Standing Data Message
dissect.contract_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer
  index, optiq_segment = dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Contract Event Date: 2 Byte Unsigned Fixed Width Integer
  index, contract_event_date = dissect.contract_event_date(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String
  index, exchange_code = dissect.exchange_code(buffer, index, packet, parent)

  -- Exer Style: 1 Byte Unsigned Fixed Width Integer
  index, exer_style = dissect.exer_style(buffer, index, packet, parent)

  -- Contract Name: 60 Byte Ascii String
  index, contract_name = dissect.contract_name(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String
  index, contract_type = dissect.contract_type(buffer, index, packet, parent)

  -- Underlying Type: 1 Byte Ascii String
  index, underlying_type = dissect.underlying_type(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_decimals = dissect.price_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer
  index, quantity_decimals = dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer
  index, amount_decimals = dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer
  index, ratio_decimals = dissect.ratio_decimals(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String
  index, main_depositary = dissect.main_depositary(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String
  index, country_of_exchange = dissect.country_of_exchange(buffer, index, packet, parent)

  -- Product Code: 4 Byte Ascii String
  index, product_code = dissect.product_code(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String
  index, underlying_mic = dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Underlying Expiry: 4 Byte Unsigned Fixed Width Integer
  index, underlying_expiry = dissect.underlying_expiry(buffer, index, packet, parent)

  -- Order Type Rules: 2 Byte Unsigned Fixed Width Integer
  index, order_type_rules = dissect.order_type_rules(buffer, index, packet, parent)

  -- Settlement Method: 1 Byte Ascii String
  index, settlement_method = dissect.settlement_method(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Strike Price Decimals Ratio: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimals_ratio = dissect.strike_price_decimals_ratio(buffer, index, packet, parent)

  -- Mm Protections: 1 Byte Unsigned Fixed Width Integer
  index, mm_protections = dissect.mm_protections(buffer, index, packet, parent)

  -- Contract Trading Type: 1 Byte Unsigned Fixed Width Integer
  index, contract_trading_type = dissect.contract_trading_type(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer
  index, inst_unit_exp = dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Underlying Subtype: 1 Byte Unsigned Fixed Width Integer
  index, underlying_subtype = dissect.underlying_subtype(buffer, index, packet, parent)

  -- Mother Stock Isin: 12 Byte Ascii String
  index, mother_stock_isin = dissect.mother_stock_isin(buffer, index, packet, parent)

  -- Settlement Tick Size: 8 Byte Unsigned Fixed Width Integer
  index, settlement_tick_size = dissect.settlement_tick_size(buffer, index, packet, parent)

  -- Edsp Tick Size: 8 Byte Unsigned Fixed Width Integer
  index, edsp_tick_size = dissect.edsp_tick_size(buffer, index, packet, parent)

  -- Underlying Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_index = dissect.underlying_symbol_index(buffer, index, packet, parent)

  -- Trading Policy: 1 Byte Unsigned Fixed Width Integer
  index, trading_policy = dissect.trading_policy(buffer, index, packet, parent)

  -- Reference Spread Table Id: 2 Byte Unsigned Fixed Width Integer
  index, reference_spread_table_id = dissect.reference_spread_table_id(buffer, index, packet, parent)

  -- Derivatives Market Model: 1 Byte Unsigned Fixed Width Integer
  index, derivatives_market_model = dissect.derivatives_market_model(buffer, index, packet, parent)

  -- Trading Unit: 8 Byte Unsigned Fixed Width Integer
  index, trading_unit = dissect.trading_unit(buffer, index, packet, parent)

  -- Reference Price Origin In Opening Call: 1 Byte Unsigned Fixed Width Integer
  index, reference_price_origin_in_opening_call = dissect.reference_price_origin_in_opening_call(buffer, index, packet, parent)

  -- Reference Price Origin In Continuous: 1 Byte Unsigned Fixed Width Integer
  index, reference_price_origin_in_continuous = dissect.reference_price_origin_in_continuous(buffer, index, packet, parent)

  -- Reference Price Origin In Trading Interruption: 1 Byte Unsigned Fixed Width Integer
  index, reference_price_origin_in_trading_interruption = dissect.reference_price_origin_in_trading_interruption(buffer, index, packet, parent)

  -- Collar Expansion Factor: 1 Byte Unsigned Fixed Width Integer
  index, collar_expansion_factor = dissect.collar_expansion_factor(buffer, index, packet, parent)

  -- Mifidii Liquid Flag: 1 Byte Unsigned Fixed Width Integer
  index, mifidii_liquid_flag = dissect.mifidii_liquid_flag(buffer, index, packet, parent)

  -- Pricing Algorithm: 1 Byte Unsigned Fixed Width Integer
  index, pricing_algorithm = dissect.pricing_algorithm(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Standing Data Message
dissect.contract_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.contract_standing_data_message then
    local length = size_of.contract_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contract_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.contract_standing_data_message, range, display)
  end

  return dissect.contract_standing_data_message_fields(buffer, offset, packet, parent)
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

  return index
end

-- Display: Strategy Standing Data Message
display.strategy_standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Standing Data Message
dissect.strategy_standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Derivatives Instrument Trading Code: 18 Byte Ascii String
  index, derivatives_instrument_trading_code = dissect.derivatives_instrument_trading_code(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String
  index, exchange_code = dissect.exchange_code(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Standing Data Message
dissect.strategy_standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_standing_data_message then
    local length = size_of.strategy_standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strategy_standing_data_message, range, display)
  end

  return dissect.strategy_standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Liquidation Time
size_of.liquidation_time = 8

-- Display: Liquidation Time
display.liquidation_time = function(value)
  return "Liquidation Time: "..value
end

-- Dissect: Liquidation Time
dissect.liquidation_time = function(buffer, offset, packet, parent)
  local length = size_of.liquidation_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.liquidation_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquidation_time, range, value, display)

  return offset + length, value
end

-- Size: Liquidation Level
size_of.liquidation_level = 8

-- Display: Liquidation Level
display.liquidation_level = function(value)
  return "Liquidation Level: "..value
end

-- Dissect: Liquidation Level
dissect.liquidation_level = function(buffer, offset, packet, parent)
  local length = size_of.liquidation_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.liquidation_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquidation_level, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.low_time, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.low_level, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.high_time, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.high_level, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.prct_varfrom_prev_close, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_reference_time, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.closing_reference_level, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Time
size_of.confirmed_reference_time = 8

-- Display: Confirmed Reference Time
display.confirmed_reference_time = function(value)
  return "Confirmed Reference Time: "..value
end

-- Dissect: Confirmed Reference Time
dissect.confirmed_reference_time = function(buffer, offset, packet, parent)
  local length = size_of.confirmed_reference_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.confirmed_reference_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.confirmed_reference_time, range, value, display)

  return offset + length, value
end

-- Size: Confirmed Reference Level
size_of.confirmed_reference_level = 8

-- Display: Confirmed Reference Level
display.confirmed_reference_level = function(value)
  return "Confirmed Reference Level: "..value
end

-- Dissect: Confirmed Reference Level
dissect.confirmed_reference_level = function(buffer, offset, packet, parent)
  local length = size_of.confirmed_reference_level
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.confirmed_reference_level(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.confirmed_reference_level, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opening_time, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.opening_level, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Opening Level: 8 Byte Signed Fixed Width Integer
  index, opening_level = dissect.opening_level(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Unsigned Fixed Width Integer
  index, opening_time = dissect.opening_time(buffer, index, packet, parent)

  -- Confirmed Reference Level: 8 Byte Signed Fixed Width Integer
  index, confirmed_reference_level = dissect.confirmed_reference_level(buffer, index, packet, parent)

  -- Confirmed Reference Time: 8 Byte Unsigned Fixed Width Integer
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

  -- Liquidation Level: 8 Byte Signed Fixed Width Integer
  index, liquidation_level = dissect.liquidation_level(buffer, index, packet, parent)

  -- Liquidation Time: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_summary_message, range, display)
  end

  return dissect.index_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Statistics Message
size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.symbol_index

  return index
end

-- Display: Statistics Message
display.statistics_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Statistics Message
dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
dissect.statistics_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.statistics_message then
    local length = size_of.statistics_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.statistics_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.statistics_message, range, display)
  end

  return dissect.statistics_message_fields(buffer, offset, packet, parent)
end

-- Size: Index Price Code
size_of.index_price_code = 1

-- Display: Index Price Code
display.index_price_code = function(value)
  return "Index Price Code: "..value
end

-- Dissect: Index Price Code
dissect.index_price_code = function(buffer, offset, packet, parent)
  local length = size_of.index_price_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.index_price_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_price_code, range, value, display)

  return offset + length, value
end

-- Size: Index Level Type
size_of.index_level_type = 1

-- Display: Index Level Type
display.index_level_type = function(value)
  return "Index Level Type: "..value
end

-- Dissect: Index Level Type
dissect.index_level_type = function(buffer, offset, packet, parent)
  local length = size_of.index_level_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.index_level_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_level_type, range, value, display)

  return offset + length, value
end

-- Size: Num Traded Instruments
size_of.num_traded_instruments = 2

-- Display: Num Traded Instruments
display.num_traded_instruments = function(value)
  return "Num Traded Instruments: "..value
end

-- Dissect: Num Traded Instruments
dissect.num_traded_instruments = function(buffer, offset, packet, parent)
  local length = size_of.num_traded_instruments
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_traded_instruments(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.num_traded_instruments, range, value, display)

  return offset + length, value
end

-- Size: Pctg Of Capitalization
size_of.pctg_of_capitalization = 8

-- Display: Pctg Of Capitalization
display.pctg_of_capitalization = function(value)
  return "Pctg Of Capitalization: "..value
end

-- Dissect: Pctg Of Capitalization
dissect.pctg_of_capitalization = function(buffer, offset, packet, parent)
  local length = size_of.pctg_of_capitalization
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.pctg_of_capitalization(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pctg_of_capitalization, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.index_level, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Index Level: 8 Byte Signed Fixed Width Integer
  index, index_level = dissect.index_level(buffer, index, packet, parent)

  -- Pctg Of Capitalization: 8 Byte Unsigned Fixed Width Integer
  index, pctg_of_capitalization = dissect.pctg_of_capitalization(buffer, index, packet, parent)

  -- Prct Varfrom Prev Close: 8 Byte Signed Fixed Width Integer
  index, prct_varfrom_prev_close = dissect.prct_varfrom_prev_close(buffer, index, packet, parent)

  -- Num Traded Instruments: 2 Byte Unsigned Fixed Width Integer
  index, num_traded_instruments = dissect.num_traded_instruments(buffer, index, packet, parent)

  -- Index Level Type: 1 Byte Unsigned Fixed Width Integer
  index, index_level_type = dissect.index_level_type(buffer, index, packet, parent)

  -- Index Price Code: 1 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.real_time_index_message, range, display)
  end

  return dissect.real_time_index_message_fields(buffer, offset, packet, parent)
end

-- Size: Threshold Lis Post Trade Eod
size_of.threshold_lis_post_trade_eod = 8

-- Display: Threshold Lis Post Trade Eod
display.threshold_lis_post_trade_eod = function(value)
  return "Threshold Lis Post Trade Eod: "..value
end

-- Dissect: Threshold Lis Post Trade Eod
dissect.threshold_lis_post_trade_eod = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_eod
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_eod(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_eod, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 120mn
size_of.threshold_lis_post_trade_120mn = 8

-- Display: Threshold Lis Post Trade 120mn
display.threshold_lis_post_trade_120mn = function(value)
  return "Threshold Lis Post Trade 120mn: "..value
end

-- Dissect: Threshold Lis Post Trade 120mn
dissect.threshold_lis_post_trade_120mn = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_120mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_120mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_120mn, range, value, display)

  return offset + length, value
end

-- Size: Threshold Lis Post Trade 60mn
size_of.threshold_lis_post_trade_60mn = 8

-- Display: Threshold Lis Post Trade 60mn
display.threshold_lis_post_trade_60mn = function(value)
  return "Threshold Lis Post Trade 60mn: "..value
end

-- Dissect: Threshold Lis Post Trade 60mn
dissect.threshold_lis_post_trade_60mn = function(buffer, offset, packet, parent)
  local length = size_of.threshold_lis_post_trade_60mn
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.threshold_lis_post_trade_60mn(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.threshold_lis_post_trade_60mn, range, value, display)

  return offset + length, value
end

-- Size: Icb Code
size_of.icb_code = 8

-- Display: Icb Code
display.icb_code = function(value)
  return "Icb Code: "..value
end

-- Dissect: Icb Code
dissect.icb_code = function(buffer, offset, packet, parent)
  local length = size_of.icb_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.icb_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.icb_code, range, value, display)

  return offset + length, value
end

-- Size: Market Of Reference Mic
size_of.market_of_reference_mic = 4

-- Display: Market Of Reference Mic
display.market_of_reference_mic = function(value)
  return "Market Of Reference Mic: "..value
end

-- Dissect: Market Of Reference Mic
dissect.market_of_reference_mic = function(buffer, offset, packet, parent)
  local length = size_of.market_of_reference_mic
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_of_reference_mic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_of_reference_mic, range, value, display)

  return offset + length, value
end

-- Size: Liquid Instrument Indicator
size_of.liquid_instrument_indicator = 1

-- Display: Liquid Instrument Indicator
display.liquid_instrument_indicator = function(value)
  return "Liquid Instrument Indicator: "..value
end

-- Dissect: Liquid Instrument Indicator
dissect.liquid_instrument_indicator = function(buffer, offset, packet, parent)
  local length = size_of.liquid_instrument_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.liquid_instrument_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.liquid_instrument_indicator, range, value, display)

  return offset + length, value
end

-- Size: Issue Price Decimals
size_of.issue_price_decimals = 1

-- Display: Issue Price Decimals
display.issue_price_decimals = function(value)
  return "Issue Price Decimals: "..value
end

-- Dissect: Issue Price Decimals
dissect.issue_price_decimals = function(buffer, offset, packet, parent)
  local length = size_of.issue_price_decimals
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.issue_price_decimals(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_price_decimals, range, value, display)

  return offset + length, value
end

-- Size: Nominal Currency
size_of.nominal_currency = 3

-- Display: Nominal Currency
display.nominal_currency = function(value)
  return "Nominal Currency: "..value
end

-- Dissect: Nominal Currency
dissect.nominal_currency = function(buffer, offset, packet, parent)
  local length = size_of.nominal_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.nominal_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.nominal_currency, range, value, display)

  return offset + length, value
end

-- Size: Issue Price
size_of.issue_price = 8

-- Display: Issue Price
display.issue_price = function(value)
  return "Issue Price: "..value
end

-- Dissect: Issue Price
dissect.issue_price = function(buffer, offset, packet, parent)
  local length = size_of.issue_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.issue_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.issue_price, range, value, display)

  return offset + length, value
end

-- Size: Repo Indicator
size_of.repo_indicator = 1

-- Display: Repo Indicator
display.repo_indicator = function(value)
  return "Repo Indicator: "..value
end

-- Dissect: Repo Indicator
dissect.repo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.repo_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.repo_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market Admission
size_of.type_of_market_admission = 1

-- Display: Type Of Market Admission
display.type_of_market_admission = function(value)
  return "Type Of Market Admission: "..value
end

-- Dissect: Type Of Market Admission
dissect.type_of_market_admission = function(buffer, offset, packet, parent)
  local length = size_of.type_of_market_admission
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.type_of_market_admission(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Size: Type Of Corporate Event
size_of.type_of_corporate_event = 2

-- Display: Type Of Corporate Event
display.type_of_corporate_event = function(value)
  return "Type Of Corporate Event: "..value
end

-- Dissect: Type Of Corporate Event
dissect.type_of_corporate_event = function(buffer, offset, packet, parent)
  local length = size_of.type_of_corporate_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.type_of_corporate_event(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Size: Tax Code
size_of.tax_code = 1

-- Display: Tax Code
display.tax_code = function(value)
  return "Tax Code: "..value
end

-- Dissect: Tax Code
dissect.tax_code = function(buffer, offset, packet, parent)
  local length = size_of.tax_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tax_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
size_of.strike_currency = 3

-- Display: Strike Currency
display.strike_currency = function(value)
  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = size_of.strike_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Settlement Delay
size_of.settlement_delay = 2

-- Display: Settlement Delay
display.settlement_delay = function(value)
  return "Settlement Delay: "..value
end

-- Dissect: Settlement Delay
dissect.settlement_delay = function(buffer, offset, packet, parent)
  local length = size_of.settlement_delay
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_delay(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_delay, range, value, display)

  return offset + length, value
end

-- Size: Par Value
size_of.par_value = 8

-- Display: Par Value
display.par_value = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
dissect.par_value = function(buffer, offset, packet, parent)
  local length = size_of.par_value
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.par_value(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.par_value, range, value, display)

  return offset + length, value
end

-- Size: Number Instrument Circulating
size_of.number_instrument_circulating = 8

-- Display: Number Instrument Circulating
display.number_instrument_circulating = function(value)
  return "Number Instrument Circulating: "..value
end

-- Dissect: Number Instrument Circulating
dissect.number_instrument_circulating = function(buffer, offset, packet, parent)
  local length = size_of.number_instrument_circulating
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.number_instrument_circulating(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.number_instrument_circulating, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency Indicator
size_of.strike_currency_indicator = 1

-- Display: Strike Currency Indicator
display.strike_currency_indicator = function(value)
  return "Strike Currency Indicator: "..value
end

-- Dissect: Strike Currency Indicator
dissect.strike_currency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.strike_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency Indicator
size_of.trading_currency_indicator = 1

-- Display: Trading Currency Indicator
display.trading_currency_indicator = function(value)
  return "Trading Currency Indicator: "..value
end

-- Dissect: Trading Currency Indicator
dissect.trading_currency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trading_currency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_currency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Currency Coefficient
size_of.currency_coefficient = 4

-- Display: Currency Coefficient
display.currency_coefficient = function(value)
  return "Currency Coefficient: "..value
end

-- Dissect: Currency Coefficient
dissect.currency_coefficient = function(buffer, offset, packet, parent)
  local length = size_of.currency_coefficient
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.currency_coefficient(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.currency_coefficient, range, value, display)

  return offset + length, value
end

-- Size: Mnemonic
size_of.mnemonic = 5

-- Display: Mnemonic
display.mnemonic = function(value)
  return "Mnemonic: "..value
end

-- Dissect: Mnemonic
dissect.mnemonic = function(buffer, offset, packet, parent)
  local length = size_of.mnemonic
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mnemonic(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mnemonic, range, value, display)

  return offset + length, value
end

-- Size: Mic List
size_of.mic_list = 20

-- Display: Mic List
display.mic_list = function(value)
  return "Mic List: "..value
end

-- Dissect: Mic List
dissect.mic_list = function(buffer, offset, packet, parent)
  local length = size_of.mic_list
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mic_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Size: Maximum Decimals In Quantity
size_of.maximum_decimals_in_quantity = 1

-- Display: Maximum Decimals In Quantity
display.maximum_decimals_in_quantity = function(value)
  return "Maximum Decimals In Quantity: "..value
end

-- Dissect: Maximum Decimals In Quantity
dissect.maximum_decimals_in_quantity = function(buffer, offset, packet, parent)
  local length = size_of.maximum_decimals_in_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.maximum_decimals_in_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.maximum_decimals_in_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Adjusted Closing Price
size_of.last_adjusted_closing_price = 8

-- Display: Last Adjusted Closing Price
display.last_adjusted_closing_price = function(value)
  return "Last Adjusted Closing Price: "..value
end

-- Dissect: Last Adjusted Closing Price
dissect.last_adjusted_closing_price = function(buffer, offset, packet, parent)
  local length = size_of.last_adjusted_closing_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_adjusted_closing_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.last_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Icb
size_of.icb = 16

-- Display: Icb
display.icb = function(value)
  return "Icb: "..value
end

-- Dissect: Icb
dissect.icb = function(buffer, offset, packet, parent)
  local length = size_of.icb
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.icb(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.icb, range, value, display)

  return offset + length, value
end

-- Size: Guarantee Indicator
size_of.guarantee_indicator = 1

-- Display: Guarantee Indicator
display.guarantee_indicator = function(value)
  return "Guarantee Indicator: "..value
end

-- Dissect: Guarantee Indicator
dissect.guarantee_indicator = function(buffer, offset, packet, parent)
  local length = size_of.guarantee_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.guarantee_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.guarantee_indicator, range, value, display)

  return offset + length, value
end

-- Size: First Settlement Date
size_of.first_settlement_date = 2

-- Display: First Settlement Date
display.first_settlement_date = function(value)
  return "First Settlement Date: "..value
end

-- Dissect: First Settlement Date
dissect.first_settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.first_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.first_settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Depositary List
size_of.depositary_list = 20

-- Display: Depositary List
display.depositary_list = function(value)
  return "Depositary List: "..value
end

-- Dissect: Depositary List
dissect.depositary_list = function(buffer, offset, packet, parent)
  local length = size_of.depositary_list
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.depositary_list(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.depositary_list, range, value, display)

  return offset + length, value
end

-- Size: Date Of Last Trade
size_of.date_of_last_trade = 2

-- Display: Date Of Last Trade
display.date_of_last_trade = function(value)
  return "Date Of Last Trade: "..value
end

-- Dissect: Date Of Last Trade
dissect.date_of_last_trade = function(buffer, offset, packet, parent)
  local length = size_of.date_of_last_trade
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.date_of_last_trade(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Size: Dark Min Quantity
size_of.dark_min_quantity = 4

-- Display: Dark Min Quantity
display.dark_min_quantity = function(value)
  return "Dark Min Quantity: "..value
end

-- Dissect: Dark Min Quantity
dissect.dark_min_quantity = function(buffer, offset, packet, parent)
  local length = size_of.dark_min_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dark_min_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_min_quantity, range, value, display)

  return offset + length, value
end

-- Size: Dark Lis Threshold
size_of.dark_lis_threshold = 8

-- Display: Dark Lis Threshold
display.dark_lis_threshold = function(value)
  return "Dark Lis Threshold: "..value
end

-- Dissect: Dark Lis Threshold
dissect.dark_lis_threshold = function(buffer, offset, packet, parent)
  local length = size_of.dark_lis_threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.dark_lis_threshold(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_lis_threshold, range, value, display)

  return offset + length, value
end

-- Size: Dark Eligibility
size_of.dark_eligibility = 1

-- Display: Dark Eligibility
display.dark_eligibility = function(value)
  return "Dark Eligibility: "..value
end

-- Dissect: Dark Eligibility
dissect.dark_eligibility = function(buffer, offset, packet, parent)
  local length = size_of.dark_eligibility
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dark_eligibility(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.dark_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Instrument Group Code
size_of.instrument_group_code = 2

-- Display: Instrument Group Code
display.instrument_group_code = function(value)
  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_group_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_group_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Trading Code
size_of.instrument_trading_code = 15

-- Display: Instrument Trading Code
display.instrument_trading_code = function(value)
  return "Instrument Trading Code: "..value
end

-- Dissect: Instrument Trading Code
dissect.instrument_trading_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_trading_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_trading_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_trading_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Name
size_of.instrument_name = 18

-- Display: Instrument Name
display.instrument_name = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
dissect.instrument_name = function(buffer, offset, packet, parent)
  local length = size_of.instrument_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_name(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.instrument_name, range, value, display)

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

  return index
end

-- Display: Standing Data Message
display.standing_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Standing Data Message
dissect.standing_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Optiq Segment: 1 Byte Unsigned Fixed Width Integer
  index, optiq_segment = dissect.optiq_segment(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Full Instrument Name: 102 Byte Ascii String
  index, full_instrument_name = dissect.full_instrument_name(buffer, index, packet, parent)

  -- Instrument Name: 18 Byte Ascii String
  index, instrument_name = dissect.instrument_name(buffer, index, packet, parent)

  -- Instrument Trading Code: 15 Byte Ascii String
  index, instrument_trading_code = dissect.instrument_trading_code(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Isin Code: 12 Byte Ascii String
  index, isin_code = dissect.isin_code(buffer, index, packet, parent)

  -- Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_decimals = dissect.price_decimals(buffer, index, packet, parent)

  -- Quantity Decimals: 1 Byte Unsigned Fixed Width Integer
  index, quantity_decimals = dissect.quantity_decimals(buffer, index, packet, parent)

  -- Amount Decimals: 1 Byte Unsigned Fixed Width Integer
  index, amount_decimals = dissect.amount_decimals(buffer, index, packet, parent)

  -- Ratio Decimals: 1 Byte Unsigned Fixed Width Integer
  index, ratio_decimals = dissect.ratio_decimals(buffer, index, packet, parent)

  -- Cfi: 6 Byte Ascii String
  index, cfi = dissect.cfi(buffer, index, packet, parent)

  -- Instrument Event Date: 2 Byte Unsigned Fixed Width Integer
  index, instrument_event_date = dissect.instrument_event_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Dark Eligibility: 1 Byte Unsigned Fixed Width Integer
  index, dark_eligibility = dissect.dark_eligibility(buffer, index, packet, parent)

  -- Dark Lis Threshold: 8 Byte Unsigned Fixed Width Integer
  index, dark_lis_threshold = dissect.dark_lis_threshold(buffer, index, packet, parent)

  -- Dark Min Quantity: 4 Byte Unsigned Fixed Width Integer
  index, dark_min_quantity = dissect.dark_min_quantity(buffer, index, packet, parent)

  -- Date Of Last Trade: 2 Byte Unsigned Fixed Width Integer
  index, date_of_last_trade = dissect.date_of_last_trade(buffer, index, packet, parent)

  -- Depositary List: 20 Byte Ascii String
  index, depositary_list = dissect.depositary_list(buffer, index, packet, parent)

  -- Main Depositary: 5 Byte Ascii String
  index, main_depositary = dissect.main_depositary(buffer, index, packet, parent)

  -- First Settlement Date: 2 Byte Unsigned Fixed Width Integer
  index, first_settlement_date = dissect.first_settlement_date(buffer, index, packet, parent)

  -- Guarantee Indicator: 1 Byte Unsigned Fixed Width Integer
  index, guarantee_indicator = dissect.guarantee_indicator(buffer, index, packet, parent)

  -- Icb: 16 Byte Ascii String
  index, icb = dissect.icb(buffer, index, packet, parent)

  -- Issuing Country: 3 Byte Ascii String
  index, issuing_country = dissect.issuing_country(buffer, index, packet, parent)

  -- Last Adjusted Closing Price: 8 Byte Signed Fixed Width Integer
  index, last_adjusted_closing_price = dissect.last_adjusted_closing_price(buffer, index, packet, parent)

  -- Lot Size: 8 Byte Unsigned Fixed Width Integer
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Maximum Decimals In Quantity: 1 Byte Unsigned Fixed Width Integer
  index, maximum_decimals_in_quantity = dissect.maximum_decimals_in_quantity(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = dissect.mic(buffer, index, packet, parent)

  -- Mic List: 20 Byte Ascii String
  index, mic_list = dissect.mic_list(buffer, index, packet, parent)

  -- Country Of Exchange: 3 Byte Ascii String
  index, country_of_exchange = dissect.country_of_exchange(buffer, index, packet, parent)

  -- Mnemonic: 5 Byte Ascii String
  index, mnemonic = dissect.mnemonic(buffer, index, packet, parent)

  -- Underlying Mic: 4 Byte Ascii String
  index, underlying_mic = dissect.underlying_mic(buffer, index, packet, parent)

  -- Underlying Isin Code: 12 Byte Ascii String
  index, underlying_isin_code = dissect.underlying_isin_code(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer
  index, currency_coefficient = dissect.currency_coefficient(buffer, index, packet, parent)

  -- Trading Currency Indicator: 1 Byte Unsigned Fixed Width Integer
  index, trading_currency_indicator = dissect.trading_currency_indicator(buffer, index, packet, parent)

  -- Strike Currency Indicator: 1 Byte Unsigned Fixed Width Integer
  index, strike_currency_indicator = dissect.strike_currency_indicator(buffer, index, packet, parent)

  -- Number Instrument Circulating: 8 Byte Unsigned Fixed Width Integer
  index, number_instrument_circulating = dissect.number_instrument_circulating(buffer, index, packet, parent)

  -- Par Value: 8 Byte Unsigned Fixed Width Integer
  index, par_value = dissect.par_value(buffer, index, packet, parent)

  -- Quantity Notation: 3 Byte Ascii String
  index, quantity_notation = dissect.quantity_notation(buffer, index, packet, parent)

  -- Inst Unit Exp: 1 Byte Unsigned Fixed Width Integer
  index, inst_unit_exp = dissect.inst_unit_exp(buffer, index, packet, parent)

  -- Settlement Delay: 2 Byte Ascii String
  index, settlement_delay = dissect.settlement_delay(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = dissect.strike_currency(buffer, index, packet, parent)

  -- Tax Code: 1 Byte Unsigned Fixed Width Integer
  index, tax_code = dissect.tax_code(buffer, index, packet, parent)

  -- Type Of Corporate Event: 2 Byte Ascii String
  index, type_of_corporate_event = dissect.type_of_corporate_event(buffer, index, packet, parent)

  -- Type Of Market Admission: 1 Byte Ascii String
  index, type_of_market_admission = dissect.type_of_market_admission(buffer, index, packet, parent)

  -- Repo Indicator: 1 Byte Unsigned Fixed Width Integer
  index, repo_indicator = dissect.repo_indicator(buffer, index, packet, parent)

  -- Issue Price: 8 Byte Signed Fixed Width Integer
  index, issue_price = dissect.issue_price(buffer, index, packet, parent)

  -- Nominal Currency: 3 Byte Ascii String
  index, nominal_currency = dissect.nominal_currency(buffer, index, packet, parent)

  -- Issue Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, issue_price_decimals = dissect.issue_price_decimals(buffer, index, packet, parent)

  -- Strike Price Decimals: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimals = dissect.strike_price_decimals(buffer, index, packet, parent)

  -- Liquid Instrument Indicator: 1 Byte Unsigned Fixed Width Integer
  index, liquid_instrument_indicator = dissect.liquid_instrument_indicator(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String
  index, market_of_reference_mic = dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Icb Code: 8 Byte Ascii String
  index, icb_code = dissect.icb_code(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 60mn: 8 Byte Unsigned Fixed Width Integer
  index, threshold_lis_post_trade_60mn = dissect.threshold_lis_post_trade_60mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade 120mn: 8 Byte Unsigned Fixed Width Integer
  index, threshold_lis_post_trade_120mn = dissect.threshold_lis_post_trade_120mn(buffer, index, packet, parent)

  -- Threshold Lis Post Trade Eod: 8 Byte Unsigned Fixed Width Integer
  index, threshold_lis_post_trade_eod = dissect.threshold_lis_post_trade_eod(buffer, index, packet, parent)

  return index
end

-- Dissect: Standing Data Message
dissect.standing_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.standing_data_message then
    local length = size_of.standing_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.standing_data_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.standing_data_message, range, display)
  end

  return dissect.standing_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Pattern Id
size_of.pattern_id = 2

-- Display: Pattern Id
display.pattern_id = function(value)
  return "Pattern Id: "..value
end

-- Dissect: Pattern Id
dissect.pattern_id = function(buffer, offset, packet, parent)
  local length = size_of.pattern_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.pattern_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.pattern_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timetable Message
size_of.timetable_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.pattern_id

  index = index + size_of.symbol_index

  return index
end

-- Display: Timetable Message
display.timetable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timetable Message
dissect.timetable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Pattern Id: 2 Byte Unsigned Fixed Width Integer
  index, pattern_id = dissect.pattern_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Timetable Message
dissect.timetable_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timetable_message then
    local length = size_of.timetable_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timetable_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.timetable_message, range, display)
  end

  return dissect.timetable_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Status Change Message
size_of.market_status_change_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  return index
end

-- Display: Market Status Change Message
display.market_status_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Status Change Message
dissect.market_status_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Change Message
dissect.market_status_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_status_change_message then
    local length = size_of.market_status_change_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_status_change_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_status_change_message, range, display)
  end

  return dissect.market_status_change_message_fields(buffer, offset, packet, parent)
end

-- Size: Repo Settlement Date
size_of.repo_settlement_date = 2

-- Display: Repo Settlement Date
display.repo_settlement_date = function(value)
  return "Repo Settlement Date: "..value
end

-- Dissect: Repo Settlement Date
dissect.repo_settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.repo_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.repo_settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.repo_settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Settlement Date
size_of.settlement_date = 2

-- Display: Settlement Date
display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Message Price Notation
size_of.message_price_notation = 1

-- Display: Message Price Notation
display.message_price_notation = function(value)
  return "Message Price Notation: "..value
end

-- Dissect: Message Price Notation
dissect.message_price_notation = function(buffer, offset, packet, parent)
  local length = size_of.message_price_notation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Evaluated Price
size_of.evaluated_price = 8

-- Display: Evaluated Price
display.evaluated_price = function(value)
  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
dissect.evaluated_price = function(buffer, offset, packet, parent)
  local length = size_of.evaluated_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.evaluated_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Size: End Time Vwap
size_of.end_time_vwap = 4

-- Display: End Time Vwap
display.end_time_vwap = function(value)
  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
dissect.end_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.end_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.end_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Start Time Vwap
size_of.start_time_vwap = 4

-- Display: Start Time Vwap
display.start_time_vwap = function(value)
  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
dissect.start_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.start_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.start_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Transparency Indicator
size_of.transparency_indicator = 1

-- Display: Transparency Indicator
display.transparency_indicator = function(value)
  return "Transparency Indicator: "..value
end

-- Dissect: Transparency Indicator
dissect.transparency_indicator = function(buffer, offset, packet, parent)
  local length = size_of.transparency_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transparency_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.transparency_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Trade Code
size_of.block_trade_code = 1

-- Display: Block Trade Code
display.block_trade_code = function(value)
  return "Block Trade Code: "..value
end

-- Dissect: Block Trade Code
dissect.block_trade_code = function(buffer, offset, packet, parent)
  local length = size_of.block_trade_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.block_trade_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.block_trade_code, range, value, display)

  return offset + length, value
end

-- Size: Effective Date Indicator
size_of.effective_date_indicator = 1

-- Display: Effective Date Indicator
display.effective_date_indicator = function(value)
  return "Effective Date Indicator: "..value
end

-- Dissect: Effective Date Indicator
dissect.effective_date_indicator = function(buffer, offset, packet, parent)
  local length = size_of.effective_date_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.effective_date_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.effective_date_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Type
size_of.transaction_type = 1

-- Display: Transaction Type
display.transaction_type = function(value)
  return "Transaction Type: "..value
end

-- Dissect: Transaction Type
dissect.transaction_type = function(buffer, offset, packet, parent)
  local length = size_of.transaction_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transaction_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Qualifier
size_of.trade_qualifier = 1

-- Display: Trade Qualifier
display.trade_qualifier = function(value)
  return "Trade Qualifier: "..value
end

-- Dissect: Trade Qualifier
dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.trade_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_qualifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Mmt Duplicative Indicator
size_of.mmt_duplicative_indicator = 4

-- Display: Mmt Duplicative Indicator
display.mmt_duplicative_indicator = function(value)
  return "Mmt Duplicative Indicator: "..value
end

-- Dissect: Mmt Duplicative Indicator
dissect.mmt_duplicative_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_duplicative_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Post Trade Deferral
size_of.mmt_post_trade_deferral = 4

-- Display: Mmt Post Trade Deferral
display.mmt_post_trade_deferral = function(value)
  return "Mmt Post Trade Deferral: "..value
end

-- Dissect: Mmt Post Trade Deferral
dissect.mmt_post_trade_deferral = function(buffer, offset, packet, parent)
  local length = size_of.mmt_post_trade_deferral
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_post_trade_deferral(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_post_trade_deferral, range, value, display)

  return offset + length, value
end

-- Size: Mmt Publication Mode
size_of.mmt_publication_mode = 4

-- Display: Mmt Publication Mode
display.mmt_publication_mode = function(value)
  return "Mmt Publication Mode: "..value
end

-- Dissect: Mmt Publication Mode
dissect.mmt_publication_mode = function(buffer, offset, packet, parent)
  local length = size_of.mmt_publication_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_publication_mode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Size: Mmt Algorithmic Indicator
size_of.mmt_algorithmic_indicator = 4

-- Display: Mmt Algorithmic Indicator
display.mmt_algorithmic_indicator = function(value)
  return "Mmt Algorithmic Indicator: "..value
end

-- Dissect: Mmt Algorithmic Indicator
dissect.mmt_algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_algorithmic_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Contributionto Price
size_of.mmt_contributionto_price = 4

-- Display: Mmt Contributionto Price
display.mmt_contributionto_price = function(value)
  return "Mmt Contributionto Price: "..value
end

-- Dissect: Mmt Contributionto Price
dissect.mmt_contributionto_price = function(buffer, offset, packet, parent)
  local length = size_of.mmt_contributionto_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_contributionto_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_contributionto_price, range, value, display)

  return offset + length, value
end

-- Size: Mmt Off Book Automated Indicator
size_of.mmt_off_book_automated_indicator = 1

-- Display: Mmt Off Book Automated Indicator
display.mmt_off_book_automated_indicator = function(value)
  return "Mmt Off Book Automated Indicator: "..value
end

-- Dissect: Mmt Off Book Automated Indicator
dissect.mmt_off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_off_book_automated_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Negotiation Indicator
size_of.mmt_negotiation_indicator = 4

-- Display: Mmt Negotiation Indicator
display.mmt_negotiation_indicator = function(value)
  return "Mmt Negotiation Indicator: "..value
end

-- Dissect: Mmt Negotiation Indicator
dissect.mmt_negotiation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.mmt_negotiation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Mmt Transaction Category
size_of.mmt_transaction_category = 4

-- Display: Mmt Transaction Category
display.mmt_transaction_category = function(value)
  return "Mmt Transaction Category: "..value
end

-- Dissect: Mmt Transaction Category
dissect.mmt_transaction_category = function(buffer, offset, packet, parent)
  local length = size_of.mmt_transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mmt_transaction_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Mmt Market Mechanism
size_of.mmt_market_mechanism = 1

-- Display: Mmt Market Mechanism
display.mmt_market_mechanism = function(value)
  return "Mmt Market Mechanism: "..value
end

-- Dissect: Mmt Market Mechanism
dissect.mmt_market_mechanism = function(buffer, offset, packet, parent)
  local length = size_of.mmt_market_mechanism
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mmt_market_mechanism(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mmt_market_mechanism, range, value, display)

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

  index = index + size_of.settlement_date

  index = index + size_of.repo_settlement_date

  return index
end

-- Display: Full Trade Information Message
display.full_trade_information_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Trade Information Message
dissect.full_trade_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = dissect.trading_date_time(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Mifid Instrument Id Type: 4 Byte Ascii String
  index, mifid_instrument_id_type = dissect.mifid_instrument_id_type(buffer, index, packet, parent)

  -- Mifid Instrument Id: 12 Byte Ascii String
  index, mifid_instrument_id = dissect.mifid_instrument_id(buffer, index, packet, parent)

  -- Mifid Execution Id: 52 Byte Ascii String
  index, mifid_execution_id = dissect.mifid_execution_id(buffer, index, packet, parent)

  -- Mifid Price: 20 Byte Ascii String
  index, mifid_price = dissect.mifid_price(buffer, index, packet, parent)

  -- Mifid Quantity: 20 Byte Ascii String
  index, mifid_quantity = dissect.mifid_quantity(buffer, index, packet, parent)

  -- Mifid Price Notation: 4 Byte Ascii String
  index, mifid_price_notation = dissect.mifid_price_notation(buffer, index, packet, parent)

  -- Mifid Currency: 3 Byte Ascii String
  index, mifid_currency = dissect.mifid_currency(buffer, index, packet, parent)

  -- Mi Fid Qtyin Msrmt Unit Notation: 25 Byte Ascii String
  index, mi_fid_qtyin_msrmt_unit_notation = dissect.mi_fid_qtyin_msrmt_unit_notation(buffer, index, packet, parent)

  -- Mifid Quantity Measurement Unit: 20 Byte Ascii String
  index, mifid_quantity_measurement_unit = dissect.mifid_quantity_measurement_unit(buffer, index, packet, parent)

  -- Mi Fid Notional Amount: 20 Byte Ascii String
  index, mi_fid_notional_amount = dissect.mi_fid_notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = dissect.notional_currency(buffer, index, packet, parent)

  -- Mi Fid Clearing Flag: 5 Byte Ascii String
  index, mi_fid_clearing_flag = dissect.mi_fid_clearing_flag(buffer, index, packet, parent)

  -- Mmt Market Mechanism: 1 Byte Unsigned Fixed Width Integer
  index, mmt_market_mechanism = dissect.mmt_market_mechanism(buffer, index, packet, parent)

  -- Mmt Trading Mode: 1 Byte Ascii String
  index, mmt_trading_mode = dissect.mmt_trading_mode(buffer, index, packet, parent)

  -- Mmt Transaction Category: 4 Byte Ascii String
  index, mmt_transaction_category = dissect.mmt_transaction_category(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: 4 Byte Ascii String
  index, mmt_negotiation_indicator = dissect.mmt_negotiation_indicator(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: 4 Byte Ascii String
  index, mmt_agency_cross_trade_indicator = dissect.mmt_agency_cross_trade_indicator(buffer, index, packet, parent)

  -- Mmt Modification Indicator: 4 Byte Ascii String
  index, mmt_modification_indicator = dissect.mmt_modification_indicator(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: 4 Byte Ascii String
  index, mmt_benchmark_indicator = dissect.mmt_benchmark_indicator(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: 4 Byte Ascii String
  index, mmt_special_dividend_indicator = dissect.mmt_special_dividend_indicator(buffer, index, packet, parent)

  -- Mmt Off Book Automated Indicator: 1 Byte Ascii String
  index, mmt_off_book_automated_indicator = dissect.mmt_off_book_automated_indicator(buffer, index, packet, parent)

  -- Mmt Contributionto Price: 4 Byte Ascii String
  index, mmt_contributionto_price = dissect.mmt_contributionto_price(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: 4 Byte Ascii String
  index, mmt_algorithmic_indicator = dissect.mmt_algorithmic_indicator(buffer, index, packet, parent)

  -- Mmt Publication Mode: 4 Byte Ascii String
  index, mmt_publication_mode = dissect.mmt_publication_mode(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral: 4 Byte Ascii String
  index, mmt_post_trade_deferral = dissect.mmt_post_trade_deferral(buffer, index, packet, parent)

  -- Mmt Duplicative Indicator: 4 Byte Ascii String
  index, mmt_duplicative_indicator = dissect.mmt_duplicative_indicator(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Unsigned Fixed Width Integer
  index, trade_qualifier = dissect.trade_qualifier(buffer, index, packet, parent)

  -- Transaction Type: 1 Byte Unsigned Fixed Width Integer
  index, transaction_type = dissect.transaction_type(buffer, index, packet, parent)

  -- Effective Date Indicator: 1 Byte Unsigned Fixed Width Integer
  index, effective_date_indicator = dissect.effective_date_indicator(buffer, index, packet, parent)

  -- Block Trade Code: 1 Byte Ascii String
  index, block_trade_code = dissect.block_trade_code(buffer, index, packet, parent)

  -- Trade Reference: 30 Byte Ascii String
  index, trade_reference = dissect.trade_reference(buffer, index, packet, parent)

  -- Original Report Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, original_report_timestamp = dissect.original_report_timestamp(buffer, index, packet, parent)

  -- Transparency Indicator: 1 Byte Unsigned Fixed Width Integer
  index, transparency_indicator = dissect.transparency_indicator(buffer, index, packet, parent)

  -- Currency Coefficient: 4 Byte Unsigned Fixed Width Integer
  index, currency_coefficient = dissect.currency_coefficient(buffer, index, packet, parent)

  -- Price Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, price_multiplier = dissect.price_multiplier(buffer, index, packet, parent)

  -- Price Multiplier Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_multiplier_decimals = dissect.price_multiplier_decimals(buffer, index, packet, parent)

  -- Venue: 11 Byte Ascii String
  index, venue = dissect.venue(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Mi Fid Emission Allowance Type: 4 Byte Ascii String
  index, mi_fid_emission_allowance_type = dissect.mi_fid_emission_allowance_type(buffer, index, packet, parent)

  -- Market Of Reference Mic: 4 Byte Ascii String
  index, market_of_reference_mic = dissect.market_of_reference_mic(buffer, index, packet, parent)

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer
  index, evaluated_price = dissect.evaluated_price(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  -- Settlement Date: 2 Byte Unsigned Fixed Width Integer
  index, settlement_date = dissect.settlement_date(buffer, index, packet, parent)

  -- Repo Settlement Date: 2 Byte Unsigned Fixed Width Integer
  index, repo_settlement_date = dissect.repo_settlement_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Trade Information Message
dissect.full_trade_information_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_trade_information_message then
    local length = size_of.full_trade_information_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.full_trade_information_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.full_trade_information_message, range, display)
  end

  return dissect.full_trade_information_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Price Update Message
size_of.price_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  return index
end

-- Display: Price Update Message
display.price_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Update Message
dissect.price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
dissect.price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_update_message then
    local length = size_of.price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.price_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.price_update_message, range, display)
  end

  return dissect.price_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Update Message
size_of.order_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  return index
end

-- Display: Order Update Message
display.order_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Update Message
dissect.order_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
dissect.order_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_update_message then
    local length = size_of.order_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.order_update_message, range, display)
  end

  return dissect.order_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Update Message
size_of.market_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.md_seq_num

  index = index + size_of.rebroadcast_indicator

  index = index + size_of.emm

  index = index + size_of.event_time

  return index
end

-- Display: Market Update Message
display.market_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Update Message
dissect.market_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Update Message
dissect.market_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_update_message then
    local length = size_of.market_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_update_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_update_message, range, display)
  end

  return dissect.market_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmission End Time
size_of.retransmission_end_time = 8

-- Display: Retransmission End Time
display.retransmission_end_time = function(value)
  return "Retransmission End Time: "..value
end

-- Dissect: Retransmission End Time
dissect.retransmission_end_time = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_end_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.retransmission_end_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.retransmission_end_time, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Start Time
size_of.retransmission_start_time = 8

-- Display: Retransmission Start Time
display.retransmission_start_time = function(value)
  return "Retransmission Start Time: "..value
end

-- Dissect: Retransmission Start Time
dissect.retransmission_start_time = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_start_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.retransmission_start_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.retransmission_start_time, range, value, display)

  return offset + length, value
end

-- Size: Technical Notification Type
size_of.technical_notification_type = 1

-- Display: Technical Notification Type
display.technical_notification_type = function(value)
  return "Technical Notification Type: "..value
end

-- Dissect: Technical Notification Type
dissect.technical_notification_type = function(buffer, offset, packet, parent)
  local length = size_of.technical_notification_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.technical_notification_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.technical_notification_type, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, md_seq_num = dissect.md_seq_num(buffer, index, packet, parent)

  -- Technical Notification Type: 1 Byte Unsigned Fixed Width Integer
  index, technical_notification_type = dissect.technical_notification_type(buffer, index, packet, parent)

  -- Rebroadcast Indicator: 1 Byte Unsigned Fixed Width Integer
  index, rebroadcast_indicator = dissect.rebroadcast_indicator(buffer, index, packet, parent)

  -- Retransmission Start Time: 8 Byte Unsigned Fixed Width Integer
  index, retransmission_start_time = dissect.retransmission_start_time(buffer, index, packet, parent)

  -- Retransmission End Time: 8 Byte Unsigned Fixed Width Integer
  index, retransmission_end_time = dissect.retransmission_end_time(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.technical_notification_message, range, display)
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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.health_status_message, range, display)
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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.session_trading_day, range, value, display)

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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.end_of_day_message, range, display)
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

  -- Md Seq Num: 8 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.start_of_day_message, range, display)
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
  -- Size of Long Order Update Message
  if template_id == 1015 then
    return size_of.long_order_update_message(buffer, offset)
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
  -- Size of Bf Instrument Reference Message
  if template_id == 1201 then
    return size_of.bf_instrument_reference_message(buffer, offset)
  end
  -- Size of Bf Trade Message
  if template_id == 1202 then
    return size_of.bf_trade_message(buffer, offset)
  end
  -- Size of Bfna V Message
  if template_id == 1203 then
    return size_of.bfna_v_message(buffer, offset)
  end
  -- Size of Bf Instrument Suspension Message
  if template_id == 1204 then
    return size_of.bf_instrument_suspension_message(buffer, offset)
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
  -- Dissect Long Order Update Message
  if template_id == 1015 then
    return dissect.long_order_update_message(buffer, offset, packet, parent)
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
  -- Dissect Bf Instrument Reference Message
  if template_id == 1201 then
    return dissect.bf_instrument_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Bf Trade Message
  if template_id == 1202 then
    return dissect.bf_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Bfna V Message
  if template_id == 1203 then
    return dissect.bfna_v_message(buffer, offset, packet, parent)
  end
  -- Dissect Bf Instrument Suspension Message
  if template_id == 1204 then
    return dissect.bf_instrument_suspension_message(buffer, offset, packet, parent)
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
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.payload, range, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.version, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.schema_id, range, value, display)

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
    return "Template Id: Bfna V Message (1203)"
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
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.template_id, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

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

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message_header, range, display)
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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.frame, range, value, display)

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

  -- Payload: Runtime Type with 28 branches
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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.message, range, display)
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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.channel_id, range, value, display)

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
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.reserved_bits, buffer(offset, 2))

  -- Has Status Message: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_status_message, buffer(offset, 2))

  -- Has End Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_end_of_day_snapshot, buffer(offset, 2))

  -- Has Start Of Day Snapshot: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.has_start_of_day_snapshot, buffer(offset, 2))

  -- Psn High Weight: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.psn_high_weight, buffer(offset, 2))

  -- Mdg Restart Count: 3 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.mdg_restart_count, buffer(offset, 2))

  -- Compression: 1 Bit
  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.compression, buffer(offset, 2))
end

-- Dissect: Packet Flags
dissect.packet_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.packet_flags(range, packet, parent)
  local element = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_flags, range, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_sequence_number, range, value, display)

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

  parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.packet_time, range, value, display)

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
    parent = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0.fields.market_data_packet_header, range, display)
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
function euronext_optiq_marketdatagateway_sbe_v4_3_0.init()
end

-- Dissector for Euronext Optiq MarketDataGateway Sbe 4.3.0
function euronext_optiq_marketdatagateway_sbe_v4_3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = euronext_optiq_marketdatagateway_sbe_v4_3_0.name

  -- Dissect protocol
  local protocol = parent:add(euronext_optiq_marketdatagateway_sbe_v4_3_0, buffer(), euronext_optiq_marketdatagateway_sbe_v4_3_0.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, euronext_optiq_marketdatagateway_sbe_v4_3_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.euronext_optiq_marketdatagateway_sbe_v4_3_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 0 == buffer(20, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 304 == buffer(22, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq MarketDataGateway Sbe 4.3.0
local function euronext_optiq_marketdatagateway_sbe_v4_3_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.euronext_optiq_marketdatagateway_sbe_v4_3_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = euronext_optiq_marketdatagateway_sbe_v4_3_0
  euronext_optiq_marketdatagateway_sbe_v4_3_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq MarketDataGateway Sbe 4.3.0
euronext_optiq_marketdatagateway_sbe_v4_3_0:register_heuristic("udp", euronext_optiq_marketdatagateway_sbe_v4_3_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 4.3.0
--   Date: Friday, September 25, 2020
--   Specification: Euronext Markets - Optiq MDG Client Specifications - v4.3.0 +TC.pdf
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
