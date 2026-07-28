-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Protocol
local omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018 = Proto("Omi.Koscom.MdcsRealtime.ReferenceInfoInvestorActivities.Exture.v2.018", "Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018")

-- Protocol table
local koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Fields
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.adesignatednumberforanissue", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_ask_trading_value = ProtoField.new("Accumulated Ask Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedasktradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_ask_trading_volume = ProtoField.new("Accumulated Ask Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedasktradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_bid_trading_value = ProtoField.new("Accumulated Bid Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedbidtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_bid_trading_volume = ProtoField.new("Accumulated Bid Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedbidtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedtradingvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.ask_treasury_stock_declaration_id = ProtoField.new("Ask Treasury Stock Declaration Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.asktreasurystockdeclarationid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageconvexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averagecouponprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averagecurrentyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageduration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageforwardytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageremainingmaturityprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averagespread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averagespreadsign", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageyld", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.averageytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.basetime", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.basisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bid_treasury_stock_declaration_id = ProtoField.new("Bid Treasury Stock Declaration Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bidtreasurystockdeclarationid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bondindexid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.buyin_type_code = ProtoField.new("Buyin Type Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.buyintypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.buyin_volume = ProtoField.new("Buyin Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.buyinvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.calculatingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.calculationtime", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_double_11 = ProtoField.new("Call Re Investment Index Double 11", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.callreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_float_12816 = ProtoField.new("Call Re Investment Index Float 12816", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.callreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.callreinvestmentindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.cashinflow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.cleanprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_double_11 = ProtoField.new("Clean Price Index Double 11", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.cleanpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_float_12816 = ProtoField.new("Clean Price Index Float 12816", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.cleanpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.cleanpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.convexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.covered_short_selling_trading_value = ProtoField.new("Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.coveredshortsellingtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.covered_short_selling_trading_volume = ProtoField.new("Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.coveredshortsellingtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.currencycode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.currenttime", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.duration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.filler = ProtoField.new("Filler", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.filler", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.futuresbasisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.groupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.index", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexchangeagainstthepreviousday", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexchangesignagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexconstituent", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexmarketcapitalization", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.indexnumberofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.investor_code = ProtoField.new("Investor Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.investorcode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.issuedamount", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.issuedamountweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.marketcapitalizationweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_double_11 = ProtoField.new("Market Price Index Double 11", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.marketpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_float_12816 = ProtoField.new("Market Price Index Float 12816", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.marketpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.marketpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.maturitycode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.packet", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.reinvestcallcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.security_group_id = ProtoField.new("Security Group Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitygroupid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.sessionid", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.totalearningsindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.totalearningsindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.totalprofitindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.tradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.tradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.transmission_date = ProtoField.new("Transmission Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.transmissiondate", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.transmissiontime", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_applied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.uptickruleappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_applied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.uptickruleappliedcoveredshortsellingtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_unapplied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.uptickruleunappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_unapplied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.uptickruleunappliedcoveredshortsellingtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.weightofcleanindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.weightofsumindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_double_11 = ProtoField.new("Zero Re Investment Index Double 11", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.zeroreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_float_12816 = ProtoField.new("Zero Re Investment Index Float 12816", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.zeroreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.zeroreinvestmentindexweight", ftypes.STRING)

-- Koscom MdcsRealtime Exture ReferenceInfoInvestorActivities 2.018 Application Messages
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bondindexkrxmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bondktbindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bondktbindextermstructuremessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.bondprimeindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.globalindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.krxestimatedindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.krxindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.pollingdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_buy_in_volume_message = ProtoField.new("Securities Buy In Volume Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiesbuyinvolumemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_commodities_message = ProtoField.new("Securities Investor Activities Per Commodities Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiesinvestoractivitiespercommoditiesmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_industry_message = ProtoField.new("Securities Investor Activities Per Industry Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiesinvestoractivitiesperindustrymessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_issue_eod_message = ProtoField.new("Securities Investor Activities Per Issue Eod Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiesinvestoractivitiesperissueeodmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_short_selling_message = ProtoField.new("Securities Short Selling Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiesshortsellingmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_treasury_stocks_traded_message = ProtoField.new("Securities Treasury Stocks Traded Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.018.securitiestreasurystockstradedmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Element Dissection Options
show.application_messages = true
show.packet = true

-- Register Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Show Options
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")


-- Handle changed preferences
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_application_messages
  end
  if show.packet ~= omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_packet then
    show.packet = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.prefs.show_packet
  end
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value = {}

-- Size: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.size = 22

-- Display: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.display = function(value)
  return "Accumulated Ask Trading Value: "..value
end

-- Dissect: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume = {}

-- Size: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.size = 12

-- Display: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.display = function(value)
  return "Accumulated Ask Trading Volume: "..value
end

-- Dissect: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value = {}

-- Size: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.size = 22

-- Display: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.display = function(value)
  return "Accumulated Bid Trading Value: "..value
end

-- Dissect: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume = {}

-- Size: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.size = 12

-- Display: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.display = function(value)
  return "Accumulated Bid Trading Volume: "..value
end

-- Dissect: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.display = function(value)
  return "Accumulated Cash: "..value
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.size = 12

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id = {}

-- Size: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.size = 5

-- Display: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.display = function(value)
  return "Ask Treasury Stock Declaration Id: "..value
end

-- Dissect: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.ask_treasury_stock_declaration_id, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.display = function(value)
  return "Average Convexity: "..value
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.display = function(value)
  return "Average Coupon Price: "..value
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.display = function(value)
  return "Average Current Yield: "..value
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.display = function(value)
  return "Average Duration: "..value
end

-- Dissect: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.display = function(value)
  return "Average Forward Ytm: "..value
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.display = function(value)
  return "Average Remaining Maturity Price: "..value
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.display = function(value)
  return "Average Spread: "..value
end

-- Dissect: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.display = function(value)
  if value == "+" then
    return "Average Spread Sign: Ascended (+)"
  end
  if value == " " then
    return "Average Spread Sign: Unchanged (<whitespace>)"
  end
  if value == "-" then
    return "Average Spread Sign: Declined (-)"
  end

  return "Average Spread Sign: Unknown("..value..")"
end

-- Dissect: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.display = function(value)
  return "Average Yld: "..value
end

-- Dissect: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.display = function(value)
  return "Average Ytm: "..value
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.display = function(value)
  return "Base Time: "..value
end

-- Dissect: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.display = function(value)
  return "Basis Price: "..value
end

-- Dissect: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id = {}

-- Size: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.size = 5

-- Display: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.display = function(value)
  return "Bid Treasury Stock Declaration Id: "..value
end

-- Dissect: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bid_treasury_stock_declaration_id, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.business_date, range, value, display)

  return offset + length, value
end

-- Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code = {}

-- Size: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.size = 1

-- Display: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.display = function(value)
  return "Buyin Type Code: "..value
end

-- Dissect: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.buyin_type_code, range, value, display)

  return offset + length, value
end

-- Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume = {}

-- Size: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.size = 15

-- Display: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.display = function(value)
  return "Buyin Volume: "..value
end

-- Dissect: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.buyin_volume, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.display = function(value)
  return "Calculating Time: "..value
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.display = function(value)
  return "Calculation Time: "..value
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11 = {}

-- Size: Call Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.size = 11

-- Display: Call Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.display = function(value)
  return "Call Re Investment Index Double 11: "..value
end

-- Dissect: Call Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816 = {}

-- Size: Call Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.size = 16

-- Display: Call Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.display = function(value)
  return "Call Re Investment Index Float 12816: "..value
end

-- Dissect: Call Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.display = function(value)
  return "Call Re Investment Index Weight: "..value
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.display = function(value)
  return "Cash Inflow: "..value
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.display = function(value)
  return "Clean Price: "..value
end

-- Dissect: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11 = {}

-- Size: Clean Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.size = 11

-- Display: Clean Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.display = function(value)
  return "Clean Price Index Double 11: "..value
end

-- Dissect: Clean Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Clean Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816 = {}

-- Size: Clean Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.size = 16

-- Display: Clean Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.display = function(value)
  return "Clean Price Index Float 12816: "..value
end

-- Dissect: Clean Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.display = function(value)
  return "Clean Price Index Weight: "..value
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.display = function(value)
  return "Convexity: "..value
end

-- Dissect: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.convexity, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value = {}

-- Size: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.size = 22

-- Display: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.display = function(value)
  return "Covered Short Selling Trading Value: "..value
end

-- Dissect: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume = {}

-- Size: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.size = 12

-- Display: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.display = function(value)
  return "Covered Short Selling Trading Volume: "..value
end

-- Dissect: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.size = 3

-- Display: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.display = function(value)
  if value == "KRW" then
    return "Currency Code: Korean Won (KRW)"
  end
  if value == "JPY" then
    return "Currency Code: Japanese Yen (JPY)"
  end
  if value == "USD" then
    return "Currency Code: Us Dollar (USD)"
  end
  if value == "HKD" then
    return "Currency Code: Hong Kong Dollar (HKD)"
  end
  if value == "TWD" then
    return "Currency Code: Taiwan Dollar (TWD)"
  end
  if value == "CNY" then
    return "Currency Code: Chinese Yuan (CNY)"
  end
  if value == "EUR" then
    return "Currency Code: Euro (EUR)"
  end
  if value == "GBP" then
    return "Currency Code: British Pound (GBP)"
  end

  return "Currency Code: Unknown("..value..")"
end

-- Dissect: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.display = function(value)
  return "Current Time: "..value
end

-- Dissect: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.current_time, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration = {}

-- Size: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.display = function(value)
  return "Duration: "..value
end

-- Dissect: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Filler
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler = {}

-- Size: Filler
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size = 3

-- Display: Filler
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.filler, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.display = function(value)
  return "Futures Basis Price: "..value
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.group_code, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index = {}

-- Size: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.size = 9

-- Display: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.display = function(value)
  return "Index: "..value
end

-- Dissect: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.display = function(value)
  return "Index Change Against The Previous Day: "..value
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.display = function(value)
  if value == "+" then
    return "Index Change Sign Against The Previous Day: Ascended (+)"
  end
  if value == " " then
    return "Index Change Sign Against The Previous Day: Unchanged (<whitespace>)"
  end
  if value == "-" then
    return "Index Change Sign Against The Previous Day: Declined (-)"
  end

  return "Index Change Sign Against The Previous Day: Unknown("..value..")"
end

-- Dissect: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.display = function(value)
  if value == "0" then
    return "Index Constituent: Included In Etf Not In Index (0)"
  end
  if value == "1" then
    return "Index Constituent: Included In Index (1)"
  end

  return "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code = {}

-- Size: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.size = 4

-- Display: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.display = function(value)
  return "Issued Amount Weight: "..value
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.display = function(value)
  return "Market Capitalization Weight: "..value
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11 = {}

-- Size: Market Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.size = 11

-- Display: Market Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.display = function(value)
  return "Market Price Index Double 11: "..value
end

-- Dissect: Market Price Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Market Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816 = {}

-- Size: Market Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.size = 16

-- Display: Market Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.display = function(value)
  return "Market Price Index Float 12816: "..value
end

-- Dissect: Market Price Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.display = function(value)
  return "Market Price Index Weight: "..value
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.display = function(value)
  if value == "I2000" then
    return "Message Code: Polling Data Message (I2000)"
  end
  if value == "IA000" then
    return "Message Code: Krx Index Message (IA000)"
  end
  if value == "IB000" then
    return "Message Code: Krx Estimated Index Message (IB000)"
  end
  if value == "J2000" then
    return "Message Code: Global Index Message (J2000)"
  end
  if value == "J4000" then
    return "Message Code: Bond Prime Index Message (J4000)"
  end
  if value == "K1000" then
    return "Message Code: Bond Ktb Index Message (K1000)"
  end
  if value == "K8000" then
    return "Message Code: Bond Ktb Index Term Structure Message (K8000)"
  end
  if value == "IG000" then
    return "Message Code: Bond Index Krx Message (IG000)"
  end
  if value == "C001S" then
    return "Message Code: Securities Investor Activities Per Industry Message (C001S)"
  end
  if value == "C001Q" then
    return "Message Code: Securities Investor Activities Per Industry Message (C001Q)"
  end
  if value == "C001X" then
    return "Message Code: Securities Investor Activities Per Industry Message (C001X)"
  end
  if value == "C101S" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C101S)"
  end
  if value == "C102S" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C102S)"
  end
  if value == "C103S" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C103S)"
  end
  if value == "C104S" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C104S)"
  end
  if value == "C105S" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C105S)"
  end
  if value == "C101Q" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C101Q)"
  end
  if value == "C101X" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C101X)"
  end
  if value == "C101G" then
    return "Message Code: Securities Investor Activities Per Issue Eod Message (C101G)"
  end
  if value == "IC02S" then
    return "Message Code: Securities Investor Activities Per Commodities Message (IC02S)"
  end
  if value == "IC03S" then
    return "Message Code: Securities Investor Activities Per Commodities Message (IC03S)"
  end
  if value == "IC04S" then
    return "Message Code: Securities Investor Activities Per Commodities Message (IC04S)"
  end
  if value == "IC05S" then
    return "Message Code: Securities Investor Activities Per Commodities Message (IC05S)"
  end
  if value == "IC01G" then
    return "Message Code: Securities Investor Activities Per Commodities Message (IC01G)"
  end
  if value == "I801S" then
    return "Message Code: Securities Short Selling Message (I801S)"
  end
  if value == "I803S" then
    return "Message Code: Securities Short Selling Message (I803S)"
  end
  if value == "I804S" then
    return "Message Code: Securities Short Selling Message (I804S)"
  end
  if value == "I805S" then
    return "Message Code: Securities Short Selling Message (I805S)"
  end
  if value == "I801Q" then
    return "Message Code: Securities Short Selling Message (I801Q)"
  end
  if value == "B001S" then
    return "Message Code: Securities Treasury Stocks Traded Message (B001S)"
  end
  if value == "B001Q" then
    return "Message Code: Securities Treasury Stocks Traded Message (B001Q)"
  end
  if value == "B001X" then
    return "Message Code: Securities Treasury Stocks Traded Message (B001X)"
  end
  if value == "O401S" then
    return "Message Code: Securities Buy In Volume Message (O401S)"
  end
  if value == "O402S" then
    return "Message Code: Securities Buy In Volume Message (O402S)"
  end
  if value == "O403S" then
    return "Message Code: Securities Buy In Volume Message (O403S)"
  end
  if value == "O404S" then
    return "Message Code: Securities Buy In Volume Message (O404S)"
  end
  if value == "O401Q" then
    return "Message Code: Securities Buy In Volume Message (O401Q)"
  end
  if value == "O401X" then
    return "Message Code: Securities Buy In Volume Message (O401X)"
  end

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.display = function(value)
  return "Reinvest Call Cash: "..value
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id = {}

-- Size: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.size = 2

-- Display: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.session_id, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.display = function(value)
  return "Total Earnings Index: "..value
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.display = function(value)
  return "Total Earnings Index Weight: "..value
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.display = function(value)
  return "Total Profit Index: "..value
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.size = 10

-- Display: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date = {}

-- Size: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.size = 8

-- Display: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.display = function(value)
  return "Transmission Date: "..value
end

-- Dissect: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.transmission_date, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.display = function(value)
  return "Transmission Time: "..value
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.display = function(value)
  return "Uptick Rule Applied Covered Short Selling Trading Value: "..value
end

-- Dissect: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_applied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Applied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_applied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.display = function(value)
  return "Uptick Rule Unapplied Covered Short Selling Trading Value: "..value
end

-- Dissect: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_unapplied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Unapplied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.uptick_rule_unapplied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Clean Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Sum Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11 = {}

-- Size: Zero Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.size = 11

-- Display: Zero Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.display = function(value)
  return "Zero Re Investment Index Double 11: "..value
end

-- Dissect: Zero Re Investment Index Double 11
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816 = {}

-- Size: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.size = 16

-- Display: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.display = function(value)
  return "Zero Re Investment Index Float 12816: "..value
end

-- Dissect: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.display = function(value)
  return "Zero Re Investment Index Weight: "..value
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018
-----------------------------------------------------------------------

-- Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message = {}

-- Size: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Buyin Type Code: String
  index, buyin_type_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_type_code.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.security_group_id.dissect(buffer, index, packet, parent)

  -- Buyin Volume: Long
  index, buyin_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.buyin_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_buy_in_volume_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message = {}

-- Size: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Bid Treasury Stock Declaration Id: String
  index, bid_treasury_stock_declaration_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bid_treasury_stock_declaration_id.dissect(buffer, index, packet, parent)

  -- Ask Treasury Stock Declaration Id: String
  index, ask_treasury_stock_declaration_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.ask_treasury_stock_declaration_id.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_treasury_stocks_traded_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message = {}

-- Size: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Volume: Long
  index, covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Value: FLOAT128
  index, covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Volume: Long
  index, uptick_rule_applied_covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_applied_covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_applied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Volume: Long
  index, uptick_rule_unapplied_covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_unapplied_covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.uptick_rule_unapplied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_short_selling_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message = {}

-- Size: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_commodities_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message = {}

-- Size: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_issue_eod_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message = {}

-- Size: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.investor_code.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.securities_investor_activities_per_industry_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Float 12816: FLOAT128
  index, market_price_index_float_12816 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Float 12816: FLOAT128
  index, zero_re_investment_index_float_12816 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Float 12816: FLOAT128
  index, call_re_investment_index_float_12816 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Double 11: Double
  index, clean_price_index_double_11 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Market Price Index Double 11: Double
  index, market_price_index_double_11 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.market_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Double 11: Double
  index, call_re_investment_index_double_11 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.call_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Double 11: Double
  index, zero_re_investment_index_double_11 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.zero_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.currency_code.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.filler.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Polling Data Message
  if message_code == "I2000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Index Message
  if message_code == "IA000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Estimated Index Message
  if message_code == "IB000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.krx_estimated_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Index Message
  if message_code == "J2000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.global_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Prime Index Message
  if message_code == "J4000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_prime_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Message
  if message_code == "K1000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Term Structure Message
  if message_code == "K8000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_ktb_index_term_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Index Krx Message
  if message_code == "IG000" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.bond_index_krx_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Industry Message
  if message_code == "C001S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Industry Message
  if message_code == "C001Q" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Industry Message
  if message_code == "C001X" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_industry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C101S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C102S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C103S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C104S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C105S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C101Q" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C101X" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Issue Eod Message
  if message_code == "C101G" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_issue_eod_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Commodities Message
  if message_code == "IC02S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Commodities Message
  if message_code == "IC03S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Commodities Message
  if message_code == "IC04S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Commodities Message
  if message_code == "IC05S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Investor Activities Per Commodities Message
  if message_code == "IC01G" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_investor_activities_per_commodities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Short Selling Message
  if message_code == "I801S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Short Selling Message
  if message_code == "I803S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Short Selling Message
  if message_code == "I804S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Short Selling Message
  if message_code == "I805S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Short Selling Message
  if message_code == "I801Q" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_short_selling_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Traded Message
  if message_code == "B001S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Traded Message
  if message_code == "B001Q" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Traded Message
  if message_code == "B001X" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_treasury_stocks_traded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O401S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O402S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O403S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O404S" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O401Q" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Buy In Volume Message
  if message_code == "O401X" then
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.securities_buy_in_volume_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 38 branches
    index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.init()
end

-- Dissector for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018, buffer(), omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 (Udp)
local function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018
  omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018:register_heuristic("udp", omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018_udp_heuristic)

-- Register Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_018)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Koscom Co., Ltd.
--   Version: 2.018
--   Date: Monday, May 18, 2026
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
