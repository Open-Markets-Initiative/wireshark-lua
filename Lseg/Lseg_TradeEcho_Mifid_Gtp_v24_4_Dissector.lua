-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid Gtp 24.4 Protocol
local lseg_tradeecho_mifid_gtp_v24_4 = Proto("Lseg.TradeEcho.Mifid.Gtp.v24.4.Lua", "Lseg TradeEcho Mifid Gtp 24.4")

-- Component Tables
local show = {}
local format = {}
local lseg_tradeecho_mifid_gtp_v24_4_display = {}
local lseg_tradeecho_mifid_gtp_v24_4_dissect = {}
local lseg_tradeecho_mifid_gtp_v24_4_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid Gtp 24.4 Fields
lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.tradeecho.mifid.gtp.v24.4.agencycrossindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_trade_flag = ProtoField.new("Agency Cross Trade Flag", "lseg.tradeecho.mifid.gtp.v24.4.agencycrosstradeflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.algo_transaction_flag = ProtoField.new("Algo Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.algotransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.tradeecho.mifid.gtp.v24.4.algorithmicindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.tradeecho.mifid.gtp.v24.4.allowedbooktypes", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.amendment_flag = ProtoField.new("Amendment Flag", "lseg.tradeecho.mifid.gtp.v24.4.amendmentflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.average_daily_turnover = ProtoField.new("Average Daily Turnover", "lseg.tradeecho.mifid.gtp.v24.4.averagedailyturnover", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.benchmark_transaction_flag = ProtoField.new("Benchmark Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.benchmarktransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.cancellation_flag = ProtoField.new("Cancellation Flag", "lseg.tradeecho.mifid.gtp.v24.4.cancellationflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.consecutive_aggregation_flag = ProtoField.new("Consecutive Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.consecutiveaggregationflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.contingent_transaction_flag = ProtoField.new("Contingent Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.contingenttransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.tradeecho.mifid.gtp.v24.4.currency", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.da_full_details_flag = ProtoField.new("Da Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.dafulldetailsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.daily_aggregated_transaction_flag = ProtoField.new("Daily Aggregated Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.dailyaggregatedtransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.tradeecho.mifid.gtp.v24.4.deferralenrichmenttype", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.duplicate_flag = ProtoField.new("Duplicate Flag", "lseg.tradeecho.mifid.gtp.v24.4.duplicateflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.tradeecho.mifid.gtp.v24.4.duplicativeindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.emission_allowance_type = ProtoField.new("Emission Allowance Type", "lseg.tradeecho.mifid.gtp.v24.4.emissionallowancetype", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.tradeecho.mifid.gtp.v24.4.eventcode", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.exchange_for_physicals_flag = ProtoField.new("Exchange For Physicals Flag", "lseg.tradeecho.mifid.gtp.v24.4.exchangeforphysicalsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.fa_full_details_flag = ProtoField.new("Fa Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.fafulldetailsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.four_weeks_aggregation_flag = ProtoField.new("Four Weeks Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.fourweeksaggregationflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.indefinite_aggregation_flag = ProtoField.new("Indefinite Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.indefiniteaggregationflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.tradeecho.mifid.gtp.v24.4.instrument", ftypes.UINT64)
lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.tradeecho.mifid.gtp.v24.4.instrumentidentificationcode", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.tradeecho.mifid.gtp.v24.4.instrumentidentificationcodetype", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.tradeecho.mifid.gtp.v24.4.isin", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.ld_full_details_flag = ProtoField.new("Ld Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.ldfulldetailsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.tradeecho.mifid.gtp.v24.4.length", ftypes.UINT16)
lseg_tradeecho_mifid_gtp_v24_4.fields.limited_details_flag = ProtoField.new("Limited Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.limiteddetailsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.tradeecho.mifid.gtp.v24.4.marketclosingpriceflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.tradeecho.mifid.gtp.v24.4.marketdatagroup", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.tradeecho.mifid.gtp.v24.4.marketmechanism", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.tradeecho.mifid.gtp.v24.4.message", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.tradeecho.mifid.gtp.v24.4.messagecount", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.tradeecho.mifid.gtp.v24.4.messageheader", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.tradeecho.mifid.gtp.v24.4.messagelength", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.tradeecho.mifid.gtp.v24.4.messagetype", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.tradeecho.mifid.gtp.v24.4.mifidprice", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.tradeecho.mifid.gtp.v24.4.mifidquantity", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_trading_date_and_time = ProtoField.new("Mi Fid Trading Date And Time", "lseg.tradeecho.mifid.gtp.v24.4.mifidtradingdateandtime", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.tradeecho.mifid.gtp.v24.4.modificationindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.tradeecho.mifid.gtp.v24.4.negotiationindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.tradeecho.mifid.gtp.v24.4.newendtime", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_contribution_to_discovery = ProtoField.new("Non Price Contribution To Discovery", "lseg.tradeecho.mifid.gtp.v24.4.nonpricecontributiontodiscovery", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_forming_transactions_flag = ProtoField.new("Non Price Forming Transactions Flag", "lseg.tradeecho.mifid.gtp.v24.4.nonpriceformingtransactionsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.tradeecho.mifid.gtp.v24.4.notionalamount", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.tradeecho.mifid.gtp.v24.4.notionalcurrency", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.nt_large_in_scale_flag = ProtoField.new("Nt Large In Scale Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntlargeinscaleflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.nt_liquidity_flag = ProtoField.new("Nt Liquidity Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntliquidityflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.nt_pre_trade_transparency_flag = ProtoField.new("Nt Pre Trade Transparency Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntpretradetransparencyflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.nt_price_conditions_flag = ProtoField.new("Nt Price Conditions Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntpriceconditionsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.tradeecho.mifid.gtp.v24.4.numberoftrades", ftypes.UINT32)
lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.numberoftradesonbookonly", ftypes.UINT32)
lseg_tradeecho_mifid_gtp_v24_4.fields.off_book = ProtoField.new("Off Book", "lseg.tradeecho.mifid.gtp.v24.4.offbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
lseg_tradeecho_mifid_gtp_v24_4.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.tradeecho.mifid.gtp.v24.4.offbookautomatedindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.tradeecho.mifid.gtp.v24.4.orderbooktype", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.tradeecho.mifid.gtp.v24.4.packet", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.tradeecho.mifid.gtp.v24.4.payload", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.portfolio_transaction_flag = ProtoField.new("Portfolio Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.portfoliotransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.tradeecho.mifid.gtp.v24.4.posttradedeferralreason", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_conditions = ProtoField.new("Price Conditions", "lseg.tradeecho.mifid.gtp.v24.4.priceconditions", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_currency = ProtoField.new("Price Currency", "lseg.tradeecho.mifid.gtp.v24.4.pricecurrency", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.tradeecho.mifid.gtp.v24.4.priceformationindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_improvement_flag = ProtoField.new("Price Improvement Flag", "lseg.tradeecho.mifid.gtp.v24.4.priceimprovementflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.price_notation = ProtoField.new("Price Notation", "lseg.tradeecho.mifid.gtp.v24.4.pricenotation", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.pt_deferral_reason_flag = ProtoField.new("Pt Deferral Reason Flag", "lseg.tradeecho.mifid.gtp.v24.4.ptdeferralreasonflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.pt_illiquid_flag = ProtoField.new("Pt Illiquid Flag", "lseg.tradeecho.mifid.gtp.v24.4.ptilliquidflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.tradeecho.mifid.gtp.v24.4.publicationdateandtime", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.quantity_in_measurement_unit = ProtoField.new("Quantity In Measurement Unit", "lseg.tradeecho.mifid.gtp.v24.4.quantityinmeasurementunit", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.tradeecho.mifid.gtp.v24.4.referencepriceindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_transaction_flag = ProtoField.new("Reference Price Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.referencepricetransactionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.tradeecho.mifid.gtp.v24.4.reserved1", ftypes.BYTES)
lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.tradeecho.mifid.gtp.v24.4.reserved23", ftypes.BYTES)
lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_25 = ProtoField.new("Reserved 25", "lseg.tradeecho.mifid.gtp.v24.4.reserved25", ftypes.BYTES)
lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.tradeecho.mifid.gtp.v24.4.reserved5", ftypes.BYTES)
lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.tradeecho.mifid.gtp.v24.4.reserved8", ftypes.BYTES)
lseg_tradeecho_mifid_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.tradeecho.mifid.gtp.v24.4.segment", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.tradeecho.mifid.gtp.v24.4.sequencenumber", ftypes.UINT32)
lseg_tradeecho_mifid_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.tradeecho.mifid.gtp.v24.4.sessionchangereason", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.si_quote_book = ProtoField.new("Si Quote Book", "lseg.tradeecho.mifid.gtp.v24.4.siquotebook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
lseg_tradeecho_mifid_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.tradeecho.mifid.gtp.v24.4.sourcevenue", ftypes.UINT16)
lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_flag = ProtoField.new("Special Dividend Flag", "lseg.tradeecho.mifid.gtp.v24.4.specialdividendflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.tradeecho.mifid.gtp.v24.4.specialdividendindicator", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution = ProtoField.new("Thirdcountry Trading Venue Of Execution", "lseg.tradeecho.mifid.gtp.v24.4.thirdcountrytradingvenueofexecution", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.tradeecho.mifid.gtp.v24.4.tickid", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.tradeecho.mifid.gtp.v24.4.timestamp", ftypes.UINT64)
lseg_tradeecho_mifid_gtp_v24_4.fields.total_number_of_transactions = ProtoField.new("Total Number Of Transactions", "lseg.tradeecho.mifid.gtp.v24.4.totalnumberoftransactions", ftypes.UINT32)
lseg_tradeecho_mifid_gtp_v24_4.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.tradeecho.mifid.gtp.v24.4.tradingmode", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.tradeecho.mifid.gtp.v24.4.tradingstatus", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.tradeecho.mifid.gtp.v24.4.transactioncategory", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.tradeecho.mifid.gtp.v24.4.transactionidentificationcode", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "lseg.tradeecho.mifid.gtp.v24.4.transactiontobecleared", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.turnover = ProtoField.new("Turnover", "lseg.tradeecho.mifid.gtp.v24.4.turnover", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.turnoveronbookonly", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.tradeecho.mifid.gtp.v24.4.unitheader", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.unused_6 = ProtoField.new("Unused 6", "lseg.tradeecho.mifid.gtp.v24.4.unused6", ftypes.UINT8, nil, base.DEC, 0x3F)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_book_definition_id = ProtoField.new("Venue Book Definition Id", "lseg.tradeecho.mifid.gtp.v24.4.venuebookdefinitionid", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.tradeecho.mifid.gtp.v24.4.venueinstrumentid", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_measurement_unit_notation = ProtoField.new("Venue Measurement Unit Notation", "lseg.tradeecho.mifid.gtp.v24.4.venuemeasurementunitnotation", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.tradeecho.mifid.gtp.v24.4.venueofexecution", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_publication = ProtoField.new("Venue Of Publication", "lseg.tradeecho.mifid.gtp.v24.4.venueofpublication", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.venue_type = ProtoField.new("Venue Type", "lseg.tradeecho.mifid.gtp.v24.4.venuetype", ftypes.UINT8)
lseg_tradeecho_mifid_gtp_v24_4.fields.vo_full_details_flag = ProtoField.new("Vo Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.vofulldetailsflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.volume = ProtoField.new("Volume", "lseg.tradeecho.mifid.gtp.v24.4.volume", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_flag = ProtoField.new("Volume Omission Flag", "lseg.tradeecho.mifid.gtp.v24.4.volumeomissionflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag = ProtoField.new("Volume Omission For Sovereign Debt Flag", "lseg.tradeecho.mifid.gtp.v24.4.volumeomissionforsovereigndebtflag", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.volumeonbookonly", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.vwap = ProtoField.new("Vwap", "lseg.tradeecho.mifid.gtp.v24.4.vwap", ftypes.DOUBLE)
lseg_tradeecho_mifid_gtp_v24_4.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.vwaponbookonly", ftypes.DOUBLE)

-- Lseg TradeEcho Mifid Gtp 24.4 messages
lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_directory = ProtoField.new("Instrument Directory", "lseg.tradeecho.mifid.gtp.v24.4.instrumentdirectory", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_status = ProtoField.new("Instrument Status", "lseg.tradeecho.mifid.gtp.v24.4.instrumentstatus", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.mifid_ii_trade_report = ProtoField.new("Mifid Ii Trade Report", "lseg.tradeecho.mifid.gtp.v24.4.mifidiitradereport", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.statistics = ProtoField.new("Statistics", "lseg.tradeecho.mifid.gtp.v24.4.statistics", ftypes.STRING)
lseg_tradeecho_mifid_gtp_v24_4.fields.system_event = ProtoField.new("System Event", "lseg.tradeecho.mifid.gtp.v24.4.systemevent", ftypes.STRING)

-- Lseg TradeEcho Mifid Gtp 24.4 generated fields
lseg_tradeecho_mifid_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.tradeecho.mifid.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid Gtp 24.4 Element Dissection Options
show.allowed_book_types = true
show.instrument_directory = true
show.instrument_status = true
show.message = true
show.message_header = true
show.mifid_ii_trade_report = true
show.packet = true
show.statistics = true
show.system_event = true
show.unit_header = true
show.payload = false

-- Register Lseg TradeEcho Mifid Gtp 24.4 Show Options
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory = Pref.bool("Show Instrument Directory", show.instrument_directory, "Parse and add Instrument Directory to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status = Pref.bool("Show Instrument Status", show.instrument_status, "Parse and add Instrument Status to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report = Pref.bool("Show Mifid Ii Trade Report", show.mifid_ii_trade_report, "Parse and add Mifid Ii Trade Report to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics = Pref.bool("Show Statistics", show.statistics, "Parse and add Statistics to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event = Pref.bool("Show System Event", show.system_event, "Parse and add System Event to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function lseg_tradeecho_mifid_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory then
    show.instrument_directory = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory
    changed = true
  end
  if show.instrument_status ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status then
    show.instrument_status = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status
    changed = true
  end
  if show.message ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message then
    show.message = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header then
    show.message_header = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.mifid_ii_trade_report ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report then
    show.mifid_ii_trade_report = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report
    changed = true
  end
  if show.packet ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet then
    show.packet = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.statistics ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics then
    show.statistics = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics
    changed = true
  end
  if show.system_event ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event then
    show.system_event = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event
    changed = true
  end
  if show.unit_header ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload then
    show.payload = lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
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


-----------------------------------------------------------------------
-- Dissect Lseg TradeEcho Mifid Gtp 24.4
-----------------------------------------------------------------------

-- Size: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_pre_trade_transparency_flag = 4

-- Display: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4_display.nt_pre_trade_transparency_flag = function(value)
  return "Nt Pre Trade Transparency Flag: "..value
end

-- Dissect: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_pre_trade_transparency_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_pre_trade_transparency_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.nt_pre_trade_transparency_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.nt_pre_trade_transparency_flag, range, value, display)

  return offset + length, value
end

-- Size: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_large_in_scale_flag = 4

-- Display: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4_display.nt_large_in_scale_flag = function(value)
  return "Nt Large In Scale Flag: "..value
end

-- Dissect: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_large_in_scale_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_large_in_scale_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.nt_large_in_scale_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.nt_large_in_scale_flag, range, value, display)

  return offset + length, value
end

-- Size: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.market_closing_price_flag = 4

-- Display: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4_display.market_closing_price_flag = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.market_closing_price_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.market_closing_price_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.market_closing_price_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Size: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_conditions = 4

-- Display: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4_display.price_conditions = function(value)
  return "Price Conditions: "..value
end

-- Dissect: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_conditions = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_conditions
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_conditions(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_conditions, range, value, display)

  return offset + length, value
end

-- Size: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.contingent_transaction_flag = 4

-- Display: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.contingent_transaction_flag = function(value)
  return "Contingent Transaction Flag: "..value
end

-- Dissect: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.contingent_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.contingent_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.contingent_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.contingent_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.portfolio_transaction_flag = 4

-- Display: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.portfolio_transaction_flag = function(value)
  return "Portfolio Transaction Flag: "..value
end

-- Dissect: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.portfolio_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.portfolio_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.portfolio_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.portfolio_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_size_of.thirdcountry_trading_venue_of_execution = 4

-- Display: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_display.thirdcountry_trading_venue_of_execution = function(value)
  return "Thirdcountry Trading Venue Of Execution: "..value
end

-- Dissect: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_dissect.thirdcountry_trading_venue_of_execution = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.thirdcountry_trading_venue_of_execution
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.thirdcountry_trading_venue_of_execution(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution, range, value, display)

  return offset + length, value
end

-- Size: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicative_indicator = 1

-- Display: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.duplicative_indicator = function(value)
  return "Duplicative Indicator: "..value
end

-- Dissect: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.duplicative_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicative_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.deferral_enrichment_type = 1

-- Display: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4_display.deferral_enrichment_type = function(value)
  return "Deferral Enrichment Type: "..value
end

-- Dissect: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.deferral_enrichment_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.deferral_enrichment_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.deferral_enrichment_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Size: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4_size_of.post_trade_deferral_reason = 1

-- Display: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4_display.post_trade_deferral_reason = function(value)
  return "Post Trade Deferral Reason: "..value
end

-- Dissect: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4_dissect.post_trade_deferral_reason = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.post_trade_deferral_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.post_trade_deferral_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.algorithmic_indicator = 1

-- Display: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.algorithmic_indicator = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.algorithmic_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_formation_indicator = 1

-- Display: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.price_formation_indicator = function(value)
  return "Price Formation Indicator: "..value
end

-- Dissect: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_formation_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_formation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_formation_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.off_book_automated_indicator = 1

-- Display: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.off_book_automated_indicator = function(value)
  return "Off Book Automated Indicator: "..value
end

-- Dissect: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.off_book_automated_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_indicator = 1

-- Display: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.special_dividend_indicator = function(value)
  return "Special Dividend Indicator: "..value
end

-- Dissect: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_indicator = 1

-- Display: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.reference_price_indicator = function(value)
  return "Reference Price Indicator: "..value
end

-- Dissect: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.reference_price_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reference_price_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Size: Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.modification_indicator = 1

-- Display: Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.modification_indicator = function(value)
  if value == "C" then
    return "Modification Indicator: Trade Cancellation (C)"
  end
  if value == "A" then
    return "Modification Indicator: Trade Amendment (A)"
  end
  if value == "-" then
    return "Modification Indicator: New Trade (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.modification_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.modification_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.modification_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_indicator = 1

-- Display: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.agency_cross_indicator = function(value)
  if value == "X" then
    return "Agency Cross Indicator: Agency Cross Trade (X)"
  end
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.agency_cross_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.agency_cross_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4_size_of.negotiation_indicator = 1

-- Display: Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4_display.negotiation_indicator = function(value)
  if value == "1" then
    return "Negotiation Indicator: Negotiated Trade In Liquid Financial Instruments (1)"
  end
  if value == "2" then
    return "Negotiation Indicator: Negotiated Trade In Illiquid Financial Instruments (2)"
  end
  if value == "3" then
    return "Negotiation Indicator: Negotiated Trade Subject To Conditions Other Than The Current Market Price (3)"
  end
  if value == "7" then
    return "Negotiation Indicator: Negotiated Trade Larger Than Lis Brought Onto A Venue (7)"
  end
  if value == "8" then
    return "Negotiation Indicator: Negotiated Trade With Pretrade Transparency Waiver (8)"
  end
  if value == "-" then
    return "Negotiation Indicator: Not A Negotiated Trade (-)"
  end

  return "Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4_dissect.negotiation_indicator = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.negotiation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_category = 1

-- Display: Transaction Category
lseg_tradeecho_mifid_gtp_v24_4_display.transaction_category = function(value)
  if value == "R" then
    return "Transaction Category: Trade That Has Received Price Improvement (R)"
  end
  if value == "Z" then
    return "Transaction Category: Package Trade Excluding Exchange For Physicals (Z)"
  end
  if value == "Y" then
    return "Transaction Category: Exchange For Physicals Trade (Y)"
  end
  if value == "G" then
    return "Transaction Category: Rfmd Give Up Trade (G)"
  end
  if value == "H" then
    return "Transaction Category: Rfmd Give Up Trade Give And Exchange For Physicals Trade (H)"
  end
  if value == "-" then
    return "Transaction Category: None (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Trading Mode
lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_mode = 1

-- Display: Trading Mode
lseg_tradeecho_mifid_gtp_v24_4_display.trading_mode = function(value)
  if value == "5" then
    return "Trading Mode: On Exchange (5)"
  end
  if value == "6" then
    return "Trading Mode: Off Exchange (6)"
  end
  if value == "7" then
    return "Trading Mode: Systemic Internaliser (7)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
lseg_tradeecho_mifid_gtp_v24_4_dissect.trading_mode = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.trading_mode(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4_size_of.market_mechanism = 1

-- Display: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4_display.market_mechanism = function(value)
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4_dissect.market_mechanism = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.market_mechanism
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.market_mechanism(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_publication = 4

-- Display: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4_display.venue_of_publication = function(value)
  return "Venue Of Publication: "..value
end

-- Dissect: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_of_publication = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_publication
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_of_publication(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_publication, range, value, display)

  return offset + length, value
end

-- Size: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.emission_allowance_type = 4

-- Display: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4_display.emission_allowance_type = function(value)
  return "Emission Allowance Type: "..value
end

-- Dissect: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.emission_allowance_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.emission_allowance_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.emission_allowance_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Size: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_to_be_cleared = 1

-- Display: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4_display.transaction_to_be_cleared = function(value)
  if value == "0" then
    return "Transaction To Be Cleared: No (0)"
  end
  if value == "1" then
    return "Transaction To Be Cleared: Yes (1)"
  end

  return "Transaction To Be Cleared: Unknown("..value..")"
end

-- Dissect: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_to_be_cleared = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_to_be_cleared
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.transaction_to_be_cleared(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Size: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4_size_of.quantity_in_measurement_unit = 20

-- Display: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4_display.quantity_in_measurement_unit = function(value)
  return "Quantity In Measurement Unit: "..value
end

-- Dissect: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4_dissect.quantity_in_measurement_unit = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.quantity_in_measurement_unit
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.quantity_in_measurement_unit(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Size: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_measurement_unit_notation = 25

-- Display: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4_display.venue_measurement_unit_notation = function(value)
  return "Venue Measurement Unit Notation: "..value
end

-- Dissect: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_measurement_unit_notation = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_measurement_unit_notation
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_measurement_unit_notation(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_measurement_unit_notation, range, value, display)

  return offset + length, value
end

-- Size: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_book_definition_id = 1

-- Display: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4_display.venue_book_definition_id = function(value)
  if value == 0 then
    return "Venue Book Definition Id: Unspecified (0)"
  end
  if value == 1 then
    return "Venue Book Definition Id: Off Book (1)"
  end

  return "Venue Book Definition Id: Unknown("..value..")"
end

-- Dissect: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_book_definition_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_book_definition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_book_definition_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_book_definition_id, range, value, display)

  return offset + length, value
end

-- Size: Venue Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_type = 1

-- Display: Venue Type
lseg_tradeecho_mifid_gtp_v24_4_display.venue_type = function(value)
  if value == 0 then
    return "Venue Type: Unspecified (0)"
  end
  if value == 1 then
    return "Venue Type: Mtf (1)"
  end
  if value == 2 then
    return "Venue Type: Otf (2)"
  end
  if value == 3 then
    return "Venue Type: Regulated Market (3)"
  end

  return "Venue Type: Unknown("..value..")"
end

-- Dissect: Venue Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_type, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_1 = 1

-- Display: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.consecutive_aggregation_flag = 4

-- Display: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_display.consecutive_aggregation_flag = function(value)
  return "Consecutive Aggregation Flag: "..value
end

-- Dissect: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.consecutive_aggregation_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.consecutive_aggregation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.consecutive_aggregation_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.consecutive_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Size: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_for_sovereign_debt_flag = 4

-- Display: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4_display.volume_omission_for_sovereign_debt_flag = function(value)
  return "Volume Omission For Sovereign Debt Flag: "..value
end

-- Dissect: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_omission_for_sovereign_debt_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_for_sovereign_debt_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.volume_omission_for_sovereign_debt_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag, range, value, display)

  return offset + length, value
end

-- Size: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.indefinite_aggregation_flag = 4

-- Display: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_display.indefinite_aggregation_flag = function(value)
  return "Indefinite Aggregation Flag: "..value
end

-- Dissect: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.indefinite_aggregation_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.indefinite_aggregation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.indefinite_aggregation_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.indefinite_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Size: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.fa_full_details_flag = 4

-- Display: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_display.fa_full_details_flag = function(value)
  return "Fa Full Details Flag: "..value
end

-- Dissect: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.fa_full_details_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.fa_full_details_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.fa_full_details_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.fa_full_details_flag, range, value, display)

  return offset + length, value
end

-- Size: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.four_weeks_aggregation_flag = 4

-- Display: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_display.four_weeks_aggregation_flag = function(value)
  return "Four Weeks Aggregation Flag: "..value
end

-- Dissect: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.four_weeks_aggregation_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.four_weeks_aggregation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.four_weeks_aggregation_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.four_weeks_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Size: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.vo_full_details_flag = 4

-- Display: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_display.vo_full_details_flag = function(value)
  return "Vo Full Details Flag: "..value
end

-- Dissect: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.vo_full_details_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.vo_full_details_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.vo_full_details_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.vo_full_details_flag, range, value, display)

  return offset + length, value
end

-- Size: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_flag = 4

-- Display: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4_display.volume_omission_flag = function(value)
  return "Volume Omission Flag: "..value
end

-- Dissect: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_omission_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.volume_omission_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_flag, range, value, display)

  return offset + length, value
end

-- Size: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.da_full_details_flag = 4

-- Display: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_display.da_full_details_flag = function(value)
  return "Da Full Details Flag: "..value
end

-- Dissect: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.da_full_details_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.da_full_details_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.da_full_details_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.da_full_details_flag, range, value, display)

  return offset + length, value
end

-- Size: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.daily_aggregated_transaction_flag = 4

-- Display: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.daily_aggregated_transaction_flag = function(value)
  return "Daily Aggregated Transaction Flag: "..value
end

-- Dissect: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.daily_aggregated_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.daily_aggregated_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.daily_aggregated_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.daily_aggregated_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.ld_full_details_flag = 4

-- Display: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_display.ld_full_details_flag = function(value)
  return "Ld Full Details Flag: "..value
end

-- Dissect: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.ld_full_details_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.ld_full_details_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.ld_full_details_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.ld_full_details_flag, range, value, display)

  return offset + length, value
end

-- Size: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.limited_details_flag = 4

-- Display: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4_display.limited_details_flag = function(value)
  return "Limited Details Flag: "..value
end

-- Dissect: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.limited_details_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.limited_details_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.limited_details_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.limited_details_flag, range, value, display)

  return offset + length, value
end

-- Size: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.exchange_for_physicals_flag = 4

-- Display: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4_display.exchange_for_physicals_flag = function(value)
  return "Exchange For Physicals Flag: "..value
end

-- Dissect: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.exchange_for_physicals_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.exchange_for_physicals_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.exchange_for_physicals_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.exchange_for_physicals_flag, range, value, display)

  return offset + length, value
end

-- Size: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicate_flag = 4

-- Display: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4_display.duplicate_flag = function(value)
  return "Duplicate Flag: "..value
end

-- Dissect: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.duplicate_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicate_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.duplicate_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.duplicate_flag, range, value, display)

  return offset + length, value
end

-- Size: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.amendment_flag = 4

-- Display: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4_display.amendment_flag = function(value)
  return "Amendment Flag: "..value
end

-- Dissect: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.amendment_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.amendment_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.amendment_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.amendment_flag, range, value, display)

  return offset + length, value
end

-- Size: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.cancellation_flag = 4

-- Display: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4_display.cancellation_flag = function(value)
  return "Cancellation Flag: "..value
end

-- Dissect: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.cancellation_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.cancellation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.cancellation_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.cancellation_flag, range, value, display)

  return offset + length, value
end

-- Size: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_improvement_flag = 4

-- Display: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4_display.price_improvement_flag = function(value)
  return "Price Improvement Flag: "..value
end

-- Dissect: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_improvement_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_improvement_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_improvement_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_improvement_flag, range, value, display)

  return offset + length, value
end

-- Size: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_illiquid_flag = 4

-- Display: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4_display.pt_illiquid_flag = function(value)
  return "Pt Illiquid Flag: "..value
end

-- Dissect: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.pt_illiquid_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_illiquid_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.pt_illiquid_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.pt_illiquid_flag, range, value, display)

  return offset + length, value
end

-- Size: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.algo_transaction_flag = 4

-- Display: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.algo_transaction_flag = function(value)
  return "Algo Transaction Flag: "..value
end

-- Dissect: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.algo_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.algo_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.algo_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.algo_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_price_conditions_flag = 4

-- Display: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4_display.nt_price_conditions_flag = function(value)
  return "Nt Price Conditions Flag: "..value
end

-- Dissect: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_price_conditions_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_price_conditions_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.nt_price_conditions_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.nt_price_conditions_flag, range, value, display)

  return offset + length, value
end

-- Size: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_liquidity_flag = 4

-- Display: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4_display.nt_liquidity_flag = function(value)
  return "Nt Liquidity Flag: "..value
end

-- Dissect: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_liquidity_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_liquidity_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.nt_liquidity_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.nt_liquidity_flag, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_transaction_flag = 4

-- Display: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.reference_price_transaction_flag = function(value)
  return "Reference Price Transaction Flag: "..value
end

-- Dissect: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.reference_price_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reference_price_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_deferral_reason_flag = 4

-- Display: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4_display.pt_deferral_reason_flag = function(value)
  return "Pt Deferral Reason Flag: "..value
end

-- Dissect: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.pt_deferral_reason_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_deferral_reason_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.pt_deferral_reason_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.pt_deferral_reason_flag, range, value, display)

  return offset + length, value
end

-- Size: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_flag = 4

-- Display: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4_display.special_dividend_flag = function(value)
  return "Special Dividend Flag: "..value
end

-- Dissect: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.special_dividend_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.special_dividend_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_flag, range, value, display)

  return offset + length, value
end

-- Size: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_contribution_to_discovery = 4

-- Display: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4_display.non_price_contribution_to_discovery = function(value)
  return "Non Price Contribution To Discovery: "..value
end

-- Dissect: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4_dissect.non_price_contribution_to_discovery = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_contribution_to_discovery
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.non_price_contribution_to_discovery(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_contribution_to_discovery, range, value, display)

  return offset + length, value
end

-- Size: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_forming_transactions_flag = 4

-- Display: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4_display.non_price_forming_transactions_flag = function(value)
  return "Non Price Forming Transactions Flag: "..value
end

-- Dissect: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.non_price_forming_transactions_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_forming_transactions_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.non_price_forming_transactions_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_forming_transactions_flag, range, value, display)

  return offset + length, value
end

-- Size: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_trade_flag = 4

-- Display: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4_display.agency_cross_trade_flag = function(value)
  return "Agency Cross Trade Flag: "..value
end

-- Dissect: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.agency_cross_trade_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_trade_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.agency_cross_trade_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_trade_flag, range, value, display)

  return offset + length, value
end

-- Size: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_size_of.benchmark_transaction_flag = 4

-- Display: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_display.benchmark_transaction_flag = function(value)
  return "Benchmark Transaction Flag: "..value
end

-- Dissect: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4_dissect.benchmark_transaction_flag = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.benchmark_transaction_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.benchmark_transaction_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.benchmark_transaction_flag, range, value, display)

  return offset + length, value
end

-- Size: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4_size_of.publication_date_and_time = 27

-- Display: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4_display.publication_date_and_time = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4_dissect.publication_date_and_time = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.publication_date_and_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.publication_date_and_time(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Size: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_execution = 4

-- Display: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_display.venue_of_execution = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_of_execution = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_execution
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_of_execution(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_currency = 3

-- Display: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4_display.notional_currency = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4_dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_amount = 20

-- Display: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4_display.notional_amount = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4_dissect.notional_amount = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_amount
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.notional_amount(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Price Currency
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_currency = 3

-- Display: Price Currency
lseg_tradeecho_mifid_gtp_v24_4_display.price_currency = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_currency = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_currency(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Size: Price Notation
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_notation = 4

-- Display: Price Notation
lseg_tradeecho_mifid_gtp_v24_4_display.price_notation = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value (MONE)"
  end
  if value == "PERC" then
    return "Price Notation: Percentage (PERC)"
  end
  if value == "YIEL" then
    return "Price Notation: Yield (YIEL)"
  end
  if value == "BAPO" then
    return "Price Notation: Basis Point (BAPO)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_notation = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_notation
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_notation(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Size: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code = 12

-- Display: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4_display.instrument_identification_code = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_identification_code = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.instrument_identification_code(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code_type = 4

-- Display: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4_display.instrument_identification_code_type = function(value)
  if value == "ISIN" then
    return "Instrument Identification Code Type: International Securities Identification Number (ISIN)"
  end

  return "Instrument Identification Code Type: Unknown("..value..")"
end

-- Dissect: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_identification_code_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.instrument_identification_code_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_trading_date_and_time = 27

-- Display: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_trading_date_and_time = function(value)
  return "Mi Fid Trading Date And Time: "..value
end

-- Dissect: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_trading_date_and_time = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_trading_date_and_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_trading_date_and_time(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_quantity = 20

-- Display: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_quantity = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_quantity = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_price = 20

-- Display: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_price = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_price = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.mi_fid_price(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Size: Source Venue
lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue = 2

-- Display: Source Venue
lseg_tradeecho_mifid_gtp_v24_4_display.source_venue = function(value)
  return "Source Venue: "..value
end

-- Dissect: Source Venue
lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.source_venue(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Size: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_8 = 8

-- Display: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Size: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4_size_of.total_number_of_transactions = 4

-- Display: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4_display.total_number_of_transactions = function(value)
  return "Total Number Of Transactions: "..value
end

-- Dissect: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4_dissect.total_number_of_transactions = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.total_number_of_transactions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.total_number_of_transactions(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.total_number_of_transactions, range, value, display)

  return offset + length, value
end

-- Size: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_identification_code = 52

-- Display: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4_display.transaction_identification_code = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_identification_code = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_identification_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.transaction_identification_code(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument = 8

-- Display: Instrument
lseg_tradeecho_mifid_gtp_v24_4_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.instrument(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp = 8

-- Display: Timestamp
lseg_tradeecho_mifid_gtp_v24_4_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4_size_of.mifid_ii_trade_report = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_identification_code

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.total_number_of_transactions

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_8

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_price

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_quantity

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.mi_fid_trading_date_and_time

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code_type

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_identification_code

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_notation

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_currency

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_amount

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.notional_currency

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_execution

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_execution

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.publication_date_and_time

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.benchmark_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_trade_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_forming_transactions_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.non_price_contribution_to_discovery

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_deferral_reason_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_liquidity_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_price_conditions_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.algo_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.pt_illiquid_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_improvement_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.cancellation_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.amendment_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicate_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.exchange_for_physicals_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.limited_details_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.ld_full_details_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.daily_aggregated_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.da_full_details_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.vo_full_details_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.four_weeks_aggregation_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.fa_full_details_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.indefinite_aggregation_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_omission_for_sovereign_debt_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.consecutive_aggregation_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_1

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_type

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_book_definition_id

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_measurement_unit_notation

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.quantity_in_measurement_unit

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_to_be_cleared

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.emission_allowance_type

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_of_publication

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.market_mechanism

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_mode

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.transaction_category

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.negotiation_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.agency_cross_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.modification_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reference_price_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.special_dividend_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.off_book_automated_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_formation_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.algorithmic_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.post_trade_deferral_reason

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.deferral_enrichment_type

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.duplicative_indicator

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.thirdcountry_trading_venue_of_execution

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.portfolio_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.contingent_transaction_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_conditions

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.market_closing_price_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_large_in_scale_flag

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.nt_pre_trade_transparency_flag

  return index
end

-- Display: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4_display.mifid_ii_trade_report = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4_dissect.mifid_ii_trade_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_identification_code(buffer, index, packet, parent)

  -- Total Number Of Transactions: 4 Byte Unsigned Fixed Width Integer
  index, total_number_of_transactions = lseg_tradeecho_mifid_gtp_v24_4_dissect.total_number_of_transactions(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_8(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_price(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_quantity(buffer, index, packet, parent)

  -- Mi Fid Trading Date And Time: 27 Byte Ascii String
  index, mi_fid_trading_date_and_time = lseg_tradeecho_mifid_gtp_v24_4_dissect.mi_fid_trading_date_and_time(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String Enum with 1 values
  index, instrument_identification_code_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_identification_code_type(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_identification_code(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String Enum with 4 values
  index, price_notation = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_notation(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_currency(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_tradeecho_mifid_gtp_v24_4_dissect.notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_tradeecho_mifid_gtp_v24_4_dissect.notional_currency(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_of_execution(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_of_execution(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_tradeecho_mifid_gtp_v24_4_dissect.publication_date_and_time(buffer, index, packet, parent)

  -- Benchmark Transaction Flag: 4 Byte Ascii String
  index, benchmark_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.benchmark_transaction_flag(buffer, index, packet, parent)

  -- Agency Cross Trade Flag: 4 Byte Ascii String
  index, agency_cross_trade_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.agency_cross_trade_flag(buffer, index, packet, parent)

  -- Non Price Forming Transactions Flag: 4 Byte Ascii String
  index, non_price_forming_transactions_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.non_price_forming_transactions_flag(buffer, index, packet, parent)

  -- Non Price Contribution To Discovery: 4 Byte Ascii String
  index, non_price_contribution_to_discovery = lseg_tradeecho_mifid_gtp_v24_4_dissect.non_price_contribution_to_discovery(buffer, index, packet, parent)

  -- Special Dividend Flag: 4 Byte Ascii String
  index, special_dividend_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.special_dividend_flag(buffer, index, packet, parent)

  -- Pt Deferral Reason Flag: 4 Byte Ascii String
  index, pt_deferral_reason_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.pt_deferral_reason_flag(buffer, index, packet, parent)

  -- Reference Price Transaction Flag: 4 Byte Ascii String
  index, reference_price_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.reference_price_transaction_flag(buffer, index, packet, parent)

  -- Nt Liquidity Flag: 4 Byte Ascii String
  index, nt_liquidity_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_liquidity_flag(buffer, index, packet, parent)

  -- Nt Price Conditions Flag: 4 Byte Ascii String
  index, nt_price_conditions_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_price_conditions_flag(buffer, index, packet, parent)

  -- Algo Transaction Flag: 4 Byte Ascii String
  index, algo_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.algo_transaction_flag(buffer, index, packet, parent)

  -- Pt Illiquid Flag: 4 Byte Ascii String
  index, pt_illiquid_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.pt_illiquid_flag(buffer, index, packet, parent)

  -- Price Improvement Flag: 4 Byte Ascii String
  index, price_improvement_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_improvement_flag(buffer, index, packet, parent)

  -- Cancellation Flag: 4 Byte Ascii String
  index, cancellation_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.cancellation_flag(buffer, index, packet, parent)

  -- Amendment Flag: 4 Byte Ascii String
  index, amendment_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.amendment_flag(buffer, index, packet, parent)

  -- Duplicate Flag: 4 Byte Ascii String
  index, duplicate_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.duplicate_flag(buffer, index, packet, parent)

  -- Exchange For Physicals Flag: 4 Byte Ascii String
  index, exchange_for_physicals_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.exchange_for_physicals_flag(buffer, index, packet, parent)

  -- Limited Details Flag: 4 Byte Ascii String
  index, limited_details_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.limited_details_flag(buffer, index, packet, parent)

  -- Ld Full Details Flag: 4 Byte Ascii String
  index, ld_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.ld_full_details_flag(buffer, index, packet, parent)

  -- Daily Aggregated Transaction Flag: 4 Byte Ascii String
  index, daily_aggregated_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.daily_aggregated_transaction_flag(buffer, index, packet, parent)

  -- Da Full Details Flag: 4 Byte Ascii String
  index, da_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.da_full_details_flag(buffer, index, packet, parent)

  -- Volume Omission Flag: 4 Byte Ascii String
  index, volume_omission_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_omission_flag(buffer, index, packet, parent)

  -- Vo Full Details Flag: 4 Byte Ascii String
  index, vo_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.vo_full_details_flag(buffer, index, packet, parent)

  -- Four Weeks Aggregation Flag: 4 Byte Ascii String
  index, four_weeks_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.four_weeks_aggregation_flag(buffer, index, packet, parent)

  -- Fa Full Details Flag: 4 Byte Ascii String
  index, fa_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.fa_full_details_flag(buffer, index, packet, parent)

  -- Indefinite Aggregation Flag: 4 Byte Ascii String
  index, indefinite_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.indefinite_aggregation_flag(buffer, index, packet, parent)

  -- Volume Omission For Sovereign Debt Flag: 4 Byte Ascii String
  index, volume_omission_for_sovereign_debt_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_omission_for_sovereign_debt_flag(buffer, index, packet, parent)

  -- Consecutive Aggregation Flag: 4 Byte Ascii String
  index, consecutive_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.consecutive_aggregation_flag(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_1(buffer, index, packet, parent)

  -- Venue Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, venue_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_type(buffer, index, packet, parent)

  -- Venue Book Definition Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, venue_book_definition_id = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_book_definition_id(buffer, index, packet, parent)

  -- Venue Measurement Unit Notation: 25 Byte Ascii String
  index, venue_measurement_unit_notation = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_measurement_unit_notation(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: 20 Byte Ascii String
  index, quantity_in_measurement_unit = lseg_tradeecho_mifid_gtp_v24_4_dissect.quantity_in_measurement_unit(buffer, index, packet, parent)

  -- Transaction To Be Cleared: 1 Byte Ascii String Enum with 2 values
  index, transaction_to_be_cleared = lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_to_be_cleared(buffer, index, packet, parent)

  -- Emission Allowance Type: 4 Byte Ascii String
  index, emission_allowance_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.emission_allowance_type(buffer, index, packet, parent)

  -- Venue Of Publication: 4 Byte Ascii String
  index, venue_of_publication = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_of_publication(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 1 values
  index, market_mechanism = lseg_tradeecho_mifid_gtp_v24_4_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 3 values
  index, trading_mode = lseg_tradeecho_mifid_gtp_v24_4_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 6 values
  index, transaction_category = lseg_tradeecho_mifid_gtp_v24_4_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 6 values
  index, negotiation_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.negotiation_indicator(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 2 values
  index, agency_cross_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.agency_cross_indicator(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.modification_indicator(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String
  index, reference_price_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.reference_price_indicator(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String
  index, special_dividend_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.special_dividend_indicator(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String
  index, off_book_automated_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.off_book_automated_indicator(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String
  index, price_formation_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_formation_indicator(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String
  index, algorithmic_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String
  index, post_trade_deferral_reason = lseg_tradeecho_mifid_gtp_v24_4_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String
  index, deferral_enrichment_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.deferral_enrichment_type(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String
  index, duplicative_indicator = lseg_tradeecho_mifid_gtp_v24_4_dissect.duplicative_indicator(buffer, index, packet, parent)

  -- Thirdcountry Trading Venue Of Execution: 4 Byte Ascii String
  index, thirdcountry_trading_venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4_dissect.thirdcountry_trading_venue_of_execution(buffer, index, packet, parent)

  -- Portfolio Transaction Flag: 4 Byte Ascii String
  index, portfolio_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.portfolio_transaction_flag(buffer, index, packet, parent)

  -- Contingent Transaction Flag: 4 Byte Ascii String
  index, contingent_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.contingent_transaction_flag(buffer, index, packet, parent)

  -- Price Conditions: 4 Byte Ascii String
  index, price_conditions = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_conditions(buffer, index, packet, parent)

  -- Market Closing Price Flag: 4 Byte Ascii String
  index, market_closing_price_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.market_closing_price_flag(buffer, index, packet, parent)

  -- Nt Large In Scale Flag: 4 Byte Ascii String
  index, nt_large_in_scale_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_large_in_scale_flag(buffer, index, packet, parent)

  -- Nt Pre Trade Transparency Flag: 4 Byte Ascii String
  index, nt_pre_trade_transparency_flag = lseg_tradeecho_mifid_gtp_v24_4_dissect.nt_pre_trade_transparency_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4_dissect.mifid_ii_trade_report = function(buffer, offset, packet, parent)
  if show.mifid_ii_trade_report then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.mifid_ii_trade_report, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.mifid_ii_trade_report_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.mifid_ii_trade_report(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.mifid_ii_trade_report_fields(buffer, offset, packet, element)
  end
end

-- Size: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover_onbook_only = 8

-- Display: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_display.turnover_onbook_only = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
translate.turnover_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_dissect.turnover_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.turnover_onbook_only(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.turnover_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Turnover
lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover = 8

-- Display: Turnover
lseg_tradeecho_mifid_gtp_v24_4_display.turnover = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
translate.turnover = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_tradeecho_mifid_gtp_v24_4_dissect.turnover = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.turnover(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.turnover(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.turnover, range, value, display)

  return offset + length, value
end

-- Size: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades_onbook_only = 4

-- Display: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_display.number_of_trades_onbook_only = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_dissect.number_of_trades_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades_onbook_only
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.number_of_trades_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades = 4

-- Display: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4_display.number_of_trades = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4_dissect.number_of_trades = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.number_of_trades(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Size: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap_onbook_only = 8

-- Display: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_display.vwap_onbook_only = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
translate.vwap_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_dissect.vwap_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.vwap_onbook_only(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.vwap_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Vwap
lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap = 8

-- Display: Vwap
lseg_tradeecho_mifid_gtp_v24_4_display.vwap = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
translate.vwap = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_tradeecho_mifid_gtp_v24_4_dissect.vwap = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.vwap(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.vwap(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.vwap, range, value, display)

  return offset + length, value
end

-- Size: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_onbook_only = 8

-- Display: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_display.volume_onbook_only = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
translate.volume_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.volume_onbook_only(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.volume_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Volume
lseg_tradeecho_mifid_gtp_v24_4_size_of.volume = 8

-- Display: Volume
lseg_tradeecho_mifid_gtp_v24_4_display.volume = function(value)
  return "Volume: "..value
end

-- Translate: Volume
translate.volume = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_tradeecho_mifid_gtp_v24_4_dissect.volume = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.volume
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.volume(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.volume(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Statistics
lseg_tradeecho_mifid_gtp_v24_4_size_of.statistics = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.volume

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.volume_onbook_only

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.vwap_onbook_only

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.number_of_trades_onbook_only

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.turnover_onbook_only

  return index
end

-- Display: Statistics
lseg_tradeecho_mifid_gtp_v24_4_display.statistics = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics
lseg_tradeecho_mifid_gtp_v24_4_dissect.statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = lseg_tradeecho_mifid_gtp_v24_4_dissect.volume(buffer, index, packet, parent)

  -- Volume Onbook Only: 8 Byte Unsigned Fixed Width Integer
  index, volume_onbook_only = lseg_tradeecho_mifid_gtp_v24_4_dissect.volume_onbook_only(buffer, index, packet, parent)

  -- Vwap: 8 Byte Signed Fixed Width Integer
  index, vwap = lseg_tradeecho_mifid_gtp_v24_4_dissect.vwap(buffer, index, packet, parent)

  -- Vwap Onbook Only: 8 Byte Signed Fixed Width Integer
  index, vwap_onbook_only = lseg_tradeecho_mifid_gtp_v24_4_dissect.vwap_onbook_only(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = lseg_tradeecho_mifid_gtp_v24_4_dissect.number_of_trades(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades_onbook_only = lseg_tradeecho_mifid_gtp_v24_4_dissect.number_of_trades_onbook_only(buffer, index, packet, parent)

  -- Turnover: 8 Byte Signed Fixed Width Integer
  index, turnover = lseg_tradeecho_mifid_gtp_v24_4_dissect.turnover(buffer, index, packet, parent)

  -- Turnover Onbook Only: 8 Byte Signed Fixed Width Integer
  index, turnover_onbook_only = lseg_tradeecho_mifid_gtp_v24_4_dissect.turnover_onbook_only(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics
lseg_tradeecho_mifid_gtp_v24_4_dissect.statistics = function(buffer, offset, packet, parent)
  if show.statistics then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.statistics, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.statistics_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.statistics(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.statistics_fields(buffer, offset, packet, element)
  end
end

-- Size: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.order_book_type = 1

-- Display: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4_display.order_book_type = function(value)
  if value == 1 then
    return "Order Book Type: Si Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Off Book (2)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.order_book_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.order_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.order_book_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Size: New End Time
lseg_tradeecho_mifid_gtp_v24_4_size_of.new_end_time = 6

-- Display: New End Time
lseg_tradeecho_mifid_gtp_v24_4_display.new_end_time = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_tradeecho_mifid_gtp_v24_4_dissect.new_end_time = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.new_end_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.new_end_time(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Size: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4_size_of.session_change_reason = 1

-- Display: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4_display.session_change_reason = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4_dissect.session_change_reason = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.session_change_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.session_change_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_status = 1

-- Display: Trading Status
lseg_tradeecho_mifid_gtp_v24_4_display.trading_status = function(value)
  if value == "1" then
    return "Trading Status: Inactive Or Underlying Suspended (1)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "3" then
    return "Trading Status: Active (3)"
  end
  if value == "P" then
    return "Trading Status: Regulatory Halt (P)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_tradeecho_mifid_gtp_v24_4_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_status = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.trading_status

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.session_change_reason

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.new_end_time

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4_display.instrument_status = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 4 values
  index, trading_status = lseg_tradeecho_mifid_gtp_v24_4_dissect.trading_status(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, session_change_reason = lseg_tradeecho_mifid_gtp_v24_4_dissect.session_change_reason(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_tradeecho_mifid_gtp_v24_4_dissect.new_end_time(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_book_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_status = function(buffer, offset, packet, parent)
  if show.instrument_status then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_status, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_status_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.instrument_status(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_status_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_25 = 25

-- Display: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4_display.reserved_25 = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_25 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_25
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reserved_25(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Size: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4_size_of.average_daily_turnover = 8

-- Display: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4_display.average_daily_turnover = function(value)
  return "Average Daily Turnover: "..value
end

-- Translate: Average Daily Turnover
translate.average_daily_turnover = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4_dissect.average_daily_turnover = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.average_daily_turnover
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.average_daily_turnover(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.average_daily_turnover(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.average_daily_turnover, range, value, display)

  return offset + length, value
end

-- Size: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_5 = 5

-- Display: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4_display.reserved_5 = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_5 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reserved_5(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Size: Currency
lseg_tradeecho_mifid_gtp_v24_4_size_of.currency = 3

-- Display: Currency
lseg_tradeecho_mifid_gtp_v24_4_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_tradeecho_mifid_gtp_v24_4_dissect.currency = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.currency(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_23 = 23

-- Display: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4_display.reserved_23 = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_23 = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_23
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.reserved_23(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Size: Segment
lseg_tradeecho_mifid_gtp_v24_4_size_of.segment = 6

-- Display: Segment
lseg_tradeecho_mifid_gtp_v24_4_display.segment = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_tradeecho_mifid_gtp_v24_4_dissect.segment = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.segment
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.segment(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Size: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_size_of.static_circuit_breaker_tolerances = 8

-- Display: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_display.static_circuit_breaker_tolerances = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
translate.static_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_dissect.static_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.static_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.static_circuit_breaker_tolerances(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.static_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_display.dynamic_circuit_breaker_tolerances = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
translate.dynamic_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.dynamic_circuit_breaker_tolerances(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.dynamic_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4_size_of.price_band_tolerances = 8

-- Display: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4_display.price_band_tolerances = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
translate.price_band_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4_dissect.price_band_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.price_band_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_band_tolerances(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.price_band_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Tick Id
lseg_tradeecho_mifid_gtp_v24_4_size_of.tick_id = 2

-- Display: Tick Id
lseg_tradeecho_mifid_gtp_v24_4_display.tick_id = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_tradeecho_mifid_gtp_v24_4_dissect.tick_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.tick_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.tick_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Size: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_instrument_id = 11

-- Display: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4_display.venue_instrument_id = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_instrument_id = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.venue_instrument_id(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4_size_of.allowed_book_types = 1

-- Display: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4_display.allowed_book_types = function(buffer, packet, parent)
  local display = ""

  -- Is Si Quote Book flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Si Quote Book|"
  end
  -- Is Off Book flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Off Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4_dissect.allowed_book_types_bits = function(buffer, offset, packet, parent)

  -- Si Quote Book: 1 Bit
  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.si_quote_book, buffer(offset, 1))

  -- Off Book: 1 Bit
  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.off_book, buffer(offset, 1))

  -- Unused 6: 6 Bit
  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.unused_6, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4_dissect.allowed_book_types = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.allowed_book_types(range, packet, parent)
  local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_tradeecho_mifid_gtp_v24_4_dissect.allowed_book_types_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Isin
lseg_tradeecho_mifid_gtp_v24_4_size_of.isin = 12

-- Display: Isin
lseg_tradeecho_mifid_gtp_v24_4_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_tradeecho_mifid_gtp_v24_4_dissect.isin = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.isin(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_directory = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.isin

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.allowed_book_types

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.venue_instrument_id

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.tick_id

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.price_band_tolerances

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.static_circuit_breaker_tolerances

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.segment

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_23

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.currency

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_5

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.average_daily_turnover

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.reserved_25

  return index
end

-- Display: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4_display.instrument_directory = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_tradeecho_mifid_gtp_v24_4_dissect.isin(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_tradeecho_mifid_gtp_v24_4_dissect.allowed_book_types(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_tradeecho_mifid_gtp_v24_4_dissect.venue_instrument_id(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_tradeecho_mifid_gtp_v24_4_dissect.tick_id(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_tradeecho_mifid_gtp_v24_4_dissect.price_band_tolerances(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_tradeecho_mifid_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_tradeecho_mifid_gtp_v24_4_dissect.static_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_tradeecho_mifid_gtp_v24_4_dissect.segment(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_23(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_tradeecho_mifid_gtp_v24_4_dissect.currency(buffer, index, packet, parent)

  -- Reserved 5: 5 Byte
  index, reserved_5 = lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_5(buffer, index, packet, parent)

  -- Average Daily Turnover: 8 Byte Signed Fixed Width Integer
  index, average_daily_turnover = lseg_tradeecho_mifid_gtp_v24_4_dissect.average_daily_turnover(buffer, index, packet, parent)

  -- Reserved 25: 25 Byte
  index, reserved_25 = lseg_tradeecho_mifid_gtp_v24_4_dissect.reserved_25(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_directory = function(buffer, offset, packet, parent)
  if show.instrument_directory then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_directory, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_directory_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.instrument_directory(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_directory_fields(buffer, offset, packet, element)
  end
end

-- Size: Event Code
lseg_tradeecho_mifid_gtp_v24_4_size_of.event_code = 1

-- Display: Event Code
lseg_tradeecho_mifid_gtp_v24_4_display.event_code = function(value)
  if value == "T" then
    return "Event Code: Start Of Open (T)"
  end
  if value == "P" then
    return "Event Code: Start Of Pre Close (P)"
  end
  if value == "11" then
    return "Event Code: Trade Echo (11)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_tradeecho_mifid_gtp_v24_4_dissect.event_code = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.event_code(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event
lseg_tradeecho_mifid_gtp_v24_4_size_of.system_event = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.timestamp

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.event_code

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.source_venue

  return index
end

-- Display: System Event
lseg_tradeecho_mifid_gtp_v24_4_display.system_event = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event
lseg_tradeecho_mifid_gtp_v24_4_dissect.system_event_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 3 values
  index, event_code = lseg_tradeecho_mifid_gtp_v24_4_dissect.event_code(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
lseg_tradeecho_mifid_gtp_v24_4_dissect.system_event = function(buffer, offset, packet, parent)
  if show.system_event then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.system_event, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.system_event_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.system_event(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.system_event_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
lseg_tradeecho_mifid_gtp_v24_4_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event
  if message_type == 0x53 then
    return lseg_tradeecho_mifid_gtp_v24_4_size_of.system_event(buffer, offset)
  end
  -- Size of Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_directory(buffer, offset)
  end
  -- Size of Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_mifid_gtp_v24_4_size_of.instrument_status(buffer, offset)
  end
  -- Size of Statistics
  if message_type == 0x77 then
    return lseg_tradeecho_mifid_gtp_v24_4_size_of.statistics(buffer, offset)
  end
  -- Size of Mifid Ii Trade Report
  if message_type == 0x54 then
    return lseg_tradeecho_mifid_gtp_v24_4_size_of.mifid_ii_trade_report(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_tradeecho_mifid_gtp_v24_4_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_tradeecho_mifid_gtp_v24_4_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event
  if message_type == 0x53 then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.system_event(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_directory(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.instrument_status(buffer, offset, packet, parent)
  end
  -- Dissect Statistics
  if message_type == 0x77 then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.statistics(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Report
  if message_type == 0x54 then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.mifid_ii_trade_report(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_tradeecho_mifid_gtp_v24_4_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_tradeecho_mifid_gtp_v24_4_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.payload(buffer, packet, parent)
  local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.payload, range, display)

  return lseg_tradeecho_mifid_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
lseg_tradeecho_mifid_gtp_v24_4_size_of.message_type = 1

-- Display: Message Type
lseg_tradeecho_mifid_gtp_v24_4_display.message_type = function(value)
  if value == 0x53 then
    return "Message Type: System Event (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status (0x48)"
  end
  if value == 0x77 then
    return "Message Type: Statistics (0x77)"
  end
  if value == 0x54 then
    return "Message Type: Mifid Ii Trade Report (0x54)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lseg_tradeecho_mifid_gtp_v24_4_size_of.message_length = 1

-- Display: Message Length
lseg_tradeecho_mifid_gtp_v24_4_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lseg_tradeecho_mifid_gtp_v24_4_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.message_length

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.message_type

  return index
end

-- Display: Message Header
lseg_tradeecho_mifid_gtp_v24_4_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_tradeecho_mifid_gtp_v24_4_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = lseg_tradeecho_mifid_gtp_v24_4_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Message
lseg_tradeecho_mifid_gtp_v24_4_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_tradeecho_mifid_gtp_v24_4_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_tradeecho_mifid_gtp_v24_4_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = lseg_tradeecho_mifid_gtp_v24_4_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_tradeecho_mifid_gtp_v24_4_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.message(buffer, packet, parent)
    parent = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message, range, display)
  end

  return lseg_tradeecho_mifid_gtp_v24_4_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4_size_of.sequence_number = 4

-- Display: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4_size_of.market_data_group = 1

-- Display: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lseg_tradeecho_mifid_gtp_v24_4_size_of.message_count = 1

-- Display: Message Count
lseg_tradeecho_mifid_gtp_v24_4_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_tradeecho_mifid_gtp_v24_4_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lseg_tradeecho_mifid_gtp_v24_4_size_of.length = 2

-- Display: Length
lseg_tradeecho_mifid_gtp_v24_4_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_tradeecho_mifid_gtp_v24_4_dissect.length = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4_display.length(value, buffer, offset, packet, parent)

  parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lseg_tradeecho_mifid_gtp_v24_4_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.length

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.message_count

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.market_data_group

  index = index + lseg_tradeecho_mifid_gtp_v24_4_size_of.sequence_number

  return index
end

-- Display: Unit Header
lseg_tradeecho_mifid_gtp_v24_4_display.unit_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_tradeecho_mifid_gtp_v24_4_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_tradeecho_mifid_gtp_v24_4_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_tradeecho_mifid_gtp_v24_4_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_tradeecho_mifid_gtp_v24_4_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_tradeecho_mifid_gtp_v24_4_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_tradeecho_mifid_gtp_v24_4_dissect.unit_header = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    local element = parent:add(lseg_tradeecho_mifid_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4_display.unit_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
lseg_tradeecho_mifid_gtp_v24_4_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_tradeecho_mifid_gtp_v24_4_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_tradeecho_mifid_gtp_v24_4_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lseg_tradeecho_mifid_gtp_v24_4.init()
end

-- Dissector for Lseg TradeEcho Mifid Gtp 24.4
function lseg_tradeecho_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lseg_tradeecho_mifid_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(lseg_tradeecho_mifid_gtp_v24_4, buffer(), lseg_tradeecho_mifid_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_tradeecho_mifid_gtp_v24_4_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lseg_tradeecho_mifid_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lseg_tradeecho_mifid_gtp_v24_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg TradeEcho Mifid Gtp 24.4
local function lseg_tradeecho_mifid_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lseg_tradeecho_mifid_gtp_v24_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lseg_tradeecho_mifid_gtp_v24_4
  lseg_tradeecho_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg TradeEcho Mifid Gtp 24.4
lseg_tradeecho_mifid_gtp_v24_4:register_heuristic("udp", lseg_tradeecho_mifid_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 24.4
--   Date: Wednesday, April 24, 2024
--   Specification: gtp-002-technical-guide-tradecho-issue-24-4.pdf
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
