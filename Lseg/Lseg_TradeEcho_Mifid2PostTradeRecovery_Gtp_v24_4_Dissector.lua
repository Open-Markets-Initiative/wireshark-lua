-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 Protocol
local omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4 = Proto("Omi.Lseg.TradeEcho.Mifid2PostTradeRecovery.Gtp.v24.4", "Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4")

-- Protocol table
local lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 Fields
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.agencycrossindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.agency_cross_trade_flag = ProtoField.new("Agency Cross Trade Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.agencycrosstradeflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.algo_transaction_flag = ProtoField.new("Algo Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.algotransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.algorithmicindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.amendment_flag = ProtoField.new("Amendment Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.amendmentflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.auction_type = ProtoField.new("Auction Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.auctiontype", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.average_daily_turnover = ProtoField.new("Average Daily Turnover", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.averagedailyturnover", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.benchmark_transaction_flag = ProtoField.new("Benchmark Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.benchmarktransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_ask_price = ProtoField.new("Best Closing Ask Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.bestclosingaskprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_ask_size = ProtoField.new("Best Closing Ask Size", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.bestclosingasksize", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_bid_price = ProtoField.new("Best Closing Bid Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.bestclosingbidprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_bid_size = ProtoField.new("Best Closing Bid Size", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.bestclosingbidsize", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.cancellation_flag = ProtoField.new("Cancellation Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.cancellationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.closing_price_indicator = ProtoField.new("Closing Price Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.closingpriceindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.consecutive_aggregation_flag = ProtoField.new("Consecutive Aggregation Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.consecutiveaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.contingent_transaction_flag = ProtoField.new("Contingent Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.contingenttransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.count = ProtoField.new("Count", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.count", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.da_full_details_flag = ProtoField.new("Da Full Details Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.dafulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.daily_aggregated_transaction_flag = ProtoField.new("Daily Aggregated Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.dailyaggregatedtransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.deferralenrichmenttype", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.duplicate_flag = ProtoField.new("Duplicate Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.duplicateflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.duplicativeindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.dynamic_reference_price = ProtoField.new("Dynamic Reference Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.dynamicreferenceprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.emission_allowance_type = ProtoField.new("Emission Allowance Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.emissionallowancetype", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.exchange_for_physicals_flag = ProtoField.new("Exchange For Physicals Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.exchangeforphysicalsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fa_full_details_flag = ProtoField.new("Fa Full Details Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.fafulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fifty_two_week_trade_high = ProtoField.new("Fifty Two Week Trade High", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.fiftytwoweektradehigh", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fifty_two_week_trade_low = ProtoField.new("Fifty Two Week Trade Low", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.fiftytwoweektradelow", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.four_weeks_aggregation_flag = ProtoField.new("Four Weeks Aggregation Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.fourweeksaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.group_id = ProtoField.new("Group Id", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.groupid", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.iau_paired_size = ProtoField.new("Iau Paired Size", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.iaupairedsize", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.iau_price = ProtoField.new("Iau Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.iauprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.imbalancedirection", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.imbalancequantity", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.indefinite_aggregation_flag = ProtoField.new("Indefinite Aggregation Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.indefiniteaggregationflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.instrumentidentificationcode", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.instrumentidentificationcodetype", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_price = ProtoField.new("Last Trade Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.lasttradeprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.lasttradequantity", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_time = ProtoField.new("Last Trade Time", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.lasttradetime", ftypes.UINT64)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.ld_full_details_flag = ProtoField.new("Ld Full Details Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ldfulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.limited_details_flag = ProtoField.new("Limited Details Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.limiteddetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_status = ProtoField.new("Login Status", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.loginstatus", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.marketclosingpriceflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.marketmechanism", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.message", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.messagelength", ftypes.UINT16)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.mifidprice", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.mifidquantity", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_trading_date_and_time = ProtoField.new("Mi Fid Trading Date And Time", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.mifidtradingdateandtime", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.modificationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.negotiationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.non_price_contribution_to_discovery = ProtoField.new("Non Price Contribution To Discovery", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.nonpricecontributiontodiscovery", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.non_price_forming_transactions_flag = ProtoField.new("Non Price Forming Transactions Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.nonpriceformingtransactionsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.notionalamount", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.notionalcurrency", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_large_in_scale_flag = ProtoField.new("Nt Large In Scale Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ntlargeinscaleflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_liquidity_flag = ProtoField.new("Nt Liquidity Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ntliquidityflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_pre_trade_transparency_flag = ProtoField.new("Nt Pre Trade Transparency Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ntpretradetransparencyflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_price_conditions_flag = ProtoField.new("Nt Price Conditions Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ntpriceconditionsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.numberoftrades", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.off_book = ProtoField.new("Off Book", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.offbookautomatedindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.official_closing_price = ProtoField.new("Official Closing Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.officialclosingprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.official_opening_price = ProtoField.new("Official Opening Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.officialopeningprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.opening_price_indicator = ProtoField.new("Opening Price Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.openingpriceindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.portfolio_transaction_flag = ProtoField.new("Portfolio Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.portfoliotransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.posttradedeferralreason", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_conditions = ProtoField.new("Price Conditions", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.priceconditions", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_currency = ProtoField.new("Price Currency", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.pricecurrency", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.priceformationindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_improvement_flag = ProtoField.new("Price Improvement Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.priceimprovementflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_notation = ProtoField.new("Price Notation", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.pricenotation", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.pt_deferral_reason_flag = ProtoField.new("Pt Deferral Reason Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ptdeferralreasonflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.pt_illiquid_flag = ProtoField.new("Pt Illiquid Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.ptilliquidflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.publicationdateandtime", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.quantity_in_measurement_unit = ProtoField.new("Quantity In Measurement Unit", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.quantityinmeasurementunit", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_status = ProtoField.new("Recovery Status", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.recoverystatus", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_type = ProtoField.new("Recovery Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.recoverytype", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.referencepriceindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reference_price_transaction_flag = ProtoField.new("Reference Price Transaction Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.referencepricetransactionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_id = ProtoField.new("Request Id", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.requestid", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_level = ProtoField.new("Request Level", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.requestlevel", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_order_book_type = ProtoField.new("Request Order Book Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.requestorderbooktype", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved1", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_16 = ProtoField.new("Reserved 16", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved16", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_25 = ProtoField.new("Reserved 25", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved25", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved5", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.reserved8", ftypes.BYTES)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.si_quote_book = ProtoField.new("Si Quote Book", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.siquotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.special_dividend_flag = ProtoField.new("Special Dividend Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.specialdividendflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.specialdividendindicator", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.static_reference_price = ProtoField.new("Static Reference Price", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.staticreferenceprice", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution = ProtoField.new("Thirdcountry Trading Venue Of Execution", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.thirdcountrytradingvenueofexecution", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.total_number_of_transactions = ProtoField.new("Total Number Of Transactions", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.totalnumberoftransactions", ftypes.UINT32)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high = ProtoField.new("Trade High", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradehigh", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high_off_book = ProtoField.new("Trade High Off Book", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradehighoffbook", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high_onbook_only = ProtoField.new("Trade High Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradehighonbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low = ProtoField.new("Trade Low", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradelow", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low_off_book = ProtoField.new("Trade Low Off Book", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradelowoffbook", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low_onbook_only = ProtoField.new("Trade Low Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradelowonbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradingmode", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.transactioncategory", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.transactionidentificationcode", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.transactiontobecleared", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.turnover = ProtoField.new("Turnover", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.turnover", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unused_1 = ProtoField.new("Unused 1", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.username = ProtoField.new("Username", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.username", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_book_definition_id = ProtoField.new("Venue Book Definition Id", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venuebookdefinitionid", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_measurement_unit_notation = ProtoField.new("Venue Measurement Unit Notation", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venuemeasurementunitnotation", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venueofexecution", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_of_publication = ProtoField.new("Venue Of Publication", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venueofpublication", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_type = ProtoField.new("Venue Type", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.venuetype", ftypes.UINT8)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vo_full_details_flag = ProtoField.new("Vo Full Details Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.vofulldetailsflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume = ProtoField.new("Volume", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.volume", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_omission_flag = ProtoField.new("Volume Omission Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.volumeomissionflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag = ProtoField.new("Volume Omission For Sovereign Debt Flag", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.volumeomissionforsovereigndebtflag", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vwap = ProtoField.new("Vwap", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.vwap", ftypes.DOUBLE)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.vwaponbookonly", ftypes.DOUBLE)

-- Lseg TradeEcho Gtp Mifid2PostTradeRecovery 24.4 Application Messages
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.loginrequestmessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.loginresponsemessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mifid_ii_trade_report_message = ProtoField.new("Mifid Ii Trade Report Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.mifidiitradereportmessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_request_message = ProtoField.new("Recovery Request Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.recoveryrequestmessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_response_message = ProtoField.new("Recovery Response Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.recoveryresponsemessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.replay_and_recovery_complete_message = ProtoField.new("Replay And Recovery Complete Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.replayandrecoverycompletemessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.statistics_snapshot_message = ProtoField.new("Statistics Snapshot Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.statisticssnapshotmessage", ftypes.STRING)
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.systemeventmessage", ftypes.STRING)

-- Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 generated fields
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.tradeecho.mifid2posttraderecovery.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 Show Options
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_application_messages then
    show.application_messages = omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_application_messages
  end
  if show.structs ~= omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_structs then
    show.structs = omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_indexes then
    show.indexes = omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.prefs.show_indexes
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
-- Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 Fields
-----------------------------------------------------------------------

-- Agency Cross Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator = {}

-- Size: Agency Cross Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.size = 1

-- Display: Agency Cross Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.display = function(value)
  if value == "X" then
    return "Agency Cross Indicator: Agency Cross Trade (X)"
  end
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Agency Cross Trade Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag = {}

-- Size: Agency Cross Trade Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.size = 4

-- Display: Agency Cross Trade Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.display = function(value)
  return "Agency Cross Trade Flag: "..value
end

-- Dissect: Agency Cross Trade Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.agency_cross_trade_flag, range, value, display)

  return offset + length, value
end

-- Algo Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag = {}

-- Size: Algo Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.size = 4

-- Display: Algo Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.display = function(value)
  return "Algo Transaction Flag: "..value
end

-- Dissect: Algo Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.algo_transaction_flag, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Amendment Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag = {}

-- Size: Amendment Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.size = 4

-- Display: Amendment Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.display = function(value)
  return "Amendment Flag: "..value
end

-- Dissect: Amendment Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.amendment_flag, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type = {}

-- Size: Auction Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.size = 1

-- Display: Auction Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Average Daily Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover = {}

-- Size: Average Daily Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.size = 8

-- Display: Average Daily Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.display = function(value)
  return "Average Daily Turnover: "..value
end

-- Translate: Average Daily Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.average_daily_turnover, range, value, display)

  return offset + length, value
end

-- Benchmark Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag = {}

-- Size: Benchmark Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.size = 4

-- Display: Benchmark Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.display = function(value)
  return "Benchmark Transaction Flag: "..value
end

-- Dissect: Benchmark Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.benchmark_transaction_flag, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price = {}

-- Size: Best Closing Ask Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.size = 8

-- Display: Best Closing Ask Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.display = function(value)
  return "Best Closing Ask Price: "..value
end

-- Translate: Best Closing Ask Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_ask_price, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size = {}

-- Size: Best Closing Ask Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.size = 8

-- Display: Best Closing Ask Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.display = function(value)
  return "Best Closing Ask Size: "..value
end

-- Translate: Best Closing Ask Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_ask_size, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price = {}

-- Size: Best Closing Bid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.size = 8

-- Display: Best Closing Bid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.display = function(value)
  return "Best Closing Bid Price: "..value
end

-- Translate: Best Closing Bid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_bid_price, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size = {}

-- Size: Best Closing Bid Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.size = 8

-- Display: Best Closing Bid Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.display = function(value)
  return "Best Closing Bid Size: "..value
end

-- Translate: Best Closing Bid Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.best_closing_bid_size, range, value, display)

  return offset + length, value
end

-- Cancellation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag = {}

-- Size: Cancellation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.size = 4

-- Display: Cancellation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.display = function(value)
  return "Cancellation Flag: "..value
end

-- Dissect: Cancellation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.cancellation_flag, range, value, display)

  return offset + length, value
end

-- Closing Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator = {}

-- Size: Closing Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.size = 1

-- Display: Closing Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.display = function(value)
  return "Closing Price Indicator: "..value
end

-- Dissect: Closing Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Consecutive Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag = {}

-- Size: Consecutive Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.size = 4

-- Display: Consecutive Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.display = function(value)
  return "Consecutive Aggregation Flag: "..value
end

-- Dissect: Consecutive Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.consecutive_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Contingent Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag = {}

-- Size: Contingent Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.size = 4

-- Display: Contingent Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.display = function(value)
  return "Contingent Transaction Flag: "..value
end

-- Dissect: Contingent Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.contingent_transaction_flag, range, value, display)

  return offset + length, value
end

-- Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count = {}

-- Size: Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.size = 4

-- Display: Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.count, range, value, display)

  return offset + length, value
end

-- Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency = {}

-- Size: Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Da Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag = {}

-- Size: Da Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.size = 4

-- Display: Da Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.display = function(value)
  return "Da Full Details Flag: "..value
end

-- Dissect: Da Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.da_full_details_flag, range, value, display)

  return offset + length, value
end

-- Daily Aggregated Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag = {}

-- Size: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.size = 4

-- Display: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.display = function(value)
  return "Daily Aggregated Transaction Flag: "..value
end

-- Dissect: Daily Aggregated Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.daily_aggregated_transaction_flag, range, value, display)

  return offset + length, value
end

-- Deferral Enrichment Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type = {}

-- Size: Deferral Enrichment Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.size = 1

-- Display: Deferral Enrichment Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.display = function(value)
  return "Deferral Enrichment Type: "..value
end

-- Dissect: Deferral Enrichment Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Duplicate Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag = {}

-- Size: Duplicate Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.size = 4

-- Display: Duplicate Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.display = function(value)
  return "Duplicate Flag: "..value
end

-- Dissect: Duplicate Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.duplicate_flag, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator = {}

-- Size: Duplicative Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.display = function(value)
  return "Duplicative Indicator: "..value
end

-- Dissect: Duplicative Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price = {}

-- Size: Dynamic Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.size = 8

-- Display: Dynamic Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.display = function(value)
  return "Dynamic Reference Price: "..value
end

-- Translate: Dynamic Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.dynamic_reference_price, range, value, display)

  return offset + length, value
end

-- Emission Allowance Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type = {}

-- Size: Emission Allowance Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.size = 4

-- Display: Emission Allowance Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.display = function(value)
  return "Emission Allowance Type: "..value
end

-- Dissect: Emission Allowance Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.emission_allowance_type, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code = {}

-- Size: Event Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.display = function(value)
  if value == "T" then
    return "Event Code: Start Of Open (T)"
  end
  if value == "P" then
    return "Event Code: Start Of Pre Close (P)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange For Physicals Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag = {}

-- Size: Exchange For Physicals Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.size = 4

-- Display: Exchange For Physicals Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.display = function(value)
  return "Exchange For Physicals Flag: "..value
end

-- Dissect: Exchange For Physicals Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.exchange_for_physicals_flag, range, value, display)

  return offset + length, value
end

-- Fa Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag = {}

-- Size: Fa Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.size = 4

-- Display: Fa Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.display = function(value)
  return "Fa Full Details Flag: "..value
end

-- Dissect: Fa Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fa_full_details_flag, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high = {}

-- Size: Fifty Two Week Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.size = 8

-- Display: Fifty Two Week Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.display = function(value)
  return "Fifty Two Week Trade High: "..value
end

-- Translate: Fifty Two Week Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fifty_two_week_trade_high, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low = {}

-- Size: Fifty Two Week Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.size = 8

-- Display: Fifty Two Week Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.display = function(value)
  return "Fifty Two Week Trade Low: "..value
end

-- Translate: Fifty Two Week Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.fifty_two_week_trade_low, range, value, display)

  return offset + length, value
end

-- Four Weeks Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag = {}

-- Size: Four Weeks Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.size = 4

-- Display: Four Weeks Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.display = function(value)
  return "Four Weeks Aggregation Flag: "..value
end

-- Dissect: Four Weeks Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.four_weeks_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Group Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id = {}

-- Size: Group Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.size = 6

-- Display: Group Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.group_id, range, value, display)

  return offset + length, value
end

-- Iau Paired Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size = {}

-- Size: Iau Paired Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.size = 8

-- Display: Iau Paired Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.display = function(value)
  return "Iau Paired Size: "..value
end

-- Translate: Iau Paired Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Paired Size
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.iau_paired_size, range, value, display)

  return offset + length, value
end

-- Iau Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price = {}

-- Size: Iau Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.size = 8

-- Display: Iau Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.display = function(value)
  return "Iau Price: "..value
end

-- Translate: Iau Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.iau_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction = {}

-- Size: Imbalance Direction
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.size = 1

-- Display: Imbalance Direction
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.display = function(value)
  return "Imbalance Direction: "..value
end

-- Dissect: Imbalance Direction
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity = {}

-- Size: Imbalance Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Indefinite Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag = {}

-- Size: Indefinite Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.size = 4

-- Display: Indefinite Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.display = function(value)
  return "Indefinite Aggregation Flag: "..value
end

-- Dissect: Indefinite Aggregation Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.indefinite_aggregation_flag, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument = {}

-- Size: Instrument
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code = {}

-- Size: Instrument Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type = {}

-- Size: Instrument Identification Code Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.size = 4

-- Display: Instrument Identification Code Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.display = function(value)
  if value == "ISIN" then
    return "Instrument Identification Code Type: International Securities Identification Number (ISIN)"
  end

  return "Instrument Identification Code Type: Unknown("..value..")"
end

-- Dissect: Instrument Identification Code Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Isin
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin = {}

-- Size: Isin
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Trade Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price = {}

-- Size: Last Trade Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.size = 8

-- Display: Last Trade Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity = {}

-- Size: Last Trade Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.size = 8

-- Display: Last Trade Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Translate: Last Trade Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time = {}

-- Size: Last Trade Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.size = 8

-- Display: Last Trade Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Last Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Trade Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Ld Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag = {}

-- Size: Ld Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.size = 4

-- Display: Ld Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.display = function(value)
  return "Ld Full Details Flag: "..value
end

-- Dissect: Ld Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.ld_full_details_flag, range, value, display)

  return offset + length, value
end

-- Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length = {}

-- Size: Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.size = 2

-- Display: Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Limited Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag = {}

-- Size: Limited Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.size = 4

-- Display: Limited Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.display = function(value)
  return "Limited Details Flag: "..value
end

-- Dissect: Limited Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.limited_details_flag, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status = {}

-- Size: Login Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.size = 1

-- Display: Login Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.display = function(value)
  if value == "A" then
    return "Login Status: Login Accepted (A)"
  end
  if value == "a" then
    return "Login Status: Comp Id Inactive Suspended (a)"
  end
  if value == "b" then
    return "Login Status: Login Limit Reached (b)"
  end
  if value == "c" then
    return "Login Status: Service Unavailable (c)"
  end
  if value == "d" then
    return "Login Status: Maximum Connections Limit Reached (d)"
  end
  if value == "e" then
    return "Login Status: Failed Other (e)"
  end
  if value == "f" then
    return "Login Status: Invalid Comp Id Or Ip Address (f)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Closing Price Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag = {}

-- Size: Market Closing Price Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.size = 4

-- Display: Market Closing Price Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.display = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group = {}

-- Size: Market Data Group
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Market Mechanism
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism = {}

-- Size: Market Mechanism
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.size = 1

-- Display: Market Mechanism
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.display = function(value)
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count = {}

-- Size: Message Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length = {}

-- Size: Message Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.size = 2

-- Display: Message Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type = {}

-- Size: Message Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x81 then
    return "Message Type: Recovery Request Message (0x81)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x82 then
    return "Message Type: Recovery Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Replay And Recovery Complete Message (0x83)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x6b then
    return "Message Type: Statistics Snapshot Message (0x6b)"
  end
  if value == 0x54 then
    return "Message Type: Mifid Ii Trade Report Message (0x54)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mi Fid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price = {}

-- Size: Mi Fid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.size = 20

-- Display: Mi Fid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.display = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Mi Fid Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity = {}

-- Size: Mi Fid Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.size = 20

-- Display: Mi Fid Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.display = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Mi Fid Trading Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time = {}

-- Size: Mi Fid Trading Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.size = 27

-- Display: Mi Fid Trading Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.display = function(value)
  return "Mi Fid Trading Date And Time: "..value
end

-- Dissect: Mi Fid Trading Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mi_fid_trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Modification Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator = {}

-- Size: Modification Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.size = 1

-- Display: Modification Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator = {}

-- Size: Negotiation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.size = 1

-- Display: Negotiation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time = {}

-- Size: New End Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Non Price Contribution To Discovery
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery = {}

-- Size: Non Price Contribution To Discovery
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.size = 4

-- Display: Non Price Contribution To Discovery
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.display = function(value)
  return "Non Price Contribution To Discovery: "..value
end

-- Dissect: Non Price Contribution To Discovery
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.non_price_contribution_to_discovery, range, value, display)

  return offset + length, value
end

-- Non Price Forming Transactions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag = {}

-- Size: Non Price Forming Transactions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.size = 4

-- Display: Non Price Forming Transactions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.display = function(value)
  return "Non Price Forming Transactions Flag: "..value
end

-- Dissect: Non Price Forming Transactions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.non_price_forming_transactions_flag, range, value, display)

  return offset + length, value
end

-- Notional Amount
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount = {}

-- Size: Notional Amount
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.size = 20

-- Display: Notional Amount
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency = {}

-- Size: Notional Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.size = 3

-- Display: Notional Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Nt Large In Scale Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag = {}

-- Size: Nt Large In Scale Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.size = 4

-- Display: Nt Large In Scale Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.display = function(value)
  return "Nt Large In Scale Flag: "..value
end

-- Dissect: Nt Large In Scale Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_large_in_scale_flag, range, value, display)

  return offset + length, value
end

-- Nt Liquidity Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag = {}

-- Size: Nt Liquidity Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.size = 4

-- Display: Nt Liquidity Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.display = function(value)
  return "Nt Liquidity Flag: "..value
end

-- Dissect: Nt Liquidity Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_liquidity_flag, range, value, display)

  return offset + length, value
end

-- Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag = {}

-- Size: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.size = 4

-- Display: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.display = function(value)
  return "Nt Pre Trade Transparency Flag: "..value
end

-- Dissect: Nt Pre Trade Transparency Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_pre_trade_transparency_flag, range, value, display)

  return offset + length, value
end

-- Nt Price Conditions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag = {}

-- Size: Nt Price Conditions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.size = 4

-- Display: Nt Price Conditions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.display = function(value)
  return "Nt Price Conditions Flag: "..value
end

-- Dissect: Nt Price Conditions Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.nt_price_conditions_flag, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades = {}

-- Size: Number Of Trades
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only = {}

-- Size: Number Of Trades Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.display = function(value)
  return "Off Book Automated Indicator: "..value
end

-- Dissect: Off Book Automated Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Official Closing Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price = {}

-- Size: Official Closing Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.size = 8

-- Display: Official Closing Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.display = function(value)
  return "Official Closing Price: "..value
end

-- Translate: Official Closing Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Closing Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.official_closing_price, range, value, display)

  return offset + length, value
end

-- Official Opening Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price = {}

-- Size: Official Opening Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.size = 8

-- Display: Official Opening Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.display = function(value)
  return "Official Opening Price: "..value
end

-- Translate: Official Opening Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Opening Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.official_opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator = {}

-- Size: Opening Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.size = 1

-- Display: Opening Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.display = function(value)
  return "Opening Price Indicator: "..value
end

-- Dissect: Opening Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.opening_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type = {}

-- Size: Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.display = function(value)
  if value == 1 then
    return "Order Book Type: Si Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Off Book (2)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Portfolio Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag = {}

-- Size: Portfolio Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.size = 4

-- Display: Portfolio Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.display = function(value)
  return "Portfolio Transaction Flag: "..value
end

-- Dissect: Portfolio Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.portfolio_transaction_flag, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.size = 1

-- Display: Post Trade Deferral Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.display = function(value)
  return "Post Trade Deferral Reason: "..value
end

-- Dissect: Post Trade Deferral Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Price Conditions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions = {}

-- Size: Price Conditions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.size = 4

-- Display: Price Conditions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.display = function(value)
  return "Price Conditions: "..value
end

-- Dissect: Price Conditions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_conditions, range, value, display)

  return offset + length, value
end

-- Price Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency = {}

-- Size: Price Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.size = 3

-- Display: Price Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Formation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator = {}

-- Size: Price Formation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.size = 1

-- Display: Price Formation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.display = function(value)
  return "Price Formation Indicator: "..value
end

-- Dissect: Price Formation Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Price Improvement Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag = {}

-- Size: Price Improvement Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.size = 4

-- Display: Price Improvement Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.display = function(value)
  return "Price Improvement Flag: "..value
end

-- Dissect: Price Improvement Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_improvement_flag, range, value, display)

  return offset + length, value
end

-- Price Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation = {}

-- Size: Price Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.size = 4

-- Display: Price Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Pt Deferral Reason Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag = {}

-- Size: Pt Deferral Reason Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.size = 4

-- Display: Pt Deferral Reason Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.display = function(value)
  return "Pt Deferral Reason Flag: "..value
end

-- Dissect: Pt Deferral Reason Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.pt_deferral_reason_flag, range, value, display)

  return offset + length, value
end

-- Pt Illiquid Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag = {}

-- Size: Pt Illiquid Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.size = 4

-- Display: Pt Illiquid Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.display = function(value)
  return "Pt Illiquid Flag: "..value
end

-- Dissect: Pt Illiquid Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.pt_illiquid_flag, range, value, display)

  return offset + length, value
end

-- Publication Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time = {}

-- Size: Publication Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.size = 27

-- Display: Publication Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.display = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Quantity In Measurement Unit
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit = {}

-- Size: Quantity In Measurement Unit
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.size = 20

-- Display: Quantity In Measurement Unit
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.display = function(value)
  return "Quantity In Measurement Unit: "..value
end

-- Dissect: Quantity In Measurement Unit
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Recovery Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status = {}

-- Size: Recovery Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.size = 1

-- Display: Recovery Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.display = function(value)
  if value == "A" then
    return "Recovery Status: Request Accepted (A)"
  end
  if value == "O" then
    return "Recovery Status: Out Of Range (O)"
  end
  if value == "a" then
    return "Recovery Status: Invalid Group Or Instrument (a)"
  end
  if value == "b" then
    return "Recovery Status: Request Limit Reached (b)"
  end
  if value == "c" then
    return "Recovery Status: Concurrent Limit Reached (c)"
  end
  if value == "d" then
    return "Recovery Status: Invalid Recovery Type Or Request Level (d)"
  end
  if value == "e" then
    return "Recovery Status: Failed Other (e)"
  end

  return "Recovery Status: Unknown("..value..")"
end

-- Dissect: Recovery Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_status, range, value, display)

  return offset + length, value
end

-- Recovery Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type = {}

-- Size: Recovery Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.size = 1

-- Display: Recovery Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.display = function(value)
  if value == 0 then
    return "Recovery Type: Instrument Directory (0)"
  end
  if value == 1 then
    return "Recovery Type: Order Book (1)"
  end
  if value == 2 then
    return "Recovery Type: All Trades (2)"
  end
  if value == 3 then
    return "Recovery Type: Statistics (3)"
  end
  if value == 4 then
    return "Recovery Type: Instrument Status (4)"
  end
  if value == 5 then
    return "Recovery Type: Reserved (5)"
  end
  if value == 6 then
    return "Recovery Type: System Event (6)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Reference Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator = {}

-- Size: Reference Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.size = 1

-- Display: Reference Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.display = function(value)
  return "Reference Price Indicator: "..value
end

-- Dissect: Reference Price Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Reference Price Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag = {}

-- Size: Reference Price Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.size = 4

-- Display: Reference Price Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.display = function(value)
  return "Reference Price Transaction Flag: "..value
end

-- Dissect: Reference Price Transaction Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reference_price_transaction_flag, range, value, display)

  return offset + length, value
end

-- Request Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id = {}

-- Size: Request Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.size = 4

-- Display: Request Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_id, range, value, display)

  return offset + length, value
end

-- Request Level
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level = {}

-- Size: Request Level
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.size = 1

-- Display: Request Level
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.display = function(value)
  if value == 0 then
    return "Request Level: Instrument (0)"
  end
  if value == 1 then
    return "Request Level: Group Segment (1)"
  end
  if value == 2 then
    return "Request Level: Multicast Channel (2)"
  end

  return "Request Level: Unknown("..value..")"
end

-- Dissect: Request Level
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_level, range, value, display)

  return offset + length, value
end

-- Request Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type = {}

-- Size: Request Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.size = 1

-- Display: Request Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.display = function(value)
  if value == 0 then
    return "Request Order Book Type: All Books (0)"
  end
  if value == 1 then
    return "Request Order Book Type: Si Quote Book (1)"
  end
  if value == 2 then
    return "Request Order Book Type: Offbook (2)"
  end

  return "Request Order Book Type: Unknown("..value..")"
end

-- Dissect: Request Order Book Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.request_order_book_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1 = {}

-- Size: Reserved 1
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.size = 1

-- Display: Reserved 1
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16 = {}

-- Size: Reserved 16
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.size = 16

-- Display: Reserved 16
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23 = {}

-- Size: Reserved 23
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Reserved 25
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25 = {}

-- Size: Reserved 25
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.size = 25

-- Display: Reserved 25
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Reserved 5
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5 = {}

-- Size: Reserved 5
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.size = 5

-- Display: Reserved 5
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8 = {}

-- Size: Reserved 8
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.size = 8

-- Display: Reserved 8
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Segment
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment = {}

-- Size: Segment
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number = {}

-- Size: Sequence Number
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason = {}

-- Size: Session Change Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue = {}

-- Size: Source Venue
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.display = function(value)
  if value == 11 then
    return "Source Venue: Trade Echo (11)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Special Dividend Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag = {}

-- Size: Special Dividend Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.size = 4

-- Display: Special Dividend Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.display = function(value)
  return "Special Dividend Flag: "..value
end

-- Dissect: Special Dividend Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.special_dividend_flag, range, value, display)

  return offset + length, value
end

-- Special Dividend Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator = {}

-- Size: Special Dividend Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.size = 1

-- Display: Special Dividend Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.display = function(value)
  return "Special Dividend Indicator: "..value
end

-- Dissect: Special Dividend Indicator
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Static Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price = {}

-- Size: Static Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.size = 8

-- Display: Static Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.display = function(value)
  return "Static Reference Price: "..value
end

-- Translate: Static Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Reference Price
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.static_reference_price, range, value, display)

  return offset + length, value
end

-- Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution = {}

-- Size: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.size = 4

-- Display: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.display = function(value)
  return "Thirdcountry Trading Venue Of Execution: "..value
end

-- Dissect: Thirdcountry Trading Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.thirdcountry_trading_venue_of_execution, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id = {}

-- Size: Tick Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp = {}

-- Size: Timestamp
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions = {}

-- Size: Total Number Of Transactions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.size = 4

-- Display: Total Number Of Transactions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.display = function(value)
  return "Total Number Of Transactions: "..value
end

-- Dissect: Total Number Of Transactions
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.total_number_of_transactions, range, value, display)

  return offset + length, value
end

-- Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high = {}

-- Size: Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.size = 8

-- Display: Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.display = function(value)
  return "Trade High: "..value
end

-- Translate: Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high, range, value, display)

  return offset + length, value
end

-- Trade High Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book = {}

-- Size: Trade High Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.size = 8

-- Display: Trade High Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.display = function(value)
  return "Trade High Off Book: "..value
end

-- Translate: Trade High Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high_off_book, range, value, display)

  return offset + length, value
end

-- Trade High Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only = {}

-- Size: Trade High Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.size = 8

-- Display: Trade High Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.display = function(value)
  return "Trade High Onbook Only: "..value
end

-- Translate: Trade High Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_high_onbook_only, range, value, display)

  return offset + length, value
end

-- Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low = {}

-- Size: Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.size = 8

-- Display: Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.display = function(value)
  return "Trade Low: "..value
end

-- Translate: Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low, range, value, display)

  return offset + length, value
end

-- Trade Low Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book = {}

-- Size: Trade Low Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.size = 8

-- Display: Trade Low Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.display = function(value)
  return "Trade Low Off Book: "..value
end

-- Translate: Trade Low Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low Off Book
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low_off_book, range, value, display)

  return offset + length, value
end

-- Trade Low Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only = {}

-- Size: Trade Low Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.size = 8

-- Display: Trade Low Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.display = function(value)
  return "Trade Low Onbook Only: "..value
end

-- Translate: Trade Low Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trade_low_onbook_only, range, value, display)

  return offset + length, value
end

-- Trading Mode
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode = {}

-- Size: Trading Mode
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.size = 1

-- Display: Trading Mode
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status = {}

-- Size: Trading Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Category
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category = {}

-- Size: Transaction Category
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.size = 1

-- Display: Transaction Category
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code = {}

-- Size: Transaction Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.size = 52

-- Display: Transaction Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.display = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.size = 1

-- Display: Transaction To Be Cleared
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.display = function(value)
  if value == "0" then
    return "Transaction To Be Cleared: No (0)"
  end
  if value == "1" then
    return "Transaction To Be Cleared: Yes (1)"
  end

  return "Transaction To Be Cleared: Unknown("..value..")"
end

-- Dissect: Transaction To Be Cleared
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover = {}

-- Size: Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.size = 8

-- Display: Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.turnover, range, value, display)

  return offset + length, value
end

-- Turnover Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only = {}

-- Size: Turnover Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Username
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username = {}

-- Size: Username
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.size = 8

-- Display: Username
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Book Definition Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id = {}

-- Size: Venue Book Definition Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.size = 1

-- Display: Venue Book Definition Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.display = function(value)
  if value == 0 then
    return "Venue Book Definition Id: Unspecified (0)"
  end
  if value == 1 then
    return "Venue Book Definition Id: Off Book (1)"
  end

  return "Venue Book Definition Id: Unknown("..value..")"
end

-- Dissect: Venue Book Definition Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_book_definition_id, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Venue Measurement Unit Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation = {}

-- Size: Venue Measurement Unit Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.size = 25

-- Display: Venue Measurement Unit Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.display = function(value)
  return "Venue Measurement Unit Notation: "..value
end

-- Dissect: Venue Measurement Unit Notation
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_measurement_unit_notation, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution = {}

-- Size: Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.size = 4

-- Display: Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Venue Of Publication
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication = {}

-- Size: Venue Of Publication
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.size = 4

-- Display: Venue Of Publication
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.display = function(value)
  return "Venue Of Publication: "..value
end

-- Dissect: Venue Of Publication
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_of_publication, range, value, display)

  return offset + length, value
end

-- Venue Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type = {}

-- Size: Venue Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.size = 1

-- Display: Venue Type
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.display = function(value)
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
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.venue_type, range, value, display)

  return offset + length, value
end

-- Vo Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag = {}

-- Size: Vo Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.size = 4

-- Display: Vo Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.display = function(value)
  return "Vo Full Details Flag: "..value
end

-- Dissect: Vo Full Details Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vo_full_details_flag, range, value, display)

  return offset + length, value
end

-- Volume
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume = {}

-- Size: Volume
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.size = 8

-- Display: Volume
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Omission Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag = {}

-- Size: Volume Omission Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.size = 4

-- Display: Volume Omission Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.display = function(value)
  return "Volume Omission Flag: "..value
end

-- Dissect: Volume Omission Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_omission_flag, range, value, display)

  return offset + length, value
end

-- Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag = {}

-- Size: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size = 4

-- Display: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.display = function(value)
  return "Volume Omission For Sovereign Debt Flag: "..value
end

-- Dissect: Volume Omission For Sovereign Debt Flag
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_omission_for_sovereign_debt_flag, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only = {}

-- Size: Volume Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap = {}

-- Size: Vwap
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.size = 8

-- Display: Vwap
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vwap, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only = {}

-- Size: Vwap Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.translate(raw)
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4
-----------------------------------------------------------------------

-- Mifid Ii Trade Report Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message = {}

-- Size: Mifid Ii Trade Report Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.size

-- Display: Mifid Ii Trade Report Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Report Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: Alpha
  index, transaction_identification_code = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions: UInt32
  index, total_number_of_transactions = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.total_number_of_transactions.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: MiFID Decimal
  index, mi_fid_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: MiFID Decimal
  index, mi_fid_quantity = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Mi Fid Trading Date And Time: Date and Time
  index, mi_fid_trading_date_and_time = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mi_fid_trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: Alpha
  index, instrument_identification_code_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha
  index, instrument_identification_code = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_notation.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha
  index, price_currency = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: MiFID Decimal
  index, notional_amount = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: Alpha
  index, notional_currency = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: Date and Time
  index, publication_date_and_time = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Benchmark Transaction Flag: Alpha
  index, benchmark_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.benchmark_transaction_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade Flag: Alpha
  index, agency_cross_trade_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_trade_flag.dissect(buffer, index, packet, parent)

  -- Non Price Forming Transactions Flag: Alpha
  index, non_price_forming_transactions_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_forming_transactions_flag.dissect(buffer, index, packet, parent)

  -- Non Price Contribution To Discovery: Alpha
  index, non_price_contribution_to_discovery = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.non_price_contribution_to_discovery.dissect(buffer, index, packet, parent)

  -- Special Dividend Flag: Alpha
  index, special_dividend_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_flag.dissect(buffer, index, packet, parent)

  -- Pt Deferral Reason Flag: Alpha
  index, pt_deferral_reason_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_deferral_reason_flag.dissect(buffer, index, packet, parent)

  -- Reference Price Transaction Flag: Alpha
  index, reference_price_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_transaction_flag.dissect(buffer, index, packet, parent)

  -- Nt Liquidity Flag: Alpha
  index, nt_liquidity_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_liquidity_flag.dissect(buffer, index, packet, parent)

  -- Nt Price Conditions Flag: Alpha
  index, nt_price_conditions_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_price_conditions_flag.dissect(buffer, index, packet, parent)

  -- Algo Transaction Flag: Alpha
  index, algo_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algo_transaction_flag.dissect(buffer, index, packet, parent)

  -- Pt Illiquid Flag: Alpha
  index, pt_illiquid_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.pt_illiquid_flag.dissect(buffer, index, packet, parent)

  -- Price Improvement Flag: Alpha
  index, price_improvement_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_improvement_flag.dissect(buffer, index, packet, parent)

  -- Cancellation Flag: Alpha
  index, cancellation_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.cancellation_flag.dissect(buffer, index, packet, parent)

  -- Amendment Flag: Alpha
  index, amendment_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.amendment_flag.dissect(buffer, index, packet, parent)

  -- Duplicate Flag: Alpha
  index, duplicate_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicate_flag.dissect(buffer, index, packet, parent)

  -- Exchange For Physicals Flag: Alpha
  index, exchange_for_physicals_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.exchange_for_physicals_flag.dissect(buffer, index, packet, parent)

  -- Limited Details Flag: Alpha
  index, limited_details_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.limited_details_flag.dissect(buffer, index, packet, parent)

  -- Ld Full Details Flag: Alpha
  index, ld_full_details_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.ld_full_details_flag.dissect(buffer, index, packet, parent)

  -- Daily Aggregated Transaction Flag: Alpha
  index, daily_aggregated_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.daily_aggregated_transaction_flag.dissect(buffer, index, packet, parent)

  -- Da Full Details Flag: Alpha
  index, da_full_details_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.da_full_details_flag.dissect(buffer, index, packet, parent)

  -- Volume Omission Flag: Alpha
  index, volume_omission_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_flag.dissect(buffer, index, packet, parent)

  -- Vo Full Details Flag: Alpha
  index, vo_full_details_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vo_full_details_flag.dissect(buffer, index, packet, parent)

  -- Four Weeks Aggregation Flag: Alpha
  index, four_weeks_aggregation_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.four_weeks_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Fa Full Details Flag: Alpha
  index, fa_full_details_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fa_full_details_flag.dissect(buffer, index, packet, parent)

  -- Indefinite Aggregation Flag: Alpha
  index, indefinite_aggregation_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.indefinite_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Volume Omission For Sovereign Debt Flag: Alpha
  index, volume_omission_for_sovereign_debt_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_omission_for_sovereign_debt_flag.dissect(buffer, index, packet, parent)

  -- Consecutive Aggregation Flag: Alpha
  index, consecutive_aggregation_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.consecutive_aggregation_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: UInt8
  index, reserved_1 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Venue Type: UInt8
  index, venue_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_type.dissect(buffer, index, packet, parent)

  -- Venue Book Definition Id: UInt8
  index, venue_book_definition_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_book_definition_id.dissect(buffer, index, packet, parent)

  -- Venue Measurement Unit Notation: Alpha
  index, venue_measurement_unit_notation = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_measurement_unit_notation.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: MiFID Decimal
  index, quantity_in_measurement_unit = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: Byte
  index, transaction_to_be_cleared = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Emission Allowance Type: Alpha
  index, emission_allowance_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.emission_allowance_type.dissect(buffer, index, packet, parent)

  -- Venue Of Publication: Alpha
  index, venue_of_publication = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_of_publication.dissect(buffer, index, packet, parent)

  -- Market Mechanism: Byte
  index, market_mechanism = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Byte
  index, trading_mode = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Byte
  index, transaction_category = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: Byte
  index, negotiation_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: Byte
  index, agency_cross_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Byte
  index, modification_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: Byte
  index, reference_price_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: Byte
  index, special_dividend_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: Byte
  index, off_book_automated_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: Byte
  index, price_formation_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Byte
  index, algorithmic_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: Byte
  index, post_trade_deferral_reason = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: Byte
  index, deferral_enrichment_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Byte
  index, duplicative_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Thirdcountry Trading Venue Of Execution: Alpha
  index, thirdcountry_trading_venue_of_execution = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.thirdcountry_trading_venue_of_execution.dissect(buffer, index, packet, parent)

  -- Portfolio Transaction Flag: Alpha
  index, portfolio_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.portfolio_transaction_flag.dissect(buffer, index, packet, parent)

  -- Contingent Transaction Flag: Alpha
  index, contingent_transaction_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.contingent_transaction_flag.dissect(buffer, index, packet, parent)

  -- Price Conditions: Alpha
  index, price_conditions = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_conditions.dissect(buffer, index, packet, parent)

  -- Market Closing Price Flag: Alpha
  index, market_closing_price_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_closing_price_flag.dissect(buffer, index, packet, parent)

  -- Nt Large In Scale Flag: Alpha
  index, nt_large_in_scale_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_large_in_scale_flag.dissect(buffer, index, packet, parent)

  -- Nt Pre Trade Transparency Flag: Alpha
  index, nt_pre_trade_transparency_flag = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.nt_pre_trade_transparency_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Report Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.mifid_ii_trade_report_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Snapshot Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message = {}

-- Size: Statistics Snapshot Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.size

-- Display: Statistics Snapshot Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Snapshot Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: Size4
  index, volume = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: Size4
  index, volume_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: Price4
  index, vwap = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: Price4
  index, vwap_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: UInt32
  index, number_of_trades_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: Price4
  index, turnover = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: Price4
  index, turnover_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.turnover_onbook_only.dissect(buffer, index, packet, parent)

  -- Official Opening Price: Price
  index, official_opening_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_opening_price.dissect(buffer, index, packet, parent)

  -- Official Closing Price: Price
  index, official_closing_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.official_closing_price.dissect(buffer, index, packet, parent)

  -- Trade High Onbook Only: Price
  index, trade_high_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_onbook_only.dissect(buffer, index, packet, parent)

  -- Trade Low Onbook Only: Price
  index, trade_low_onbook_only = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_onbook_only.dissect(buffer, index, packet, parent)

  -- Trade High: Price
  index, trade_high = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high.dissect(buffer, index, packet, parent)

  -- Trade Low: Price
  index, trade_low = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade High: Price
  index, fifty_two_week_trade_high = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_high.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade Low: Price
  index, fifty_two_week_trade_low = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fifty_two_week_trade_low.dissect(buffer, index, packet, parent)

  -- Opening Price Indicator: Byte
  index, opening_price_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.opening_price_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price Indicator: Byte
  index, closing_price_indicator = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.closing_price_indicator.dissect(buffer, index, packet, parent)

  -- Iau Price: Price
  index, iau_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_price.dissect(buffer, index, packet, parent)

  -- Iau Paired Size: Size
  index, iau_paired_size = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.iau_paired_size.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Size
  index, imbalance_quantity = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Byte
  index, imbalance_direction = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Price: Price
  index, best_closing_bid_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_price.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Price: Price
  index, best_closing_ask_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_price.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Size: Size
  index, best_closing_bid_size = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_bid_size.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Size: Size
  index, best_closing_ask_size = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.best_closing_ask_size.dissect(buffer, index, packet, parent)

  -- Trade High Off Book: Price
  index, trade_high_off_book = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_high_off_book.dissect(buffer, index, packet, parent)

  -- Trade Low Off Book: Price
  index, trade_low_off_book = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trade_low_off_book.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_16.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.auction_type.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Price
  index, last_trade_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: Size
  index, last_trade_quantity = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: UDT
  index, last_trade_time = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.last_trade_time.dissect(buffer, index, packet, parent)

  -- Static Reference Price: Price
  index, static_reference_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_reference_price.dissect(buffer, index, packet, parent)

  -- Dynamic Reference Price: Price
  index, dynamic_reference_price = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Snapshot Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.statistics_snapshot_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.size

-- Display: Instrument Status Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Allowed Book Types
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Si Quote Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Si Quote Book"
  end
  -- Is Off Book flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Off Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unused_1, range, value)

  -- Si Quote Book: 1 Bit
  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.si_quote_book, range, value)

  -- Off Book: 1 Bit
  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.off_book, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unused_5, range, value)
end

-- Dissect: Allowed Book Types
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.size

-- Display: Instrument Directory Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 4 fields
  index, allowed_book_types = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: Price
  index, price_band_tolerances = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: Alpha
  index, reserved_23 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 5: Alpha
  index, reserved_5 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_5.dissect(buffer, index, packet, parent)

  -- Average Daily Turnover: Price4
  index, average_daily_turnover = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.average_daily_turnover.dissect(buffer, index, packet, parent)

  -- Reserved 25: Alpha
  index, reserved_25 = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.reserved_25.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message = {}

-- Size: System Event Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size

-- Display: System Event Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay And Recovery Complete Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message = {}

-- Size: Replay And Recovery Complete Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.size

-- Display: Replay And Recovery Complete Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay And Recovery Complete Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: UInt32
  index, request_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay And Recovery Complete Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.replay_and_recovery_complete_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message = {}

-- Size: Recovery Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.size

-- Display: Recovery Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.count.dissect(buffer, index, packet, parent)

  -- Recovery Status: Byte
  index, recovery_status = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_status.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_response_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message = {}

-- Size: Login Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.size

-- Display: Login Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_response_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message = {}

-- Size: Recovery Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.size

-- Display: Recovery Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Level: UInt8
  index, request_level = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_level.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Group Id: Alpha
  index, group_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.group_id.dissect(buffer, index, packet, parent)

  -- Request Order Book Type: UInt8
  index, request_order_book_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Recovery Type: UInt8
  index, recovery_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.recovery_request_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message = {}

-- Size: Login Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.size

-- Display: Login Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.login_request_message, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.payload = {}

-- Dissect: Payload
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Request Message
  if message_type == 0x81 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Response Message
  if message_type == 0x82 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.recovery_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay And Recovery Complete Message
  if message_type == 0x83 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.replay_and_recovery_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Snapshot Message
  if message_type == 0x6b then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.statistics_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Report Message
  if message_type == 0x54 then
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.mifid_ii_trade_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header = {}

-- Size: Message Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.size

-- Display: Message Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message = {}

-- Display: Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 10 branches
  index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.message, buffer(offset, 0))
    local current = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header = {}

-- Size: Unit Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.size =
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.size + 
  lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.size

-- Display: Unit Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.packet = {}

-- Verify required size of Tcp packet
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.size
end

-- Dissect Packet
lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.init()
end

-- Dissector for Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4
function omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4, buffer(), omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 (Tcp)
local function omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4
  omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4
omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4:register_heuristic("tcp", omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4_tcp_heuristic)

-- Register Lseg TradeEcho Mifid2PostTradeRecovery Gtp 24.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_tradeecho_mifid2posttraderecovery_gtp_v24_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
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
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
