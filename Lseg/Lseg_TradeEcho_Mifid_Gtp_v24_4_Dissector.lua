-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid Gtp 24.4 Protocol
local omi_lseg_tradeecho_mifid_gtp_v24_4 = Proto("Lseg.TradeEcho.Mifid.Gtp.v24.4.Lua", "Lseg TradeEcho Mifid Gtp 24.4")

-- Protocol table
local lseg_tradeecho_mifid_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid Gtp 24.4 Fields
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.tradeecho.mifid.gtp.v24.4.agencycrossindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_trade_flag = ProtoField.new("Agency Cross Trade Flag", "lseg.tradeecho.mifid.gtp.v24.4.agencycrosstradeflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.algo_transaction_flag = ProtoField.new("Algo Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.algotransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.tradeecho.mifid.gtp.v24.4.algorithmicindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.tradeecho.mifid.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.amendment_flag = ProtoField.new("Amendment Flag", "lseg.tradeecho.mifid.gtp.v24.4.amendmentflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.average_daily_turnover = ProtoField.new("Average Daily Turnover", "lseg.tradeecho.mifid.gtp.v24.4.averagedailyturnover", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.benchmark_transaction_flag = ProtoField.new("Benchmark Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.benchmarktransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.cancellation_flag = ProtoField.new("Cancellation Flag", "lseg.tradeecho.mifid.gtp.v24.4.cancellationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.consecutive_aggregation_flag = ProtoField.new("Consecutive Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.consecutiveaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.contingent_transaction_flag = ProtoField.new("Contingent Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.contingenttransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.tradeecho.mifid.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.da_full_details_flag = ProtoField.new("Da Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.dafulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.daily_aggregated_transaction_flag = ProtoField.new("Daily Aggregated Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.dailyaggregatedtransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.tradeecho.mifid.gtp.v24.4.deferralenrichmenttype", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.duplicate_flag = ProtoField.new("Duplicate Flag", "lseg.tradeecho.mifid.gtp.v24.4.duplicateflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.tradeecho.mifid.gtp.v24.4.duplicativeindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.emission_allowance_type = ProtoField.new("Emission Allowance Type", "lseg.tradeecho.mifid.gtp.v24.4.emissionallowancetype", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.tradeecho.mifid.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.exchange_for_physicals_flag = ProtoField.new("Exchange For Physicals Flag", "lseg.tradeecho.mifid.gtp.v24.4.exchangeforphysicalsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.fa_full_details_flag = ProtoField.new("Fa Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.fafulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.four_weeks_aggregation_flag = ProtoField.new("Four Weeks Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.fourweeksaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.indefinite_aggregation_flag = ProtoField.new("Indefinite Aggregation Flag", "lseg.tradeecho.mifid.gtp.v24.4.indefiniteaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.tradeecho.mifid.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.tradeecho.mifid.gtp.v24.4.instrumentidentificationcode", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.tradeecho.mifid.gtp.v24.4.instrumentidentificationcodetype", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.tradeecho.mifid.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.ld_full_details_flag = ProtoField.new("Ld Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.ldfulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.tradeecho.mifid.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.limited_details_flag = ProtoField.new("Limited Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.limiteddetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.tradeecho.mifid.gtp.v24.4.marketclosingpriceflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.tradeecho.mifid.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.tradeecho.mifid.gtp.v24.4.marketmechanism", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.tradeecho.mifid.gtp.v24.4.message", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.tradeecho.mifid.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.tradeecho.mifid.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.tradeecho.mifid.gtp.v24.4.messagelength", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.tradeecho.mifid.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.tradeecho.mifid.gtp.v24.4.mifidprice", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.tradeecho.mifid.gtp.v24.4.mifidquantity", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_trading_date_and_time = ProtoField.new("Mi Fid Trading Date And Time", "lseg.tradeecho.mifid.gtp.v24.4.mifidtradingdateandtime", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.tradeecho.mifid.gtp.v24.4.modificationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.tradeecho.mifid.gtp.v24.4.negotiationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.tradeecho.mifid.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_contribution_to_discovery = ProtoField.new("Non Price Contribution To Discovery", "lseg.tradeecho.mifid.gtp.v24.4.nonpricecontributiontodiscovery", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_forming_transactions_flag = ProtoField.new("Non Price Forming Transactions Flag", "lseg.tradeecho.mifid.gtp.v24.4.nonpriceformingtransactionsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.tradeecho.mifid.gtp.v24.4.notionalamount", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.tradeecho.mifid.gtp.v24.4.notionalcurrency", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_large_in_scale_flag = ProtoField.new("Nt Large In Scale Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntlargeinscaleflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_liquidity_flag = ProtoField.new("Nt Liquidity Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntliquidityflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_pre_trade_transparency_flag = ProtoField.new("Nt Pre Trade Transparency Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntpretradetransparencyflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_price_conditions_flag = ProtoField.new("Nt Price Conditions Flag", "lseg.tradeecho.mifid.gtp.v24.4.ntpriceconditionsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.tradeecho.mifid.gtp.v24.4.numberoftrades", ftypes.UINT32)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.off_book = ProtoField.new("Off Book", "lseg.tradeecho.mifid.gtp.v24.4.offbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.tradeecho.mifid.gtp.v24.4.offbookautomatedindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.tradeecho.mifid.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.tradeecho.mifid.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.tradeecho.mifid.gtp.v24.4.payload", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.portfolio_transaction_flag = ProtoField.new("Portfolio Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.portfoliotransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.tradeecho.mifid.gtp.v24.4.posttradedeferralreason", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_conditions = ProtoField.new("Price Conditions", "lseg.tradeecho.mifid.gtp.v24.4.priceconditions", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_currency = ProtoField.new("Price Currency", "lseg.tradeecho.mifid.gtp.v24.4.pricecurrency", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.tradeecho.mifid.gtp.v24.4.priceformationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_improvement_flag = ProtoField.new("Price Improvement Flag", "lseg.tradeecho.mifid.gtp.v24.4.priceimprovementflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_notation = ProtoField.new("Price Notation", "lseg.tradeecho.mifid.gtp.v24.4.pricenotation", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.pt_deferral_reason_flag = ProtoField.new("Pt Deferral Reason Flag", "lseg.tradeecho.mifid.gtp.v24.4.ptdeferralreasonflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.pt_illiquid_flag = ProtoField.new("Pt Illiquid Flag", "lseg.tradeecho.mifid.gtp.v24.4.ptilliquidflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.tradeecho.mifid.gtp.v24.4.publicationdateandtime", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.quantity_in_measurement_unit = ProtoField.new("Quantity In Measurement Unit", "lseg.tradeecho.mifid.gtp.v24.4.quantityinmeasurementunit", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.tradeecho.mifid.gtp.v24.4.referencepriceindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_transaction_flag = ProtoField.new("Reference Price Transaction Flag", "lseg.tradeecho.mifid.gtp.v24.4.referencepricetransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.tradeecho.mifid.gtp.v24.4.reserved1", ftypes.BYTES)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.tradeecho.mifid.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_25 = ProtoField.new("Reserved 25", "lseg.tradeecho.mifid.gtp.v24.4.reserved25", ftypes.BYTES)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.tradeecho.mifid.gtp.v24.4.reserved5", ftypes.BYTES)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.tradeecho.mifid.gtp.v24.4.reserved8", ftypes.BYTES)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.tradeecho.mifid.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.tradeecho.mifid.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.tradeecho.mifid.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.si_quote_book = ProtoField.new("Si Quote Book", "lseg.tradeecho.mifid.gtp.v24.4.siquotebook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.tradeecho.mifid.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_flag = ProtoField.new("Special Dividend Flag", "lseg.tradeecho.mifid.gtp.v24.4.specialdividendflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.tradeecho.mifid.gtp.v24.4.specialdividendindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.tradeecho.mifid.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution = ProtoField.new("Thirdcountry Trading Venue Of Execution", "lseg.tradeecho.mifid.gtp.v24.4.thirdcountrytradingvenueofexecution", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.tradeecho.mifid.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.tradeecho.mifid.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.total_number_of_transactions = ProtoField.new("Total Number Of Transactions", "lseg.tradeecho.mifid.gtp.v24.4.totalnumberoftransactions", ftypes.UINT32)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.tradeecho.mifid.gtp.v24.4.tradingmode", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.tradeecho.mifid.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.tradeecho.mifid.gtp.v24.4.transactioncategory", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.tradeecho.mifid.gtp.v24.4.transactionidentificationcode", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "lseg.tradeecho.mifid.gtp.v24.4.transactiontobecleared", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.turnover = ProtoField.new("Turnover", "lseg.tradeecho.mifid.gtp.v24.4.turnover", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.tradeecho.mifid.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.unused_6 = ProtoField.new("Unused 6", "lseg.tradeecho.mifid.gtp.v24.4.unused6", ftypes.UINT8, nil, base.DEC, 0x3F)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_book_definition_id = ProtoField.new("Venue Book Definition Id", "lseg.tradeecho.mifid.gtp.v24.4.venuebookdefinitionid", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.tradeecho.mifid.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_measurement_unit_notation = ProtoField.new("Venue Measurement Unit Notation", "lseg.tradeecho.mifid.gtp.v24.4.venuemeasurementunitnotation", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.tradeecho.mifid.gtp.v24.4.venueofexecution", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_publication = ProtoField.new("Venue Of Publication", "lseg.tradeecho.mifid.gtp.v24.4.venueofpublication", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_type = ProtoField.new("Venue Type", "lseg.tradeecho.mifid.gtp.v24.4.venuetype", ftypes.UINT8)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vo_full_details_flag = ProtoField.new("Vo Full Details Flag", "lseg.tradeecho.mifid.gtp.v24.4.vofulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume = ProtoField.new("Volume", "lseg.tradeecho.mifid.gtp.v24.4.volume", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_flag = ProtoField.new("Volume Omission Flag", "lseg.tradeecho.mifid.gtp.v24.4.volumeomissionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag = ProtoField.new("Volume Omission For Sovereign Debt Flag", "lseg.tradeecho.mifid.gtp.v24.4.volumeomissionforsovereigndebtflag", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vwap = ProtoField.new("Vwap", "lseg.tradeecho.mifid.gtp.v24.4.vwap", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.tradeecho.mifid.gtp.v24.4.vwaponbookonly", ftypes.DOUBLE)

-- Lseg TradeEcho Mifid Gtp 24.4 messages
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_directory = ProtoField.new("Instrument Directory", "lseg.tradeecho.mifid.gtp.v24.4.instrumentdirectory", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_status = ProtoField.new("Instrument Status", "lseg.tradeecho.mifid.gtp.v24.4.instrumentstatus", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mifid_ii_trade_report = ProtoField.new("Mifid Ii Trade Report", "lseg.tradeecho.mifid.gtp.v24.4.mifidiitradereport", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.statistics = ProtoField.new("Statistics", "lseg.tradeecho.mifid.gtp.v24.4.statistics", ftypes.STRING)
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.system_event = ProtoField.new("System Event", "lseg.tradeecho.mifid.gtp.v24.4.systemevent", ftypes.STRING)

-- Lseg TradeEcho Mifid Gtp 24.4 generated fields
omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.tradeecho.mifid.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory = Pref.bool("Show Instrument Directory", show.instrument_directory, "Parse and add Instrument Directory to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status = Pref.bool("Show Instrument Status", show.instrument_status, "Parse and add Instrument Status to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report = Pref.bool("Show Mifid Ii Trade Report", show.mifid_ii_trade_report, "Parse and add Mifid Ii Trade Report to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics = Pref.bool("Show Statistics", show.statistics, "Parse and add Statistics to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event = Pref.bool("Show System Event", show.system_event, "Parse and add System Event to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_lseg_tradeecho_mifid_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory then
    show.instrument_directory = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_directory
    changed = true
  end
  if show.instrument_status ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status then
    show.instrument_status = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_instrument_status
    changed = true
  end
  if show.message ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message then
    show.message = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header then
    show.message_header = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.mifid_ii_trade_report ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report then
    show.mifid_ii_trade_report = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_report
    changed = true
  end
  if show.packet ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet then
    show.packet = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.statistics ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics then
    show.statistics = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_statistics
    changed = true
  end
  if show.system_event ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event then
    show.system_event = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_system_event
    changed = true
  end
  if show.unit_header ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload then
    show.payload = omi_lseg_tradeecho_mifid_gtp_v24_4.prefs.show_payload
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

-- Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag = {}

-- Size: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.size = 4

-- Display: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.display = function(value)
  return "Nt Pre Trade Transparency Flag: "..value
end

-- Dissect: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_pre_trade_transparency_flag, range, value, display)

  return offset + length, value
end

-- Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag = {}

-- Size: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.size = 4

-- Display: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.display = function(value)
  return "Nt Large In Scale Flag: "..value
end

-- Dissect: Nt Large In Scale Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_large_in_scale_flag, range, value, display)

  return offset + length, value
end

-- Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag = {}

-- Size: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.size = 4

-- Display: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.display = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Price Conditions
lseg_tradeecho_mifid_gtp_v24_4.price_conditions = {}

-- Size: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4.price_conditions.size = 4

-- Display: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4.price_conditions.display = function(value)
  return "Price Conditions: "..value
end

-- Dissect: Price Conditions
lseg_tradeecho_mifid_gtp_v24_4.price_conditions.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_conditions.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_conditions.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_conditions, range, value, display)

  return offset + length, value
end

-- Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag = {}

-- Size: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.size = 4

-- Display: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.display = function(value)
  return "Contingent Transaction Flag: "..value
end

-- Dissect: Contingent Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.contingent_transaction_flag, range, value, display)

  return offset + length, value
end

-- Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag = {}

-- Size: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.size = 4

-- Display: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.display = function(value)
  return "Portfolio Transaction Flag: "..value
end

-- Dissect: Portfolio Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.portfolio_transaction_flag, range, value, display)

  return offset + length, value
end

-- Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution = {}

-- Size: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.size = 4

-- Display: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.display = function(value)
  return "Thirdcountry Trading Venue Of Execution: "..value
end

-- Dissect: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator = {}

-- Size: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.display = function(value)
  return "Duplicative Indicator: "..value
end

-- Dissect: Duplicative Indicator
lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type = {}

-- Size: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.size = 1

-- Display: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.display = function(value)
  return "Deferral Enrichment Type: "..value
end

-- Dissect: Deferral Enrichment Type
lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.size = 1

-- Display: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.display = function(value)
  return "Post Trade Deferral Reason: "..value
end

-- Dissect: Post Trade Deferral Reason
lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator = {}

-- Size: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.size = 1

-- Display: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.display = function(value)
  return "Price Formation Indicator: "..value
end

-- Dissect: Price Formation Indicator
lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.display = function(value)
  return "Off Book Automated Indicator: "..value
end

-- Dissect: Off Book Automated Indicator
lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator = {}

-- Size: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.size = 1

-- Display: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.display = function(value)
  return "Special Dividend Indicator: "..value
end

-- Dissect: Special Dividend Indicator
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator = {}

-- Size: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.size = 1

-- Display: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.display = function(value)
  return "Reference Price Indicator: "..value
end

-- Dissect: Reference Price Indicator
lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4.modification_indicator = {}

-- Size: Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.size = 1

-- Display: Modification Indicator
lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator = {}

-- Size: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.size = 1

-- Display: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.display = function(value)
  if value == "X" then
    return "Agency Cross Indicator: Agency Cross Trade (X)"
  end
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator = {}

-- Size: Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.size = 1

-- Display: Negotiation Indicator
lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Transaction Category
lseg_tradeecho_mifid_gtp_v24_4.transaction_category = {}

-- Size: Transaction Category
lseg_tradeecho_mifid_gtp_v24_4.transaction_category.size = 1

-- Display: Transaction Category
lseg_tradeecho_mifid_gtp_v24_4.transaction_category.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Trading Mode
lseg_tradeecho_mifid_gtp_v24_4.trading_mode = {}

-- Size: Trading Mode
lseg_tradeecho_mifid_gtp_v24_4.trading_mode.size = 1

-- Display: Trading Mode
lseg_tradeecho_mifid_gtp_v24_4.trading_mode.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4.market_mechanism = {}

-- Size: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.size = 1

-- Display: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.display = function(value)
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication = {}

-- Size: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.size = 4

-- Display: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.display = function(value)
  return "Venue Of Publication: "..value
end

-- Dissect: Venue Of Publication
lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_publication, range, value, display)

  return offset + length, value
end

-- Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type = {}

-- Size: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.size = 4

-- Display: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.display = function(value)
  return "Emission Allowance Type: "..value
end

-- Dissect: Emission Allowance Type
lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.size = 1

-- Display: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.display = function(value)
  if value == "0" then
    return "Transaction To Be Cleared: No (0)"
  end
  if value == "1" then
    return "Transaction To Be Cleared: Yes (1)"
  end

  return "Transaction To Be Cleared: Unknown("..value..")"
end

-- Dissect: Transaction To Be Cleared
lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit = {}

-- Size: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.size = 20

-- Display: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.display = function(value)
  return "Quantity In Measurement Unit: "..value
end

-- Dissect: Quantity In Measurement Unit
lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation = {}

-- Size: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.size = 25

-- Display: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.display = function(value)
  return "Venue Measurement Unit Notation: "..value
end

-- Dissect: Venue Measurement Unit Notation
lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_measurement_unit_notation, range, value, display)

  return offset + length, value
end

-- Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id = {}

-- Size: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.size = 1

-- Display: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.display = function(value)
  if value == 0 then
    return "Venue Book Definition Id: Unspecified (0)"
  end
  if value == 1 then
    return "Venue Book Definition Id: Off Book (1)"
  end

  return "Venue Book Definition Id: Unknown("..value..")"
end

-- Dissect: Venue Book Definition Id
lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_book_definition_id, range, value, display)

  return offset + length, value
end

-- Venue Type
lseg_tradeecho_mifid_gtp_v24_4.venue_type = {}

-- Size: Venue Type
lseg_tradeecho_mifid_gtp_v24_4.venue_type.size = 1

-- Display: Venue Type
lseg_tradeecho_mifid_gtp_v24_4.venue_type.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.venue_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_tradeecho_mifid_gtp_v24_4.reserved_1 = {}

-- Size: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4.reserved_1.size = 1

-- Display: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_tradeecho_mifid_gtp_v24_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag = {}

-- Size: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.size = 4

-- Display: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.display = function(value)
  return "Consecutive Aggregation Flag: "..value
end

-- Dissect: Consecutive Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.consecutive_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag = {}

-- Size: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size = 4

-- Display: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.display = function(value)
  return "Volume Omission For Sovereign Debt Flag: "..value
end

-- Dissect: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag, range, value, display)

  return offset + length, value
end

-- Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag = {}

-- Size: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.size = 4

-- Display: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.display = function(value)
  return "Indefinite Aggregation Flag: "..value
end

-- Dissect: Indefinite Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.indefinite_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag = {}

-- Size: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.size = 4

-- Display: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.display = function(value)
  return "Fa Full Details Flag: "..value
end

-- Dissect: Fa Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.fa_full_details_flag, range, value, display)

  return offset + length, value
end

-- Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag = {}

-- Size: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.size = 4

-- Display: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.display = function(value)
  return "Four Weeks Aggregation Flag: "..value
end

-- Dissect: Four Weeks Aggregation Flag
lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.four_weeks_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag = {}

-- Size: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.size = 4

-- Display: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.display = function(value)
  return "Vo Full Details Flag: "..value
end

-- Dissect: Vo Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vo_full_details_flag, range, value, display)

  return offset + length, value
end

-- Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag = {}

-- Size: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.size = 4

-- Display: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.display = function(value)
  return "Volume Omission Flag: "..value
end

-- Dissect: Volume Omission Flag
lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_omission_flag, range, value, display)

  return offset + length, value
end

-- Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag = {}

-- Size: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.size = 4

-- Display: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.display = function(value)
  return "Da Full Details Flag: "..value
end

-- Dissect: Da Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.da_full_details_flag, range, value, display)

  return offset + length, value
end

-- Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag = {}

-- Size: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.size = 4

-- Display: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.display = function(value)
  return "Daily Aggregated Transaction Flag: "..value
end

-- Dissect: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.daily_aggregated_transaction_flag, range, value, display)

  return offset + length, value
end

-- Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag = {}

-- Size: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.size = 4

-- Display: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.display = function(value)
  return "Ld Full Details Flag: "..value
end

-- Dissect: Ld Full Details Flag
lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.ld_full_details_flag, range, value, display)

  return offset + length, value
end

-- Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag = {}

-- Size: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.size = 4

-- Display: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.display = function(value)
  return "Limited Details Flag: "..value
end

-- Dissect: Limited Details Flag
lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.limited_details_flag, range, value, display)

  return offset + length, value
end

-- Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag = {}

-- Size: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.size = 4

-- Display: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.display = function(value)
  return "Exchange For Physicals Flag: "..value
end

-- Dissect: Exchange For Physicals Flag
lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.exchange_for_physicals_flag, range, value, display)

  return offset + length, value
end

-- Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag = {}

-- Size: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.size = 4

-- Display: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.display = function(value)
  return "Duplicate Flag: "..value
end

-- Dissect: Duplicate Flag
lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.duplicate_flag, range, value, display)

  return offset + length, value
end

-- Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4.amendment_flag = {}

-- Size: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.size = 4

-- Display: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.display = function(value)
  return "Amendment Flag: "..value
end

-- Dissect: Amendment Flag
lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.amendment_flag, range, value, display)

  return offset + length, value
end

-- Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag = {}

-- Size: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.size = 4

-- Display: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.display = function(value)
  return "Cancellation Flag: "..value
end

-- Dissect: Cancellation Flag
lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.cancellation_flag, range, value, display)

  return offset + length, value
end

-- Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag = {}

-- Size: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.size = 4

-- Display: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.display = function(value)
  return "Price Improvement Flag: "..value
end

-- Dissect: Price Improvement Flag
lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_improvement_flag, range, value, display)

  return offset + length, value
end

-- Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag = {}

-- Size: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.size = 4

-- Display: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.display = function(value)
  return "Pt Illiquid Flag: "..value
end

-- Dissect: Pt Illiquid Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.pt_illiquid_flag, range, value, display)

  return offset + length, value
end

-- Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag = {}

-- Size: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.size = 4

-- Display: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.display = function(value)
  return "Algo Transaction Flag: "..value
end

-- Dissect: Algo Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.algo_transaction_flag, range, value, display)

  return offset + length, value
end

-- Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag = {}

-- Size: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.size = 4

-- Display: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.display = function(value)
  return "Nt Price Conditions Flag: "..value
end

-- Dissect: Nt Price Conditions Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_price_conditions_flag, range, value, display)

  return offset + length, value
end

-- Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag = {}

-- Size: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.size = 4

-- Display: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.display = function(value)
  return "Nt Liquidity Flag: "..value
end

-- Dissect: Nt Liquidity Flag
lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.nt_liquidity_flag, range, value, display)

  return offset + length, value
end

-- Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag = {}

-- Size: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.size = 4

-- Display: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.display = function(value)
  return "Reference Price Transaction Flag: "..value
end

-- Dissect: Reference Price Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reference_price_transaction_flag, range, value, display)

  return offset + length, value
end

-- Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag = {}

-- Size: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.size = 4

-- Display: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.display = function(value)
  return "Pt Deferral Reason Flag: "..value
end

-- Dissect: Pt Deferral Reason Flag
lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.pt_deferral_reason_flag, range, value, display)

  return offset + length, value
end

-- Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag = {}

-- Size: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.size = 4

-- Display: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.display = function(value)
  return "Special Dividend Flag: "..value
end

-- Dissect: Special Dividend Flag
lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.special_dividend_flag, range, value, display)

  return offset + length, value
end

-- Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery = {}

-- Size: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.size = 4

-- Display: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.display = function(value)
  return "Non Price Contribution To Discovery: "..value
end

-- Dissect: Non Price Contribution To Discovery
lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_contribution_to_discovery, range, value, display)

  return offset + length, value
end

-- Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag = {}

-- Size: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.size = 4

-- Display: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.display = function(value)
  return "Non Price Forming Transactions Flag: "..value
end

-- Dissect: Non Price Forming Transactions Flag
lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.non_price_forming_transactions_flag, range, value, display)

  return offset + length, value
end

-- Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag = {}

-- Size: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.size = 4

-- Display: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.display = function(value)
  return "Agency Cross Trade Flag: "..value
end

-- Dissect: Agency Cross Trade Flag
lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.agency_cross_trade_flag, range, value, display)

  return offset + length, value
end

-- Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag = {}

-- Size: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.size = 4

-- Display: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.display = function(value)
  return "Benchmark Transaction Flag: "..value
end

-- Dissect: Benchmark Transaction Flag
lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.benchmark_transaction_flag, range, value, display)

  return offset + length, value
end

-- Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time = {}

-- Size: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.size = 27

-- Display: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.display = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution = {}

-- Size: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.size = 4

-- Display: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Notional Currency
lseg_tradeecho_mifid_gtp_v24_4.notional_currency = {}

-- Size: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4.notional_currency.size = 3

-- Display: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_tradeecho_mifid_gtp_v24_4.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Notional Amount
lseg_tradeecho_mifid_gtp_v24_4.notional_amount = {}

-- Size: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4.notional_amount.size = 20

-- Display: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_tradeecho_mifid_gtp_v24_4.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.notional_amount.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Price Currency
lseg_tradeecho_mifid_gtp_v24_4.price_currency = {}

-- Size: Price Currency
lseg_tradeecho_mifid_gtp_v24_4.price_currency.size = 3

-- Display: Price Currency
lseg_tradeecho_mifid_gtp_v24_4.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
lseg_tradeecho_mifid_gtp_v24_4.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Notation
lseg_tradeecho_mifid_gtp_v24_4.price_notation = {}

-- Size: Price Notation
lseg_tradeecho_mifid_gtp_v24_4.price_notation.size = 4

-- Display: Price Notation
lseg_tradeecho_mifid_gtp_v24_4.price_notation.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code = {}

-- Size: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type = {}

-- Size: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.size = 4

-- Display: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.display = function(value)
  if value == "ISIN" then
    return "Instrument Identification Code Type: International Securities Identification Number (ISIN)"
  end

  return "Instrument Identification Code Type: Unknown("..value..")"
end

-- Dissect: Instrument Identification Code Type
lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time = {}

-- Size: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.size = 27

-- Display: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.display = function(value)
  return "Mi Fid Trading Date And Time: "..value
end

-- Dissect: Mi Fid Trading Date And Time
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity = {}

-- Size: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.size = 20

-- Display: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.display = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price = {}

-- Size: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.size = 20

-- Display: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.display = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_tradeecho_mifid_gtp_v24_4.source_venue = {}

-- Size: Source Venue
lseg_tradeecho_mifid_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_tradeecho_mifid_gtp_v24_4.source_venue.display = function(value)
  return "Source Venue: "..value
end

-- Dissect: Source Venue
lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_tradeecho_mifid_gtp_v24_4.reserved_8 = {}

-- Size: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4.reserved_8.size = 8

-- Display: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_tradeecho_mifid_gtp_v24_4.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions = {}

-- Size: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.size = 4

-- Display: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.display = function(value)
  return "Total Number Of Transactions: "..value
end

-- Dissect: Total Number Of Transactions
lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.total_number_of_transactions, range, value, display)

  return offset + length, value
end

-- Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code = {}

-- Size: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.size = 52

-- Display: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.display = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_tradeecho_mifid_gtp_v24_4.instrument = {}

-- Size: Instrument
lseg_tradeecho_mifid_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_tradeecho_mifid_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_tradeecho_mifid_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_tradeecho_mifid_gtp_v24_4.timestamp = {}

-- Size: Timestamp
lseg_tradeecho_mifid_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_tradeecho_mifid_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report = {}

-- Size: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.size =
  lseg_tradeecho_mifid_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.size + 
  lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reserved_8.size + 
  lseg_tradeecho_mifid_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.size + 
  lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.size + 
  lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_notation.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_currency.size + 
  lseg_tradeecho_mifid_gtp_v24_4.notional_amount.size + 
  lseg_tradeecho_mifid_gtp_v24_4.notional_currency.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.size + 
  lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.size + 
  lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.size + 
  lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reserved_1.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_type.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.size + 
  lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.size + 
  lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.size + 
  lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.size + 
  lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.size + 
  lseg_tradeecho_mifid_gtp_v24_4.trading_mode.size + 
  lseg_tradeecho_mifid_gtp_v24_4.transaction_category.size + 
  lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.size + 
  lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.size + 
  lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.size + 
  lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.size + 
  lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_conditions.size + 
  lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.size + 
  lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.size

-- Display: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_tradeecho_mifid_gtp_v24_4.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions: 4 Byte Unsigned Fixed Width Integer
  index, total_number_of_transactions = lseg_tradeecho_mifid_gtp_v24_4.total_number_of_transactions.dissect(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_tradeecho_mifid_gtp_v24_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Mi Fid Trading Date And Time: 27 Byte Ascii String
  index, mi_fid_trading_date_and_time = lseg_tradeecho_mifid_gtp_v24_4.mi_fid_trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String Enum with 1 values
  index, instrument_identification_code_type = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_tradeecho_mifid_gtp_v24_4.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String Enum with 4 values
  index, price_notation = lseg_tradeecho_mifid_gtp_v24_4.price_notation.dissect(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = lseg_tradeecho_mifid_gtp_v24_4.price_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_tradeecho_mifid_gtp_v24_4.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_tradeecho_mifid_gtp_v24_4.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_tradeecho_mifid_gtp_v24_4.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Benchmark Transaction Flag: 4 Byte Ascii String
  index, benchmark_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.benchmark_transaction_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade Flag: 4 Byte Ascii String
  index, agency_cross_trade_flag = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_trade_flag.dissect(buffer, index, packet, parent)

  -- Non Price Forming Transactions Flag: 4 Byte Ascii String
  index, non_price_forming_transactions_flag = lseg_tradeecho_mifid_gtp_v24_4.non_price_forming_transactions_flag.dissect(buffer, index, packet, parent)

  -- Non Price Contribution To Discovery: 4 Byte Ascii String
  index, non_price_contribution_to_discovery = lseg_tradeecho_mifid_gtp_v24_4.non_price_contribution_to_discovery.dissect(buffer, index, packet, parent)

  -- Special Dividend Flag: 4 Byte Ascii String
  index, special_dividend_flag = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_flag.dissect(buffer, index, packet, parent)

  -- Pt Deferral Reason Flag: 4 Byte Ascii String
  index, pt_deferral_reason_flag = lseg_tradeecho_mifid_gtp_v24_4.pt_deferral_reason_flag.dissect(buffer, index, packet, parent)

  -- Reference Price Transaction Flag: 4 Byte Ascii String
  index, reference_price_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.reference_price_transaction_flag.dissect(buffer, index, packet, parent)

  -- Nt Liquidity Flag: 4 Byte Ascii String
  index, nt_liquidity_flag = lseg_tradeecho_mifid_gtp_v24_4.nt_liquidity_flag.dissect(buffer, index, packet, parent)

  -- Nt Price Conditions Flag: 4 Byte Ascii String
  index, nt_price_conditions_flag = lseg_tradeecho_mifid_gtp_v24_4.nt_price_conditions_flag.dissect(buffer, index, packet, parent)

  -- Algo Transaction Flag: 4 Byte Ascii String
  index, algo_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.algo_transaction_flag.dissect(buffer, index, packet, parent)

  -- Pt Illiquid Flag: 4 Byte Ascii String
  index, pt_illiquid_flag = lseg_tradeecho_mifid_gtp_v24_4.pt_illiquid_flag.dissect(buffer, index, packet, parent)

  -- Price Improvement Flag: 4 Byte Ascii String
  index, price_improvement_flag = lseg_tradeecho_mifid_gtp_v24_4.price_improvement_flag.dissect(buffer, index, packet, parent)

  -- Cancellation Flag: 4 Byte Ascii String
  index, cancellation_flag = lseg_tradeecho_mifid_gtp_v24_4.cancellation_flag.dissect(buffer, index, packet, parent)

  -- Amendment Flag: 4 Byte Ascii String
  index, amendment_flag = lseg_tradeecho_mifid_gtp_v24_4.amendment_flag.dissect(buffer, index, packet, parent)

  -- Duplicate Flag: 4 Byte Ascii String
  index, duplicate_flag = lseg_tradeecho_mifid_gtp_v24_4.duplicate_flag.dissect(buffer, index, packet, parent)

  -- Exchange For Physicals Flag: 4 Byte Ascii String
  index, exchange_for_physicals_flag = lseg_tradeecho_mifid_gtp_v24_4.exchange_for_physicals_flag.dissect(buffer, index, packet, parent)

  -- Limited Details Flag: 4 Byte Ascii String
  index, limited_details_flag = lseg_tradeecho_mifid_gtp_v24_4.limited_details_flag.dissect(buffer, index, packet, parent)

  -- Ld Full Details Flag: 4 Byte Ascii String
  index, ld_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4.ld_full_details_flag.dissect(buffer, index, packet, parent)

  -- Daily Aggregated Transaction Flag: 4 Byte Ascii String
  index, daily_aggregated_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.daily_aggregated_transaction_flag.dissect(buffer, index, packet, parent)

  -- Da Full Details Flag: 4 Byte Ascii String
  index, da_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4.da_full_details_flag.dissect(buffer, index, packet, parent)

  -- Volume Omission Flag: 4 Byte Ascii String
  index, volume_omission_flag = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_flag.dissect(buffer, index, packet, parent)

  -- Vo Full Details Flag: 4 Byte Ascii String
  index, vo_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4.vo_full_details_flag.dissect(buffer, index, packet, parent)

  -- Four Weeks Aggregation Flag: 4 Byte Ascii String
  index, four_weeks_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4.four_weeks_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Fa Full Details Flag: 4 Byte Ascii String
  index, fa_full_details_flag = lseg_tradeecho_mifid_gtp_v24_4.fa_full_details_flag.dissect(buffer, index, packet, parent)

  -- Indefinite Aggregation Flag: 4 Byte Ascii String
  index, indefinite_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4.indefinite_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Volume Omission For Sovereign Debt Flag: 4 Byte Ascii String
  index, volume_omission_for_sovereign_debt_flag = lseg_tradeecho_mifid_gtp_v24_4.volume_omission_for_sovereign_debt_flag.dissect(buffer, index, packet, parent)

  -- Consecutive Aggregation Flag: 4 Byte Ascii String
  index, consecutive_aggregation_flag = lseg_tradeecho_mifid_gtp_v24_4.consecutive_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = lseg_tradeecho_mifid_gtp_v24_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Venue Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, venue_type = lseg_tradeecho_mifid_gtp_v24_4.venue_type.dissect(buffer, index, packet, parent)

  -- Venue Book Definition Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, venue_book_definition_id = lseg_tradeecho_mifid_gtp_v24_4.venue_book_definition_id.dissect(buffer, index, packet, parent)

  -- Venue Measurement Unit Notation: 25 Byte Ascii String
  index, venue_measurement_unit_notation = lseg_tradeecho_mifid_gtp_v24_4.venue_measurement_unit_notation.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: 20 Byte Ascii String
  index, quantity_in_measurement_unit = lseg_tradeecho_mifid_gtp_v24_4.quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: 1 Byte Ascii String Enum with 2 values
  index, transaction_to_be_cleared = lseg_tradeecho_mifid_gtp_v24_4.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Emission Allowance Type: 4 Byte Ascii String
  index, emission_allowance_type = lseg_tradeecho_mifid_gtp_v24_4.emission_allowance_type.dissect(buffer, index, packet, parent)

  -- Venue Of Publication: 4 Byte Ascii String
  index, venue_of_publication = lseg_tradeecho_mifid_gtp_v24_4.venue_of_publication.dissect(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 1 values
  index, market_mechanism = lseg_tradeecho_mifid_gtp_v24_4.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 3 values
  index, trading_mode = lseg_tradeecho_mifid_gtp_v24_4.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 6 values
  index, transaction_category = lseg_tradeecho_mifid_gtp_v24_4.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 6 values
  index, negotiation_indicator = lseg_tradeecho_mifid_gtp_v24_4.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 2 values
  index, agency_cross_indicator = lseg_tradeecho_mifid_gtp_v24_4.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_tradeecho_mifid_gtp_v24_4.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String
  index, reference_price_indicator = lseg_tradeecho_mifid_gtp_v24_4.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String
  index, special_dividend_indicator = lseg_tradeecho_mifid_gtp_v24_4.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String
  index, off_book_automated_indicator = lseg_tradeecho_mifid_gtp_v24_4.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String
  index, price_formation_indicator = lseg_tradeecho_mifid_gtp_v24_4.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String
  index, algorithmic_indicator = lseg_tradeecho_mifid_gtp_v24_4.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String
  index, post_trade_deferral_reason = lseg_tradeecho_mifid_gtp_v24_4.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String
  index, deferral_enrichment_type = lseg_tradeecho_mifid_gtp_v24_4.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String
  index, duplicative_indicator = lseg_tradeecho_mifid_gtp_v24_4.duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Thirdcountry Trading Venue Of Execution: 4 Byte Ascii String
  index, thirdcountry_trading_venue_of_execution = lseg_tradeecho_mifid_gtp_v24_4.thirdcountry_trading_venue_of_execution.dissect(buffer, index, packet, parent)

  -- Portfolio Transaction Flag: 4 Byte Ascii String
  index, portfolio_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.portfolio_transaction_flag.dissect(buffer, index, packet, parent)

  -- Contingent Transaction Flag: 4 Byte Ascii String
  index, contingent_transaction_flag = lseg_tradeecho_mifid_gtp_v24_4.contingent_transaction_flag.dissect(buffer, index, packet, parent)

  -- Price Conditions: 4 Byte Ascii String
  index, price_conditions = lseg_tradeecho_mifid_gtp_v24_4.price_conditions.dissect(buffer, index, packet, parent)

  -- Market Closing Price Flag: 4 Byte Ascii String
  index, market_closing_price_flag = lseg_tradeecho_mifid_gtp_v24_4.market_closing_price_flag.dissect(buffer, index, packet, parent)

  -- Nt Large In Scale Flag: 4 Byte Ascii String
  index, nt_large_in_scale_flag = lseg_tradeecho_mifid_gtp_v24_4.nt_large_in_scale_flag.dissect(buffer, index, packet, parent)

  -- Nt Pre Trade Transparency Flag: 4 Byte Ascii String
  index, nt_pre_trade_transparency_flag = lseg_tradeecho_mifid_gtp_v24_4.nt_pre_trade_transparency_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Report
lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.dissect = function(buffer, offset, packet, parent)
  if show.mifid_ii_trade_report then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.mifid_ii_trade_report, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only = {}

-- Size: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_tradeecho_mifid_gtp_v24_4.turnover = {}

-- Size: Turnover
lseg_tradeecho_mifid_gtp_v24_4.turnover.size = 8

-- Display: Turnover
lseg_tradeecho_mifid_gtp_v24_4.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_tradeecho_mifid_gtp_v24_4.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_tradeecho_mifid_gtp_v24_4.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.turnover.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.turnover, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only = {}

-- Size: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades = {}

-- Size: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only = {}

-- Size: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_tradeecho_mifid_gtp_v24_4.vwap = {}

-- Size: Vwap
lseg_tradeecho_mifid_gtp_v24_4.vwap.size = 8

-- Display: Vwap
lseg_tradeecho_mifid_gtp_v24_4.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_tradeecho_mifid_gtp_v24_4.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_tradeecho_mifid_gtp_v24_4.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.vwap.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.vwap, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only = {}

-- Size: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Volume
lseg_tradeecho_mifid_gtp_v24_4.volume = {}

-- Size: Volume
lseg_tradeecho_mifid_gtp_v24_4.volume.size = 8

-- Display: Volume
lseg_tradeecho_mifid_gtp_v24_4.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_tradeecho_mifid_gtp_v24_4.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_tradeecho_mifid_gtp_v24_4.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.volume.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Statistics
lseg_tradeecho_mifid_gtp_v24_4.statistics = {}

-- Size: Statistics
lseg_tradeecho_mifid_gtp_v24_4.statistics.size =
  lseg_tradeecho_mifid_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid_gtp_v24_4.volume.size + 
  lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.size + 
  lseg_tradeecho_mifid_gtp_v24_4.vwap.size + 
  lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.size + 
  lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.size + 
  lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.size + 
  lseg_tradeecho_mifid_gtp_v24_4.turnover.size + 
  lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.size

-- Display: Statistics
lseg_tradeecho_mifid_gtp_v24_4.statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics
lseg_tradeecho_mifid_gtp_v24_4.statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = lseg_tradeecho_mifid_gtp_v24_4.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: 8 Byte Unsigned Fixed Width Integer
  index, volume_onbook_only = lseg_tradeecho_mifid_gtp_v24_4.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: 8 Byte Signed Fixed Width Integer
  index, vwap = lseg_tradeecho_mifid_gtp_v24_4.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: 8 Byte Signed Fixed Width Integer
  index, vwap_onbook_only = lseg_tradeecho_mifid_gtp_v24_4.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades_onbook_only = lseg_tradeecho_mifid_gtp_v24_4.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: 8 Byte Signed Fixed Width Integer
  index, turnover = lseg_tradeecho_mifid_gtp_v24_4.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: 8 Byte Signed Fixed Width Integer
  index, turnover_onbook_only = lseg_tradeecho_mifid_gtp_v24_4.turnover_onbook_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics
lseg_tradeecho_mifid_gtp_v24_4.statistics.dissect = function(buffer, offset, packet, parent)
  if show.statistics then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.statistics, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.statistics.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.statistics.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.statistics.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Type
lseg_tradeecho_mifid_gtp_v24_4.order_book_type = {}

-- Size: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4.order_book_type.display = function(value)
  if value == 1 then
    return "Order Book Type: Si Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Off Book (2)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_tradeecho_mifid_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_tradeecho_mifid_gtp_v24_4.new_end_time = {}

-- Size: New End Time
lseg_tradeecho_mifid_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_tradeecho_mifid_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_tradeecho_mifid_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4.session_change_reason = {}

-- Size: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_tradeecho_mifid_gtp_v24_4.trading_status = {}

-- Size: Trading Status
lseg_tradeecho_mifid_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_tradeecho_mifid_gtp_v24_4.trading_status.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Status
lseg_tradeecho_mifid_gtp_v24_4.instrument_status = {}

-- Size: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4.instrument_status.size =
  lseg_tradeecho_mifid_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid_gtp_v24_4.trading_status.size + 
  lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.size + 
  lseg_tradeecho_mifid_gtp_v24_4.new_end_time.size + 
  lseg_tradeecho_mifid_gtp_v24_4.order_book_type.size

-- Display: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4.instrument_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4.instrument_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 4 values
  index, trading_status = lseg_tradeecho_mifid_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, session_change_reason = lseg_tradeecho_mifid_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_tradeecho_mifid_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_book_type = lseg_tradeecho_mifid_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status
lseg_tradeecho_mifid_gtp_v24_4.instrument_status.dissect = function(buffer, offset, packet, parent)
  if show.instrument_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_status, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.instrument_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.instrument_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_status.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 25
lseg_tradeecho_mifid_gtp_v24_4.reserved_25 = {}

-- Size: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4.reserved_25.size = 25

-- Display: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
lseg_tradeecho_mifid_gtp_v24_4.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reserved_25.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover = {}

-- Size: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.size = 8

-- Display: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.display = function(value)
  return "Average Daily Turnover: "..value
end

-- Translate: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover
lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.average_daily_turnover, range, value, display)

  return offset + length, value
end

-- Reserved 5
lseg_tradeecho_mifid_gtp_v24_4.reserved_5 = {}

-- Size: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4.reserved_5.size = 5

-- Display: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_tradeecho_mifid_gtp_v24_4.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Currency
lseg_tradeecho_mifid_gtp_v24_4.currency = {}

-- Size: Currency
lseg_tradeecho_mifid_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_tradeecho_mifid_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_tradeecho_mifid_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_tradeecho_mifid_gtp_v24_4.reserved_23 = {}

-- Size: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_tradeecho_mifid_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Segment
lseg_tradeecho_mifid_gtp_v24_4.segment = {}

-- Size: Segment
lseg_tradeecho_mifid_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_tradeecho_mifid_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_tradeecho_mifid_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_tradeecho_mifid_gtp_v24_4.tick_id = {}

-- Size: Tick Id
lseg_tradeecho_mifid_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_tradeecho_mifid_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_tradeecho_mifid_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.display = function(buffer, packet, parent)
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
lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.bits = function(buffer, offset, packet, parent)

  -- Si Quote Book: 1 Bit
  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.si_quote_book, buffer(offset, 1))

  -- Off Book: 1 Bit
  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.off_book, buffer(offset, 1))

  -- Unused 6: 6 Bit
  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.unused_6, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.display(range, packet, parent)
  local element = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Isin
lseg_tradeecho_mifid_gtp_v24_4.isin = {}

-- Size: Isin
lseg_tradeecho_mifid_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_tradeecho_mifid_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_tradeecho_mifid_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4.instrument_directory = {}

-- Size: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.size =
  lseg_tradeecho_mifid_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid_gtp_v24_4.isin.size + 
  lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.size + 
  lseg_tradeecho_mifid_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.size + 
  lseg_tradeecho_mifid_gtp_v24_4.tick_id.size + 
  lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.size + 
  lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size + 
  lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size + 
  lseg_tradeecho_mifid_gtp_v24_4.segment.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reserved_23.size + 
  lseg_tradeecho_mifid_gtp_v24_4.currency.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reserved_5.size + 
  lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.size + 
  lseg_tradeecho_mifid_gtp_v24_4.reserved_25.size

-- Display: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_tradeecho_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_tradeecho_mifid_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_tradeecho_mifid_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_tradeecho_mifid_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_tradeecho_mifid_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_tradeecho_mifid_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_tradeecho_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_tradeecho_mifid_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_tradeecho_mifid_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_tradeecho_mifid_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_tradeecho_mifid_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 5: 5 Byte
  index, reserved_5 = lseg_tradeecho_mifid_gtp_v24_4.reserved_5.dissect(buffer, index, packet, parent)

  -- Average Daily Turnover: 8 Byte Signed Fixed Width Integer
  index, average_daily_turnover = lseg_tradeecho_mifid_gtp_v24_4.average_daily_turnover.dissect(buffer, index, packet, parent)

  -- Reserved 25: 25 Byte
  index, reserved_25 = lseg_tradeecho_mifid_gtp_v24_4.reserved_25.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory
lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.instrument_directory, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
lseg_tradeecho_mifid_gtp_v24_4.event_code = {}

-- Size: Event Code
lseg_tradeecho_mifid_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_tradeecho_mifid_gtp_v24_4.event_code.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event
lseg_tradeecho_mifid_gtp_v24_4.system_event = {}

-- Size: System Event
lseg_tradeecho_mifid_gtp_v24_4.system_event.size =
  lseg_tradeecho_mifid_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid_gtp_v24_4.event_code.size + 
  lseg_tradeecho_mifid_gtp_v24_4.source_venue.size

-- Display: System Event
lseg_tradeecho_mifid_gtp_v24_4.system_event.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event
lseg_tradeecho_mifid_gtp_v24_4.system_event.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_tradeecho_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 3 values
  index, event_code = lseg_tradeecho_mifid_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer
  index, source_venue = lseg_tradeecho_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
lseg_tradeecho_mifid_gtp_v24_4.system_event.dissect = function(buffer, offset, packet, parent)
  if show.system_event then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.system_event, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.system_event.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.system_event.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.system_event.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_tradeecho_mifid_gtp_v24_4.payload = {}

-- Size: Payload
lseg_tradeecho_mifid_gtp_v24_4.payload.size = function(buffer, offset, message_type)
  -- Size of System Event
  if message_type == 0x53 then
    return lseg_tradeecho_mifid_gtp_v24_4.system_event.size
  end
  -- Size of Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.size
  end
  -- Size of Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_status.size
  end
  -- Size of Statistics
  if message_type == 0x77 then
    return lseg_tradeecho_mifid_gtp_v24_4.statistics.size
  end
  -- Size of Mifid Ii Trade Report
  if message_type == 0x54 then
    return lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.size
  end

  return 0
end

-- Display: Payload
lseg_tradeecho_mifid_gtp_v24_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_tradeecho_mifid_gtp_v24_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event
  if message_type == 0x53 then
    return lseg_tradeecho_mifid_gtp_v24_4.system_event.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory
  if message_type == 0x70 then
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status
  if message_type == 0x48 then
    return lseg_tradeecho_mifid_gtp_v24_4.instrument_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics
  if message_type == 0x77 then
    return lseg_tradeecho_mifid_gtp_v24_4.statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Report
  if message_type == 0x54 then
    return lseg_tradeecho_mifid_gtp_v24_4.mifid_ii_trade_report.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_tradeecho_mifid_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_tradeecho_mifid_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_tradeecho_mifid_gtp_v24_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_tradeecho_mifid_gtp_v24_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.payload, range, display)

  return lseg_tradeecho_mifid_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
lseg_tradeecho_mifid_gtp_v24_4.message_type = {}

-- Size: Message Type
lseg_tradeecho_mifid_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_tradeecho_mifid_gtp_v24_4.message_type.display = function(value)
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
lseg_tradeecho_mifid_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_tradeecho_mifid_gtp_v24_4.message_length = {}

-- Size: Message Length
lseg_tradeecho_mifid_gtp_v24_4.message_length.size = 1

-- Display: Message Length
lseg_tradeecho_mifid_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_tradeecho_mifid_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
lseg_tradeecho_mifid_gtp_v24_4.message_header = {}

-- Size: Message Header
lseg_tradeecho_mifid_gtp_v24_4.message_header.size =
  lseg_tradeecho_mifid_gtp_v24_4.message_length.size + 
  lseg_tradeecho_mifid_gtp_v24_4.message_type.size

-- Display: Message Header
lseg_tradeecho_mifid_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_tradeecho_mifid_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_tradeecho_mifid_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = lseg_tradeecho_mifid_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_tradeecho_mifid_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_tradeecho_mifid_gtp_v24_4.message = {}

-- Calculate size of: Message
lseg_tradeecho_mifid_gtp_v24_4.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_tradeecho_mifid_gtp_v24_4.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_tradeecho_mifid_gtp_v24_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_tradeecho_mifid_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_tradeecho_mifid_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_tradeecho_mifid_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = lseg_tradeecho_mifid_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_tradeecho_mifid_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_tradeecho_mifid_gtp_v24_4.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.message.display(buffer, packet, parent)
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message, range, display)
  end

  return lseg_tradeecho_mifid_gtp_v24_4.message.fields(buffer, offset, packet, parent)
end

-- Sequence Number
lseg_tradeecho_mifid_gtp_v24_4.sequence_number = {}

-- Size: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_tradeecho_mifid_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_tradeecho_mifid_gtp_v24_4.market_data_group = {}

-- Size: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_tradeecho_mifid_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_tradeecho_mifid_gtp_v24_4.message_count = {}

-- Size: Message Count
lseg_tradeecho_mifid_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_tradeecho_mifid_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_tradeecho_mifid_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Length
lseg_tradeecho_mifid_gtp_v24_4.length = {}

-- Size: Length
lseg_tradeecho_mifid_gtp_v24_4.length.size = 2

-- Display: Length
lseg_tradeecho_mifid_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_tradeecho_mifid_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Unit Header
lseg_tradeecho_mifid_gtp_v24_4.unit_header = {}

-- Size: Unit Header
lseg_tradeecho_mifid_gtp_v24_4.unit_header.size =
  lseg_tradeecho_mifid_gtp_v24_4.length.size + 
  lseg_tradeecho_mifid_gtp_v24_4.message_count.size + 
  lseg_tradeecho_mifid_gtp_v24_4.market_data_group.size + 
  lseg_tradeecho_mifid_gtp_v24_4.sequence_number.size

-- Display: Unit Header
lseg_tradeecho_mifid_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_tradeecho_mifid_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_tradeecho_mifid_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_tradeecho_mifid_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_tradeecho_mifid_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_tradeecho_mifid_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_tradeecho_mifid_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_tradeecho_mifid_gtp_v24_4.packet = {}

-- Dissect Packet
lseg_tradeecho_mifid_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_tradeecho_mifid_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_tradeecho_mifid_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_tradeecho_mifid_gtp_v24_4.init()
end

-- Dissector for Lseg TradeEcho Mifid Gtp 24.4
function omi_lseg_tradeecho_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_tradeecho_mifid_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_tradeecho_mifid_gtp_v24_4, buffer(), omi_lseg_tradeecho_mifid_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_tradeecho_mifid_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_tradeecho_mifid_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_tradeecho_mifid_gtp_v24_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg TradeEcho Mifid Gtp 24.4
local function omi_lseg_tradeecho_mifid_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_tradeecho_mifid_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_tradeecho_mifid_gtp_v24_4
  omi_lseg_tradeecho_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg TradeEcho Mifid Gtp 24.4
omi_lseg_tradeecho_mifid_gtp_v24_4:register_heuristic("udp", omi_lseg_tradeecho_mifid_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
