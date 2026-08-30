-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Protocol
local omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018 = Proto("Omi.Koscom.MdcsRealtime.EquityDerivatives.Exture.v2.018", "Koscom MdcsRealtime EquityDerivatives Exture 2.018")

-- Protocol table
local koscom_mdcsrealtime_equityderivatives_exture_v2_018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Fields
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.adesignatednumberforanissue", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.a_price_change_against_the_previous_day = ProtoField.new("A Price Change Against The Previous Day", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.apricechangeagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.abbreviatedissuecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.abbreviatedissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.abbreviatedissuenameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abnormal_rise = ProtoField.new("Abnormal Rise", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.abnormalrise", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.accumulatedcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_quantity = ProtoField.new("Accumulated Trading Quantity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.accumulatedtradingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.accumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.after_market_possibility = ProtoField.new("After Market Possibility", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.aftermarketpossibility", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.amortization_type_code = ProtoField.new("Amortization Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.amortizationtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_abbreviated_name_of_a_market_participant_in_kr = ProtoField.new("An Abbreviated Name Of A Market Participant In Kr", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.anabbreviatednameofamarketparticipantinkr", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = ProtoField.new("An Issue Of Which Base Price Is Settled With A Todays Single Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.anissueofwhichbasepriceissettledwithatodayssingleprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_obligatory_time_interval_to_place_an_order = ProtoField.new("An Obligatory Time Interval To Place An Order", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.anobligatorytimeintervaltoplaceanorder", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.announcement_of_estimated_trading_price = ProtoField.new("Announcement Of Estimated Trading Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.announcementofestimatedtradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.appraisal_ratio_of_substitute_price = ProtoField.new("Appraisal Ratio Of Substitute Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.appraisalratioofsubstituteprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.appraised_price = ProtoField.new("Appraised Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.appraisedprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageconvexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averagecouponprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averagecurrentyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageduration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageforwardytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageremainingmaturityprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averagespread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averagespreadsign", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageyld", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.averageytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.baby_bonds_type_code = ProtoField.new("Baby Bonds Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.babybondstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.backdoor_listing = ProtoField.new("Backdoor Listing", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.backdoorlisting", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.baseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_price_change = ProtoField.new("Base Price Change", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.basepricechange", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.basetime", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.basisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.basket_trading_in_the_preopening_market = ProtoField.new("Basket Trading In The Preopening Market", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.baskettradinginthepreopeningmarket", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.best_favorable_order_permission_type_code = ProtoField.new("Best Favorable Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bestfavorableorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bid_ask_spread_unit_code = ProtoField.new("Bid Ask Spread Unit Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bidaskspreadunitcode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.block_trading_in_the_preopening_market = ProtoField.new("Block Trading In The Preopening Market", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.blocktradinginthepreopeningmarket", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.boardid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_category_code = ProtoField.new("Bond Category Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondcategorycode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_guaranteed_type_code = ProtoField.new("Bond Guaranteed Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondguaranteedtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondindexid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_issuance_rate = ProtoField.new("Bond Issuance Rate", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondissuancerate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_listing_type_code = ProtoField.new("Bond Listing Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondlistingtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bps = ProtoField.new("Bps", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bps", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bps_calculation = ProtoField.new("Bps Calculation", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bpscalculation", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_block_trading_in_offhours_session = ProtoField.new("Buying Volume Block Trading In Offhours Session", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.buyingvolumeblocktradinginoffhourssession", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_open_single_price_session = ProtoField.new("Buying Volume Open Single Price Session", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.buyingvolumeopensinglepricesession", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_regular_session = ProtoField.new("Buying Volume Regular Session", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.buyingvolumeregularsession", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.calculatingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_of_redemption_price_end_date = ProtoField.new("Calculation Of Redemption Price End Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.calculationofredemptionpriceenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_of_redemption_price_start_date = ProtoField.new("Calculation Of Redemption Price Start Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.calculationofredemptionpricestartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.calculationtime", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_double_11 = ProtoField.new("Call Re Investment Index Double 11", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.callreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_float_12816 = ProtoField.new("Call Re Investment Index Float 12816", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.callreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.callreinvestmentindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.capital = ProtoField.new("Capital", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.capital", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.capital_increase_type_code = ProtoField.new("Capital Increase Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.capitalincreasetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.cashinflow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.cleanprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_double_11 = ProtoField.new("Clean Price Index Double 11", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.cleanpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_float_12816 = ProtoField.new("Clean Price Index Float 12816", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.cleanpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.cleanpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_date = ProtoField.new("Closing Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.closingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_trading_in_the_preopening_market = ProtoField.new("Closing Price Trading In The Preopening Market", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.closingpricetradinginthepreopeningmarket", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_trading_possibility_in_the_after_hours = ProtoField.new("Closing Price Trading Possibility In The After Hours", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.closingpricetradingpossibilityintheafterhours", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.closingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.conditioned_order_permission_type_code = ProtoField.new("Conditioned Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.conditionedorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.convexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.corporate_bonds_related_to_securities_exercise_price = ProtoField.new("Corporate Bonds Related To Securities Exercise Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.corporatebondsrelatedtosecuritiesexerciseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.country_code = ProtoField.new("Country Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.countrycode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_date_type_code = ProtoField.new("Coupon Payment Date Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.couponpaymentdatetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_type_code_string_1 = ProtoField.new("Coupon Payment Type Code String 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.couponpaymenttypecodestring1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_type_code_string_2 = ProtoField.new("Coupon Payment Type Code String 2", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.couponpaymenttypecodestring2", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_rate = ProtoField.new("Coupon Rate", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.couponrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.credit_order_possibillity = ProtoField.new("Credit Order Possibillity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.creditorderpossibillity", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.currencycode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.currency_iso_code = ProtoField.new("Currency Iso Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.currencyisocode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.currenttime", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.date_to_end_exercising = ProtoField.new("Date To End Exercising", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.datetoendexercising", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.date_to_start_exercising = ProtoField.new("Date To Start Exercising", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.datetostartexercising", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.decimal_point_of_coupon_type_code = ProtoField.new("Decimal Point Of Coupon Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.decimalpointofcoupontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.delisting_date = ProtoField.new("Delisting Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.delistingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.discrete_time_trading = ProtoField.new("Discrete Time Trading", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.discretetimetrading", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.distribution_type_code = ProtoField.new("Distribution Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.distributiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dividend_yield = ProtoField.new("Dividend Yield", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.dividendyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dps = ProtoField.new("Dps", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.dps", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dps_calculation = ProtoField.new("Dps Calculation", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.dpscalculation", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.duration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.eps = ProtoField.new("Eps", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.eps", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.eps_calculation = ProtoField.new("Eps Calculation", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.epscalculation", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etf_replication_methods_type_code = ProtoField.new("Etf Replication Methods Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.etfreplicationmethodstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etf_tracking_difference = ProtoField.new("Etf Tracking Difference", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.etftrackingdifference", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etp_product_type_code = ProtoField.new("Etp Product Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.etpproducttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_end_date = ProtoField.new("Event End Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.eventenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_reason_code = ProtoField.new("Event Reason Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.eventreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_start_date = ProtoField.new("Event Start Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.eventstartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_type_code = ProtoField.new("Event Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.eventtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercise_price_of_elw_or_bw = ProtoField.new("Exercise Price Of Elw Or Bw", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.exercisepriceofelworbw", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercise_ratio = ProtoField.new("Exercise Ratio", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.exerciseratio", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercising_period = ProtoField.new("Exercising Period", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.exercisingperiod", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.expiration_date = ProtoField.new("Expiration Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.expirationdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.expiration_date_for_right = ProtoField.new("Expiration Date For Right", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.expirationdateforright", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_1 = ProtoField.new("Filler 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.filler1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_3 = ProtoField.new("Filler 3", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.filler3", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.filler4", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_8 = ProtoField.new("Filler 8", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.filler8", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.first_best_order_permission_type_code = ProtoField.new("First Best Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.firstbestorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.futuresbasisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.groupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.group_number = ProtoField.new("Group Number", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.groupnumber", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.highest_order_price = ProtoField.new("Highest Order Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.highestorderprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.index", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_asset_classification_id_1 = ProtoField.new("Index Asset Classification Id 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexassetclassificationid1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_asset_classification_id_2 = ProtoField.new("Index Asset Classification Id 2", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexassetclassificationid2", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_calculation_institution_type_code = ProtoField.new("Index Calculation Institution Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexcalculationinstitutiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexchangeagainstthepreviousday", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexchangesignagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_1 = ProtoField.new("Index Classification Level 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexclassificationlevel1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_2 = ProtoField.new("Index Classification Level 2", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexclassificationlevel2", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_3 = ProtoField.new("Index Classification Level 3", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexclassificationlevel3", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexconstituent", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexmarketcapitalization", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_market_classification_id = ProtoField.new("Index Market Classification Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexmarketclassificationid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexnumberofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_sequence_number = ProtoField.new("Index Sequence Number", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.indexsequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.industry_id = ProtoField.new("Industry Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.industryid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.installment_repayment_date = ProtoField.new("Installment Repayment Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.installmentrepaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.interest_payment = ProtoField.new("Interest Payment", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.interestpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_caution_bond_type_code = ProtoField.new("Investment Caution Bond Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.investmentcautionbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_caution_issue = ProtoField.new("Investment Caution Issue", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.investmentcautionissue", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_institution_type_code = ProtoField.new("Investment Institution Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.investmentinstitutiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_precaution_issue = ProtoField.new("Investment Precaution Issue", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.investmentprecautionissue", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.ipo_underwriter_member_number = ProtoField.new("Ipo Underwriter Member Number", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.ipounderwritermembernumber", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.isin = ProtoField.new("Isin", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.isin", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_date = ProtoField.new("Issue Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issuedate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_for_administration = ProtoField.new("Issue For Administration", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issueforadministration", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issuedamount", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issuedamountweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issuing_amount = ProtoField.new("Issuing Amount", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issuingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issuing_price = ProtoField.new("Issuing Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issuingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.korea_corporate_governance_stock_price_index_kogi = ProtoField.new("Korea Corporate Governance Stock Price Index Kogi", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.koreacorporategovernancestockpriceindexkogi", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.korea_valueup_index = ProtoField.new("Korea Valueup Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.koreavalueupindex", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kosdaq = ProtoField.new("Kosdaq", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kosdaq", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kosdaq_150 = ProtoField.new("Kosdaq 150", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kosdaq150", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi = ProtoField.new("Kospi", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_100 = ProtoField.new("Kospi 100", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi100", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_high_dividend_yield_index = ProtoField.new("Kospi 200 High Dividend Yield Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi200highdividendyieldindex", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_sector_code_1 = ProtoField.new("Kospi 200 Sector Code 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi200sectorcode1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_sector_code_2 = ProtoField.new("Kospi 200 Sector Code 2", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi200sectorcode2", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_50 = ProtoField.new("Kospi 50", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.kospi50", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_100 = ProtoField.new("Krx 100", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krx100", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_300 = ProtoField.new("Krx 300", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krx300", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_bbig_index = ProtoField.new("Krx Bbig Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krxbbigindex", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_bio_top_10_index = ProtoField.new("Krx Bio Top 10 Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krxbiotop10index", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_secondary_battery_top_10_index = ProtoField.new("Krx Secondary Battery Top 10 Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krxsecondarybatterytop10index", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.limit_order_permission_type_code = ProtoField.new("Limit Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.limitorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.liquidation_trade = ProtoField.new("Liquidation Trade", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.liquidationtrade", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.listed_amount = ProtoField.new("Listed Amount", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.listedamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.listingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.loss_category = ProtoField.new("Loss Category", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.losscategory", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lot_size_afterhours_trading = ProtoField.new("Lot Size Afterhours Trading", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lotsizeafterhourstrading", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.low_liquidity = ProtoField.new("Low Liquidity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lowliquidity", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lowerlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lowest_order_price = ProtoField.new("Lowest Order Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lowestorderprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_end_date = ProtoField.new("Lp End Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lpenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_order = ProtoField.new("Lp Order", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lporder", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_start_date = ProtoField.new("Lp Start Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.lpstartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_alert = ProtoField.new("Market Alert", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketalert", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_alert_type_code = ProtoField.new("Market Alert Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketalerttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_capitalization_type_code = ProtoField.new("Market Capitalization Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketcapitalizationtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketcapitalizationweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_making_possibility = ProtoField.new("Market Making Possibility", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketmakingpossibility", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketoperationproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_participant_number = ProtoField.new("Market Participant Number", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketparticipantnumber", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_double_11 = ProtoField.new("Market Price Index Double 11", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_float_12816 = ProtoField.new("Market Price Index Float 12816", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_order_permission_type_code = ProtoField.new("Market Price Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketpriceorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_value = ProtoField.new("Market Value", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.marketvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.maturitycode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maturity_date = ProtoField.new("Maturity Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.maturitydate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_bid_price = ProtoField.new("Maximum Bid Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.maximumbidprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_order_price = ProtoField.new("Maximum Order Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.maximumorderprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_volume_of_multiple_order = ProtoField.new("Maximum Volume Of Multiple Order", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.maximumvolumeofmultipleorder", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.mid_price_order_permission_type_code = ProtoField.new("Mid Price Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.midpriceorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_ask_price = ProtoField.new("Minimum Ask Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.minimumaskprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_order_price = ProtoField.new("Minimum Order Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.minimumorderprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_order_volume = ProtoField.new("Minimum Order Volume", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.minimumordervolume", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.monthly_cycle_of_coupon_payment = ProtoField.new("Monthly Cycle Of Coupon Payment", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.monthlycycleofcouponpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.name_of_a_market_participant_in_en = ProtoField.new("Name Of A Market Participant In En", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.nameofamarketparticipantinen", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.name_of_a_market_participant_in_kr = ProtoField.new("Name Of A Market Participant In Kr", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.nameofamarketparticipantinkr", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.national_stock = ProtoField.new("National Stock", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.nationalstock", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.next_coupon_payment_date = ProtoField.new("Next Coupon Payment Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.nextcouponpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_amortization = ProtoField.new("Number Of Amortization", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.numberofamortization", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_listed_shares = ProtoField.new("Number Of Listed Shares", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.numberoflistedshares", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_months_for_grace = ProtoField.new("Number Of Months For Grace", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.numberofmonthsforgrace", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_repo_trade_periods = ProtoField.new("Number Of Repo Trade Periods", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.numberofrepotradeperiods", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.openingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.other_stock_type_code = ProtoField.new("Other Stock Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.otherstocktypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.par_value = ProtoField.new("Par Value", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.parvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.par_value_type_code = ProtoField.new("Par Value Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.parvaluetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pbr = ProtoField.new("Pbr", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.pbr", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.per = ProtoField.new("Per", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.per", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.perpetual_bond_maturity_structure_status = ProtoField.new("Perpetual Bond Maturity Structure Status", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.perpetualbondmaturitystructurestatus", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pre_issue_sale_coupon_payment_type_code = ProtoField.new("Pre Issue Sale Coupon Payment Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.preissuesalecouponpaymenttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pre_market_possibility = ProtoField.new("Pre Market Possibility", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.premarketpossibility", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.preferred_stocks_with_lesser_shares = ProtoField.new("Preferred Stocks With Lesser Shares", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.preferredstockswithlessershares", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.price_change_against_previous_day = ProtoField.new("Price Change Against Previous Day", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.pricechangeagainstpreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.prior_coupon_payment_date = ProtoField.new("Prior Coupon Payment Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.priorcouponpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.random_end_trigger_code = ProtoField.new("Random End Trigger Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.randomendtriggercode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.record_date_of_dividend_payout = ProtoField.new("Record Date Of Dividend Payout", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.recorddateofdividendpayout", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.redemption_date = ProtoField.new("Redemption Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.redemptiondate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.redemption_ratio_at_maturity = ProtoField.new("Redemption Ratio At Maturity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.redemptionratioatmaturity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reevaluation_reason_code = ProtoField.new("Reevaluation Reason Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.reevaluationreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reference_index_leverage_inverse_type_code = ProtoField.new("Reference Index Leverage Inverse Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.referenceindexleverageinversetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.regs = ProtoField.new("Regs", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.regs", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.rei_ts_type_code = ProtoField.new("Rei Ts Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.reitstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.reinvestcallcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_code = ProtoField.new("Repo Classification Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repoclassificationcode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_name = ProtoField.new("Repo Classification Name", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repoclassificationname", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_1 = ProtoField.new("Repo Trade Period 1", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod1", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_10 = ProtoField.new("Repo Trade Period 10", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod10", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_2 = ProtoField.new("Repo Trade Period 2", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod2", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_3 = ProtoField.new("Repo Trade Period 3", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod3", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_4 = ProtoField.new("Repo Trade Period 4", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod4", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_5 = ProtoField.new("Repo Trade Period 5", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod5", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_6 = ProtoField.new("Repo Trade Period 6", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod6", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_7 = ProtoField.new("Repo Trade Period 7", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod7", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_8 = ProtoField.new("Repo Trade Period 8", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod8", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_9 = ProtoField.new("Repo Trade Period 9", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeperiod9", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_category_name = ProtoField.new("Retail Bond Category Name", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.retailbondcategoryname", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_category_name_in_en = ProtoField.new("Retail Bond Category Name In En", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.retailbondcategorynameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_generated_quotes = ProtoField.new("Retail Bond Generated Quotes", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.retailbondgeneratedquotes", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_type_code = ProtoField.new("Retail Bond Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.retailbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.rights_type_code = ProtoField.new("Rights Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.rightstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.sale_date = ProtoField.new("Sale Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.saledate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.section_type_code = ProtoField.new("Section Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.sectiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.security_group_id = ProtoField.new("Security Group Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitygroupid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.segment_type_code = ProtoField.new("Segment Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.segmenttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.sessionid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.short_selling = ProtoField.new("Short Selling", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.shortselling", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.shortterm_overheat_issue_type_code = ProtoField.new("Shortterm Overheat Issue Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.shorttermoverheatissuetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.small_medium_sized_business = ProtoField.new("Small Medium Sized Business", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.smallmediumsizedbusiness", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spac = ProtoField.new("Spac", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.spac", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spac_merger = ProtoField.new("Spac Merger", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.spacmerger", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spread_multiple_for_market_holidays = ProtoField.new("Spread Multiple For Market Holidays", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.spreadmultipleformarketholidays", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.stop_limit_price_order_permission_type_code = ProtoField.new("Stop Limit Price Order Permission Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.stoplimitpriceorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.strip_bond_type_code = ProtoField.new("Strip Bond Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.stripbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.substitute_price_of_securities = ProtoField.new("Substitute Price Of Securities", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.substitutepriceofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.target_stock_isin_code = ProtoField.new("Target Stock Isin Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.targetstockisincode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.tax_type_code = ProtoField.new("Tax Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.taxtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_best_ask = ProtoField.new("The Best Ask", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.thebestask", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_best_bid = ProtoField.new("The Best Bid", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.thebestbid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_establishment_date = ProtoField.new("The Establishment Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.theestablishmentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.todayshigh", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.todayslow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.totalearningsindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.totalearningsindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.totalnumberofinstrumentsofthecontract", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.totalprofitindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.tracking_index_leverage_inverse_type_code = ProtoField.new("Tracking Index Leverage Inverse Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.trackingindexleverageinversetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.tradinghalt", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.tradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.transmissiontime", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trearsury_stock_trading_method_type_code = ProtoField.new("Trearsury Stock Trading Method Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.trearsurystocktradingmethodtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_application_date = ProtoField.new("Treasury Stock Application Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.treasurystockapplicationdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_ask_bid_type_code = ProtoField.new("Treasury Stock Ask Bid Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.treasurystockaskbidtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_report_id = ProtoField.new("Treasury Stock Report Id", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.treasurystockreportid", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_trading_end_date = ProtoField.new("Treasury Stock Trading End Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.treasurystocktradingenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_trading_start_date = ProtoField.new("Treasury Stock Trading Start Date", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.treasurystocktradingstartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.unfaithful_disclosure = ProtoField.new("Unfaithful Disclosure", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.unfaithfuldisclosure", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.unit_of_volume_in_main_board = ProtoField.new("Unit Of Volume In Main Board", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.unitofvolumeinmainboard", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_of_bid_ask_spread = ProtoField.new("Upper Limit Of Bid Ask Spread", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.upperlimitofbidaskspread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.upperlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_quantity = ProtoField.new("Upper Limit Quantity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.upperlimitquantity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.weightofcleanindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.weightofsumindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_accumulated_trading_amount = ProtoField.new("Yesterdays Accumulated Trading Amount", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.yesterdaysaccumulatedtradingamount", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_accumulated_trading_value = ProtoField.new("Yesterdays Accumulated Trading Value", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.yesterdaysaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_closing_price = ProtoField.new("Yesterdays Closing Price", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.yesterdaysclosingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_closing_price_type_code = ProtoField.new("Yesterdays Closing Price Type Code", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.yesterdaysclosingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yield_to_maturity = ProtoField.new("Yield To Maturity", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.yieldtomaturity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_double_11 = ProtoField.new("Zero Re Investment Index Double 11", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.zeroreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_float_12816 = ProtoField.new("Zero Re Investment Index Float 12816", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.zeroreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.zeroreinvestmentindexweight", ftypes.STRING)

-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Headers
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.packet", ftypes.STRING)

-- Koscom MdcsRealtime EquityDerivatives 2.018 Application Messages
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondindexkrxmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondktbindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondktbindextermstructuremessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondprimeindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bonds_batch_data_message = ProtoField.new("Bonds Batch Data Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.bondsbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.corporate_bonds_reference_message = ProtoField.new("Corporate Bonds Reference Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.corporatebondsreferencemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kosdaq_message = ProtoField.new("Equity Derivatives Underlying Snapshot Kosdaq Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.equityderivativesunderlyingsnapshotkosdaqmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kospi_message = ProtoField.new("Equity Derivatives Underlying Snapshot Kospi Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.equityderivativesunderlyingsnapshotkospimessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message = ProtoField.new("Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.equityderivativesunderlyingsnapshotkospimmlpincludedmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.globalindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_event_message = ProtoField.new("Issue Event Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.issueeventmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krxestimatedindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.krxindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.pollingdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.regular_bonds_installment_repayment_date_message = ProtoField.new("Regular Bonds Installment Repayment Date Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.regularbondsinstallmentrepaymentdatemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_batch_data_message = ProtoField.new("Repo Batch Data Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repobatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_data_message = ProtoField.new("Repo Classification Data Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repoclassificationdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_availability_per_term_message = ProtoField.new("Repo Trade Availability Per Term Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.repotradeavailabilitypertermmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bonds_type_code_message = ProtoField.new("Retail Bonds Type Code Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.retailbondstypecodemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_closing_date_message = ProtoField.new("Securities Closing Date Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesclosingdatemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_dividend_yield_per_industry_message = ProtoField.new("Securities Dividend Yield Per Industry Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesdividendyieldperindustrymessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_equities_batch_data_message = ProtoField.new("Securities Equities Batch Data Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesequitiesbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_equity_index_indicator_message = ProtoField.new("Securities Equity Index Indicator Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesequityindexindicatormessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_member_information_message = ProtoField.new("Securities Member Information Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesmemberinformationmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_mm_lp_information_message = ProtoField.new("Securities Mm Lp Information Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiesmmlpinformationmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_treasury_stocks_batch_message = ProtoField.new("Securities Treasury Stocks Batch Message", "koscom.mdcsrealtime.equityderivatives.exture.v2.018.securitiestreasurystocksbatchmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime EquityDerivatives Exture 2.018 Show Options
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime EquityDerivatives Exture 2.018 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- A Price Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day = {}

-- Size: A Price Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.size = 11

-- Display: A Price Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.display = function(value)
  return "A Price Change Against The Previous Day: "..value
end

-- Dissect: A Price Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.a_price_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Abnormal Rise
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise = {}

-- Size: Abnormal Rise
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.size = 1

-- Display: Abnormal Rise
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.display = function(value)
  return "Abnormal Rise: "..value
end

-- Dissect: Abnormal Rise
koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.abnormal_rise, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.display = function(value)
  return "Accumulated Cash: "..value
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity = {}

-- Size: Accumulated Trading Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.size = 15

-- Display: Accumulated Trading Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.display = function(value)
  return "Accumulated Trading Quantity: "..value
end

-- Dissect: Accumulated Trading Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_quantity, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- After Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility = {}

-- Size: After Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.size = 1

-- Display: After Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.display = function(value)
  return "After Market Possibility: "..value
end

-- Dissect: After Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.after_market_possibility, range, value, display)

  return offset + length, value
end

-- Amortization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code = {}

-- Size: Amortization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.size = 1

-- Display: Amortization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.display = function(value)
  return "Amortization Type Code: "..value
end

-- Dissect: Amortization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.amortization_type_code, range, value, display)

  return offset + length, value
end

-- An Abbreviated Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr = {}

-- Size: An Abbreviated Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.size = 20

-- Display: An Abbreviated Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.display = function(value)
  return "An Abbreviated Name Of A Market Participant In Kr: "..value
end

-- Dissect: An Abbreviated Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_abbreviated_name_of_a_market_participant_in_kr, range, value, display)

  return offset + length, value
end

-- An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = {}

-- Size: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size = 1

-- Display: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display = function(value)
  return "An Issue Of Which Base Price Is Settled With A Todays Single Price: "..value
end

-- Dissect: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price, range, value, display)

  return offset + length, value
end

-- An Obligatory Time Interval To Place An Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order = {}

-- Size: An Obligatory Time Interval To Place An Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.size = 6

-- Display: An Obligatory Time Interval To Place An Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.display = function(value)
  return "An Obligatory Time Interval To Place An Order: "..value
end

-- Dissect: An Obligatory Time Interval To Place An Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.an_obligatory_time_interval_to_place_an_order, range, value, display)

  return offset + length, value
end

-- Announcement Of Estimated Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price = {}

-- Size: Announcement Of Estimated Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.size = 1

-- Display: Announcement Of Estimated Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.display = function(value)
  return "Announcement Of Estimated Trading Price: "..value
end

-- Dissect: Announcement Of Estimated Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.announcement_of_estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price = {}

-- Size: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.size = 13

-- Display: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.display = function(value)
  return "Appraisal Ratio Of Substitute Price: "..value
end

-- Dissect: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.appraisal_ratio_of_substitute_price, range, value, display)

  return offset + length, value
end

-- Appraised Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price = {}

-- Size: Appraised Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.size = 11

-- Display: Appraised Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.display = function(value)
  return "Appraised Price: "..value
end

-- Dissect: Appraised Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.appraised_price, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.display = function(value)
  return "Average Convexity: "..value
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.display = function(value)
  return "Average Coupon Price: "..value
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.display = function(value)
  return "Average Current Yield: "..value
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.display = function(value)
  return "Average Duration: "..value
end

-- Dissect: Average Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.display = function(value)
  return "Average Forward Ytm: "..value
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.display = function(value)
  return "Average Remaining Maturity Price: "..value
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.display = function(value)
  return "Average Spread: "..value
end

-- Dissect: Average Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.display = function(value)
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
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.display = function(value)
  return "Average Yld: "..value
end

-- Dissect: Average Yld
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.display = function(value)
  return "Average Ytm: "..value
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Baby Bonds Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code = {}

-- Size: Baby Bonds Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.size = 3

-- Display: Baby Bonds Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.display = function(value)
  return "Baby Bonds Type Code: "..value
end

-- Dissect: Baby Bonds Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.baby_bonds_type_code, range, value, display)

  return offset + length, value
end

-- Backdoor Listing
koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing = {}

-- Size: Backdoor Listing
koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.size = 1

-- Display: Backdoor Listing
koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.display = function(value)
  return "Backdoor Listing: "..value
end

-- Dissect: Backdoor Listing
koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.backdoor_listing, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Price Change
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change = {}

-- Size: Base Price Change
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.size = 1

-- Display: Base Price Change
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.display = function(value)
  return "Base Price Change: "..value
end

-- Dissect: Base Price Change
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_price_change, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.display = function(value)
  return "Base Time: "..value
end

-- Dissect: Base Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.display = function(value)
  return "Basis Price: "..value
end

-- Dissect: Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Basket Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market = {}

-- Size: Basket Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.size = 1

-- Display: Basket Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.display = function(value)
  return "Basket Trading In The Preopening Market: "..value
end

-- Dissect: Basket Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.basket_trading_in_the_preopening_market, range, value, display)

  return offset + length, value
end

-- Best Favorable Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code = {}

-- Size: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.size = 5

-- Display: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.display = function(value)
  return "Best Favorable Order Permission Type Code: "..value
end

-- Dissect: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.best_favorable_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Bid Ask Spread Unit Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code = {}

-- Size: Bid Ask Spread Unit Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.size = 1

-- Display: Bid Ask Spread Unit Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.display = function(value)
  return "Bid Ask Spread Unit Code: "..value
end

-- Dissect: Bid Ask Spread Unit Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bid_ask_spread_unit_code, range, value, display)

  return offset + length, value
end

-- Block Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market = {}

-- Size: Block Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.size = 1

-- Display: Block Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.display = function(value)
  return "Block Trading In The Preopening Market: "..value
end

-- Dissect: Block Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.block_trading_in_the_preopening_market, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.board_id, range, value, display)

  return offset + length, value
end

-- Bond Category Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code = {}

-- Size: Bond Category Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.size = 6

-- Display: Bond Category Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.display = function(value)
  return "Bond Category Code: "..value
end

-- Dissect: Bond Category Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_category_code, range, value, display)

  return offset + length, value
end

-- Bond Guaranteed Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code = {}

-- Size: Bond Guaranteed Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.size = 1

-- Display: Bond Guaranteed Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.display = function(value)
  return "Bond Guaranteed Type Code: "..value
end

-- Dissect: Bond Guaranteed Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_guaranteed_type_code, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Bond Issuance Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate = {}

-- Size: Bond Issuance Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.size = 13

-- Display: Bond Issuance Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.display = function(value)
  return "Bond Issuance Rate: "..value
end

-- Dissect: Bond Issuance Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_issuance_rate, range, value, display)

  return offset + length, value
end

-- Bond Listing Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code = {}

-- Size: Bond Listing Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.size = 1

-- Display: Bond Listing Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.display = function(value)
  return "Bond Listing Type Code: "..value
end

-- Dissect: Bond Listing Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_listing_type_code, range, value, display)

  return offset + length, value
end

-- Bps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps = {}

-- Size: Bps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.size = 22

-- Display: Bps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.display = function(value)
  return "Bps: "..value
end

-- Dissect: Bps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bps, range, value, display)

  return offset + length, value
end

-- Bps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation = {}

-- Size: Bps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.size = 1

-- Display: Bps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.display = function(value)
  return "Bps Calculation: "..value
end

-- Dissect: Bps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bps_calculation, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.business_date, range, value, display)

  return offset + length, value
end

-- Buying Volume Block Trading In Offhours Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session = {}

-- Size: Buying Volume Block Trading In Offhours Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.size = 12

-- Display: Buying Volume Block Trading In Offhours Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.display = function(value)
  return "Buying Volume Block Trading In Offhours Session: "..value
end

-- Dissect: Buying Volume Block Trading In Offhours Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_block_trading_in_offhours_session, range, value, display)

  return offset + length, value
end

-- Buying Volume Open Single Price Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session = {}

-- Size: Buying Volume Open Single Price Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.size = 12

-- Display: Buying Volume Open Single Price Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.display = function(value)
  return "Buying Volume Open Single Price Session: "..value
end

-- Dissect: Buying Volume Open Single Price Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_open_single_price_session, range, value, display)

  return offset + length, value
end

-- Buying Volume Regular Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session = {}

-- Size: Buying Volume Regular Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.size = 12

-- Display: Buying Volume Regular Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.display = function(value)
  return "Buying Volume Regular Session: "..value
end

-- Dissect: Buying Volume Regular Session
koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.buying_volume_regular_session, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.display = function(value)
  return "Calculating Time: "..value
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Of Redemption Price End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date = {}

-- Size: Calculation Of Redemption Price End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.size = 8

-- Display: Calculation Of Redemption Price End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.display = function(value)
  return "Calculation Of Redemption Price End Date: "..value
end

-- Dissect: Calculation Of Redemption Price End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_of_redemption_price_end_date, range, value, display)

  return offset + length, value
end

-- Calculation Of Redemption Price Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date = {}

-- Size: Calculation Of Redemption Price Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.size = 8

-- Display: Calculation Of Redemption Price Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.display = function(value)
  return "Calculation Of Redemption Price Start Date: "..value
end

-- Dissect: Calculation Of Redemption Price Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_of_redemption_price_start_date, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.display = function(value)
  return "Calculation Time: "..value
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11 = {}

-- Size: Call Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.size = 11

-- Display: Call Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.display = function(value)
  return "Call Re Investment Index Double 11: "..value
end

-- Dissect: Call Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816 = {}

-- Size: Call Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.size = 16

-- Display: Call Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.display = function(value)
  return "Call Re Investment Index Float 12816: "..value
end

-- Dissect: Call Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.display = function(value)
  return "Call Re Investment Index Weight: "..value
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Capital
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital = {}

-- Size: Capital
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.size = 22

-- Display: Capital
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.display = function(value)
  return "Capital: "..value
end

-- Dissect: Capital
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.capital, range, value, display)

  return offset + length, value
end

-- Capital Increase Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code = {}

-- Size: Capital Increase Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.size = 2

-- Display: Capital Increase Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.display = function(value)
  return "Capital Increase Type Code: "..value
end

-- Dissect: Capital Increase Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.capital_increase_type_code, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.display = function(value)
  return "Cash Inflow: "..value
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.display = function(value)
  return "Clean Price: "..value
end

-- Dissect: Clean Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11 = {}

-- Size: Clean Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.size = 11

-- Display: Clean Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.display = function(value)
  return "Clean Price Index Double 11: "..value
end

-- Dissect: Clean Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Clean Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816 = {}

-- Size: Clean Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.size = 16

-- Display: Clean Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.display = function(value)
  return "Clean Price Index Float 12816: "..value
end

-- Dissect: Clean Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.display = function(value)
  return "Clean Price Index Weight: "..value
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Closing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date = {}

-- Size: Closing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.size = 4

-- Display: Closing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.display = function(value)
  return "Closing Date: "..value
end

-- Dissect: Closing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_date, range, value, display)

  return offset + length, value
end

-- Closing Price Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market = {}

-- Size: Closing Price Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.size = 1

-- Display: Closing Price Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.display = function(value)
  return "Closing Price Trading In The Preopening Market: "..value
end

-- Dissect: Closing Price Trading In The Preopening Market
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_trading_in_the_preopening_market, range, value, display)

  return offset + length, value
end

-- Closing Price Trading Possibility In The After Hours
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours = {}

-- Size: Closing Price Trading Possibility In The After Hours
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.size = 1

-- Display: Closing Price Trading Possibility In The After Hours
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.display = function(value)
  return "Closing Price Trading Possibility In The After Hours: "..value
end

-- Dissect: Closing Price Trading Possibility In The After Hours
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_trading_possibility_in_the_after_hours, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Conditioned Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code = {}

-- Size: Conditioned Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.size = 5

-- Display: Conditioned Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.display = function(value)
  return "Conditioned Order Permission Type Code: "..value
end

-- Dissect: Conditioned Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.conditioned_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.display = function(value)
  return "Convexity: "..value
end

-- Dissect: Convexity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.convexity, range, value, display)

  return offset + length, value
end

-- Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price = {}

-- Size: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size = 11

-- Display: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.display = function(value)
  return "Corporate Bonds Related To Securities Exercise Price: "..value
end

-- Dissect: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.corporate_bonds_related_to_securities_exercise_price, range, value, display)

  return offset + length, value
end

-- Country Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code = {}

-- Size: Country Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.size = 3

-- Display: Country Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.display = function(value)
  return "Country Code: "..value
end

-- Dissect: Country Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.country_code, range, value, display)

  return offset + length, value
end

-- Coupon Payment Date Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code = {}

-- Size: Coupon Payment Date Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.size = 1

-- Display: Coupon Payment Date Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.display = function(value)
  return "Coupon Payment Date Type Code: "..value
end

-- Dissect: Coupon Payment Date Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_date_type_code, range, value, display)

  return offset + length, value
end

-- Coupon Payment Type Code String 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1 = {}

-- Size: Coupon Payment Type Code String 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.size = 1

-- Display: Coupon Payment Type Code String 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.display = function(value)
  return "Coupon Payment Type Code String 1: "..value
end

-- Dissect: Coupon Payment Type Code String 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_type_code_string_1, range, value, display)

  return offset + length, value
end

-- Coupon Payment Type Code String 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2 = {}

-- Size: Coupon Payment Type Code String 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.size = 2

-- Display: Coupon Payment Type Code String 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.display = function(value)
  return "Coupon Payment Type Code String 2: "..value
end

-- Dissect: Coupon Payment Type Code String 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_payment_type_code_string_2, range, value, display)

  return offset + length, value
end

-- Coupon Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate = {}

-- Size: Coupon Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.size = 14

-- Display: Coupon Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Credit Order Possibillity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity = {}

-- Size: Credit Order Possibillity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.size = 1

-- Display: Credit Order Possibillity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.display = function(value)
  return "Credit Order Possibillity: "..value
end

-- Dissect: Credit Order Possibillity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.credit_order_possibillity, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.size = 3

-- Display: Currency Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.display = function(value)
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
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Currency Iso Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code = {}

-- Size: Currency Iso Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.size = 3

-- Display: Currency Iso Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.display = function(value)
  return "Currency Iso Code: "..value
end

-- Dissect: Currency Iso Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.currency_iso_code, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.display = function(value)
  return "Current Time: "..value
end

-- Dissect: Current Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.current_time, range, value, display)

  return offset + length, value
end

-- Date To End Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising = {}

-- Size: Date To End Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.size = 8

-- Display: Date To End Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.display = function(value)
  return "Date To End Exercising: "..value
end

-- Dissect: Date To End Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.date_to_end_exercising, range, value, display)

  return offset + length, value
end

-- Date To Start Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising = {}

-- Size: Date To Start Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.size = 8

-- Display: Date To Start Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.display = function(value)
  return "Date To Start Exercising: "..value
end

-- Dissect: Date To Start Exercising
koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.date_to_start_exercising, range, value, display)

  return offset + length, value
end

-- Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code = {}

-- Size: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.size = 1

-- Display: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.display = function(value)
  return "Decimal Point Of Coupon Type Code: "..value
end

-- Dissect: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.decimal_point_of_coupon_type_code, range, value, display)

  return offset + length, value
end

-- Delisting Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date = {}

-- Size: Delisting Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.size = 8

-- Display: Delisting Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Discrete Time Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading = {}

-- Size: Discrete Time Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.size = 1

-- Display: Discrete Time Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.display = function(value)
  return "Discrete Time Trading: "..value
end

-- Dissect: Discrete Time Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.discrete_time_trading, range, value, display)

  return offset + length, value
end

-- Distribution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code = {}

-- Size: Distribution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.size = 2

-- Display: Distribution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.display = function(value)
  return "Distribution Type Code: "..value
end

-- Dissect: Distribution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.distribution_type_code, range, value, display)

  return offset + length, value
end

-- Dividend Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield = {}

-- Size: Dividend Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.size = 13

-- Display: Dividend Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.display = function(value)
  return "Dividend Yield: "..value
end

-- Dissect: Dividend Yield
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dividend_yield, range, value, display)

  return offset + length, value
end

-- Dps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps = {}

-- Size: Dps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.size = 22

-- Display: Dps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.display = function(value)
  return "Dps: "..value
end

-- Dissect: Dps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dps, range, value, display)

  return offset + length, value
end

-- Dps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation = {}

-- Size: Dps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.size = 1

-- Display: Dps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.display = function(value)
  return "Dps Calculation: "..value
end

-- Dissect: Dps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.dps_calculation, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration = {}

-- Size: Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.display = function(value)
  return "Duration: "..value
end

-- Dissect: Duration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Eps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps = {}

-- Size: Eps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.size = 22

-- Display: Eps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.display = function(value)
  return "Eps: "..value
end

-- Dissect: Eps
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.eps, range, value, display)

  return offset + length, value
end

-- Eps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation = {}

-- Size: Eps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.size = 1

-- Display: Eps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.display = function(value)
  return "Eps Calculation: "..value
end

-- Dissect: Eps Calculation
koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.eps_calculation, range, value, display)

  return offset + length, value
end

-- Etf Replication Methods Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code = {}

-- Size: Etf Replication Methods Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.size = 1

-- Display: Etf Replication Methods Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.display = function(value)
  return "Etf Replication Methods Type Code: "..value
end

-- Dissect: Etf Replication Methods Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etf_replication_methods_type_code, range, value, display)

  return offset + length, value
end

-- Etf Tracking Difference
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference = {}

-- Size: Etf Tracking Difference
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.size = 13

-- Display: Etf Tracking Difference
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.display = function(value)
  return "Etf Tracking Difference: "..value
end

-- Dissect: Etf Tracking Difference
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etf_tracking_difference, range, value, display)

  return offset + length, value
end

-- Etp Product Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code = {}

-- Size: Etp Product Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.size = 1

-- Display: Etp Product Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.display = function(value)
  return "Etp Product Type Code: "..value
end

-- Dissect: Etp Product Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.etp_product_type_code, range, value, display)

  return offset + length, value
end

-- Event End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date = {}

-- Size: Event End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.size = 8

-- Display: Event End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.display = function(value)
  return "Event End Date: "..value
end

-- Dissect: Event End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_end_date, range, value, display)

  return offset + length, value
end

-- Event Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code = {}

-- Size: Event Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.size = 4

-- Display: Event Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.display = function(value)
  return "Event Reason Code: "..value
end

-- Dissect: Event Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_reason_code, range, value, display)

  return offset + length, value
end

-- Event Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date = {}

-- Size: Event Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.size = 8

-- Display: Event Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.display = function(value)
  return "Event Start Date: "..value
end

-- Dissect: Event Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_start_date, range, value, display)

  return offset + length, value
end

-- Event Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code = {}

-- Size: Event Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.size = 2

-- Display: Event Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.display = function(value)
  return "Event Type Code: "..value
end

-- Dissect: Event Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.event_type_code, range, value, display)

  return offset + length, value
end

-- Exercise Price Of Elw Or Bw
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw = {}

-- Size: Exercise Price Of Elw Or Bw
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.size = 13

-- Display: Exercise Price Of Elw Or Bw
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.display = function(value)
  return "Exercise Price Of Elw Or Bw: "..value
end

-- Dissect: Exercise Price Of Elw Or Bw
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercise_price_of_elw_or_bw, range, value, display)

  return offset + length, value
end

-- Exercise Ratio
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio = {}

-- Size: Exercise Ratio
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.size = 7

-- Display: Exercise Ratio
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.display = function(value)
  return "Exercise Ratio: "..value
end

-- Dissect: Exercise Ratio
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercise_ratio, range, value, display)

  return offset + length, value
end

-- Exercising Period
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period = {}

-- Size: Exercising Period
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.size = 8

-- Display: Exercising Period
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.display = function(value)
  return "Exercising Period: "..value
end

-- Dissect: Exercising Period
koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.exercising_period, range, value, display)

  return offset + length, value
end

-- Expiration Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date = {}

-- Size: Expiration Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.size = 8

-- Display: Expiration Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Date For Right
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right = {}

-- Size: Expiration Date For Right
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.size = 8

-- Display: Expiration Date For Right
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.display = function(value)
  return "Expiration Date For Right: "..value
end

-- Dissect: Expiration Date For Right
koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.expiration_date_for_right, range, value, display)

  return offset + length, value
end

-- Filler 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1 = {}

-- Size: Filler 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.size = 1

-- Display: Filler 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3 = {}

-- Size: Filler 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.size = 3

-- Display: Filler 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Filler 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8 = {}

-- Size: Filler 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.size = 8

-- Display: Filler 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.display = function(value)
  return "Filler 8: "..value
end

-- Dissect: Filler 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.filler_8, range, value, display)

  return offset + length, value
end

-- First Best Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code = {}

-- Size: First Best Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.size = 5

-- Display: First Best Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.display = function(value)
  return "First Best Order Permission Type Code: "..value
end

-- Dissect: First Best Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.first_best_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.display = function(value)
  return "Futures Basis Price: "..value
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.group_code, range, value, display)

  return offset + length, value
end

-- Group Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number = {}

-- Size: Group Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.size = 5

-- Display: Group Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.display = function(value)
  return "Group Number: "..value
end

-- Dissect: Group Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.group_number, range, value, display)

  return offset + length, value
end

-- Highest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price = {}

-- Size: Highest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.size = 11

-- Display: Highest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.display = function(value)
  return "Highest Order Price: "..value
end

-- Dissect: Highest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.highest_order_price, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index = {}

-- Size: Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.size = 9

-- Display: Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.display = function(value)
  return "Index: "..value
end

-- Dissect: Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index, range, value, display)

  return offset + length, value
end

-- Index Asset Classification Id 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1 = {}

-- Size: Index Asset Classification Id 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.size = 6

-- Display: Index Asset Classification Id 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.display = function(value)
  return "Index Asset Classification Id 1: "..value
end

-- Dissect: Index Asset Classification Id 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_asset_classification_id_1, range, value, display)

  return offset + length, value
end

-- Index Asset Classification Id 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2 = {}

-- Size: Index Asset Classification Id 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.size = 6

-- Display: Index Asset Classification Id 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.display = function(value)
  return "Index Asset Classification Id 2: "..value
end

-- Dissect: Index Asset Classification Id 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_asset_classification_id_2, range, value, display)

  return offset + length, value
end

-- Index Calculation Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code = {}

-- Size: Index Calculation Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.size = 2

-- Display: Index Calculation Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.display = function(value)
  return "Index Calculation Institution Type Code: "..value
end

-- Dissect: Index Calculation Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_calculation_institution_type_code, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.display = function(value)
  return "Index Change Against The Previous Day: "..value
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.display = function(value)
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
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Classification Level 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1 = {}

-- Size: Index Classification Level 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.size = 6

-- Display: Index Classification Level 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.display = function(value)
  return "Index Classification Level 1: "..value
end

-- Dissect: Index Classification Level 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_1, range, value, display)

  return offset + length, value
end

-- Index Classification Level 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2 = {}

-- Size: Index Classification Level 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.size = 6

-- Display: Index Classification Level 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.display = function(value)
  return "Index Classification Level 2: "..value
end

-- Dissect: Index Classification Level 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_2, range, value, display)

  return offset + length, value
end

-- Index Classification Level 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3 = {}

-- Size: Index Classification Level 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.size = 6

-- Display: Index Classification Level 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.display = function(value)
  return "Index Classification Level 3: "..value
end

-- Dissect: Index Classification Level 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_classification_level_3, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.display = function(value)
  if value == "0" then
    return "Index Constituent: Included In Etf Not In Index (0)"
  end
  if value == "1" then
    return "Index Constituent: Included In Index (1)"
  end

  return "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Market Classification Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id = {}

-- Size: Index Market Classification Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.size = 6

-- Display: Index Market Classification Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.display = function(value)
  return "Index Market Classification Id: "..value
end

-- Dissect: Index Market Classification Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_market_classification_id, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Index Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number = {}

-- Size: Index Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.size = 3

-- Display: Index Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.display = function(value)
  return "Index Sequence Number: "..value
end

-- Dissect: Index Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.index_sequence_number, range, value, display)

  return offset + length, value
end

-- Industry Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id = {}

-- Size: Industry Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.size = 10

-- Display: Industry Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.display = function(value)
  return "Industry Id: "..value
end

-- Dissect: Industry Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.industry_id, range, value, display)

  return offset + length, value
end

-- Installment Repayment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date = {}

-- Size: Installment Repayment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.size = 8

-- Display: Installment Repayment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.display = function(value)
  return "Installment Repayment Date: "..value
end

-- Dissect: Installment Repayment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.installment_repayment_date, range, value, display)

  return offset + length, value
end

-- Interest Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment = {}

-- Size: Interest Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.size = 1

-- Display: Interest Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.display = function(value)
  return "Interest Payment: "..value
end

-- Dissect: Interest Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.interest_payment, range, value, display)

  return offset + length, value
end

-- Investment Caution Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code = {}

-- Size: Investment Caution Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.size = 1

-- Display: Investment Caution Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.display = function(value)
  return "Investment Caution Bond Type Code: "..value
end

-- Dissect: Investment Caution Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_caution_bond_type_code, range, value, display)

  return offset + length, value
end

-- Investment Caution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue = {}

-- Size: Investment Caution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.size = 1

-- Display: Investment Caution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.display = function(value)
  return "Investment Caution Issue: "..value
end

-- Dissect: Investment Caution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_caution_issue, range, value, display)

  return offset + length, value
end

-- Investment Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code = {}

-- Size: Investment Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.size = 1

-- Display: Investment Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.display = function(value)
  return "Investment Institution Type Code: "..value
end

-- Dissect: Investment Institution Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_institution_type_code, range, value, display)

  return offset + length, value
end

-- Investment Precaution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue = {}

-- Size: Investment Precaution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.size = 1

-- Display: Investment Precaution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.display = function(value)
  return "Investment Precaution Issue: "..value
end

-- Dissect: Investment Precaution Issue
koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.investment_precaution_issue, range, value, display)

  return offset + length, value
end

-- Ipo Underwriter Member Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number = {}

-- Size: Ipo Underwriter Member Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.size = 5

-- Display: Ipo Underwriter Member Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.display = function(value)
  return "Ipo Underwriter Member Number: "..value
end

-- Dissect: Ipo Underwriter Member Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.ipo_underwriter_member_number, range, value, display)

  return offset + length, value
end

-- Isin
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin = {}

-- Size: Isin
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.size = 12

-- Display: Isin
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.isin, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Issue Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date = {}

-- Size: Issue Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.size = 8

-- Display: Issue Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.display = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issue For Administration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration = {}

-- Size: Issue For Administration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.size = 1

-- Display: Issue For Administration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.display = function(value)
  return "Issue For Administration: "..value
end

-- Dissect: Issue For Administration
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_for_administration, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.display = function(value)
  return "Issued Amount Weight: "..value
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Issuing Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount = {}

-- Size: Issuing Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.size = 22

-- Display: Issuing Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.display = function(value)
  return "Issuing Amount: "..value
end

-- Dissect: Issuing Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issuing_amount, range, value, display)

  return offset + length, value
end

-- Issuing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price = {}

-- Size: Issuing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.size = 11

-- Display: Issuing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.display = function(value)
  return "Issuing Price: "..value
end

-- Dissect: Issuing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issuing_price, range, value, display)

  return offset + length, value
end

-- Korea Corporate Governance Stock Price Index Kogi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi = {}

-- Size: Korea Corporate Governance Stock Price Index Kogi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.size = 1

-- Display: Korea Corporate Governance Stock Price Index Kogi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.display = function(value)
  return "Korea Corporate Governance Stock Price Index Kogi: "..value
end

-- Dissect: Korea Corporate Governance Stock Price Index Kogi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.korea_corporate_governance_stock_price_index_kogi, range, value, display)

  return offset + length, value
end

-- Korea Valueup Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index = {}

-- Size: Korea Valueup Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.size = 1

-- Display: Korea Valueup Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.display = function(value)
  return "Korea Valueup Index: "..value
end

-- Dissect: Korea Valueup Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.korea_valueup_index, range, value, display)

  return offset + length, value
end

-- Kosdaq
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq = {}

-- Size: Kosdaq
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.size = 1

-- Display: Kosdaq
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.display = function(value)
  return "Kosdaq: "..value
end

-- Dissect: Kosdaq
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kosdaq, range, value, display)

  return offset + length, value
end

-- Kosdaq 150
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150 = {}

-- Size: Kosdaq 150
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.size = 1

-- Display: Kosdaq 150
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.display = function(value)
  return "Kosdaq 150: "..value
end

-- Dissect: Kosdaq 150
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kosdaq_150, range, value, display)

  return offset + length, value
end

-- Kospi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi = {}

-- Size: Kospi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.size = 1

-- Display: Kospi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.display = function(value)
  return "Kospi: "..value
end

-- Dissect: Kospi
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi, range, value, display)

  return offset + length, value
end

-- Kospi 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100 = {}

-- Size: Kospi 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.size = 1

-- Display: Kospi 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.display = function(value)
  return "Kospi 100: "..value
end

-- Dissect: Kospi 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_100, range, value, display)

  return offset + length, value
end

-- Kospi 200 High Dividend Yield Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index = {}

-- Size: Kospi 200 High Dividend Yield Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.size = 1

-- Display: Kospi 200 High Dividend Yield Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.display = function(value)
  return "Kospi 200 High Dividend Yield Index: "..value
end

-- Dissect: Kospi 200 High Dividend Yield Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_high_dividend_yield_index, range, value, display)

  return offset + length, value
end

-- Kospi 200 Sector Code 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1 = {}

-- Size: Kospi 200 Sector Code 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.size = 1

-- Display: Kospi 200 Sector Code 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.display = function(value)
  return "Kospi 200 Sector Code 1: "..value
end

-- Dissect: Kospi 200 Sector Code 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_sector_code_1, range, value, display)

  return offset + length, value
end

-- Kospi 200 Sector Code 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2 = {}

-- Size: Kospi 200 Sector Code 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.size = 1

-- Display: Kospi 200 Sector Code 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.display = function(value)
  return "Kospi 200 Sector Code 2: "..value
end

-- Dissect: Kospi 200 Sector Code 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_200_sector_code_2, range, value, display)

  return offset + length, value
end

-- Kospi 50
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50 = {}

-- Size: Kospi 50
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.size = 1

-- Display: Kospi 50
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.display = function(value)
  return "Kospi 50: "..value
end

-- Dissect: Kospi 50
koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.kospi_50, range, value, display)

  return offset + length, value
end

-- Krx 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100 = {}

-- Size: Krx 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.size = 1

-- Display: Krx 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.display = function(value)
  return "Krx 100: "..value
end

-- Dissect: Krx 100
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_100, range, value, display)

  return offset + length, value
end

-- Krx 300
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300 = {}

-- Size: Krx 300
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.size = 1

-- Display: Krx 300
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.display = function(value)
  return "Krx 300: "..value
end

-- Dissect: Krx 300
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_300, range, value, display)

  return offset + length, value
end

-- Krx Bbig Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index = {}

-- Size: Krx Bbig Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.size = 1

-- Display: Krx Bbig Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.display = function(value)
  return "Krx Bbig Index: "..value
end

-- Dissect: Krx Bbig Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_bbig_index, range, value, display)

  return offset + length, value
end

-- Krx Bio Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index = {}

-- Size: Krx Bio Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.size = 1

-- Display: Krx Bio Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.display = function(value)
  return "Krx Bio Top 10 Index: "..value
end

-- Dissect: Krx Bio Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_bio_top_10_index, range, value, display)

  return offset + length, value
end

-- Krx Secondary Battery Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index = {}

-- Size: Krx Secondary Battery Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.size = 1

-- Display: Krx Secondary Battery Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.display = function(value)
  return "Krx Secondary Battery Top 10 Index: "..value
end

-- Dissect: Krx Secondary Battery Top 10 Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_secondary_battery_top_10_index, range, value, display)

  return offset + length, value
end

-- Limit Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code = {}

-- Size: Limit Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.size = 5

-- Display: Limit Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.display = function(value)
  return "Limit Order Permission Type Code: "..value
end

-- Dissect: Limit Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.limit_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Liquidation Trade
koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade = {}

-- Size: Liquidation Trade
koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.size = 1

-- Display: Liquidation Trade
koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.display = function(value)
  return "Liquidation Trade: "..value
end

-- Dissect: Liquidation Trade
koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.liquidation_trade, range, value, display)

  return offset + length, value
end

-- Listed Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount = {}

-- Size: Listed Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.size = 22

-- Display: Listed Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.display = function(value)
  return "Listed Amount: "..value
end

-- Dissect: Listed Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.listed_amount, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Loss Category
koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category = {}

-- Size: Loss Category
koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.size = 1

-- Display: Loss Category
koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.display = function(value)
  return "Loss Category: "..value
end

-- Dissect: Loss Category
koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.loss_category, range, value, display)

  return offset + length, value
end

-- Lot Size Afterhours Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading = {}

-- Size: Lot Size Afterhours Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.size = 11

-- Display: Lot Size Afterhours Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.display = function(value)
  return "Lot Size Afterhours Trading: "..value
end

-- Dissect: Lot Size Afterhours Trading
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lot_size_afterhours_trading, range, value, display)

  return offset + length, value
end

-- Low Liquidity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity = {}

-- Size: Low Liquidity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.size = 1

-- Display: Low Liquidity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.display = function(value)
  return "Low Liquidity: "..value
end

-- Dissect: Low Liquidity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.low_liquidity, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price = {}

-- Size: Lower Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.size = 11

-- Display: Lower Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.display = function(value)
  return "Lower Limit Price: "..value
end

-- Dissect: Lower Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lowest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price = {}

-- Size: Lowest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.size = 11

-- Display: Lowest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.display = function(value)
  return "Lowest Order Price: "..value
end

-- Dissect: Lowest Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lowest_order_price, range, value, display)

  return offset + length, value
end

-- Lp End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date = {}

-- Size: Lp End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.size = 8

-- Display: Lp End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.display = function(value)
  return "Lp End Date: "..value
end

-- Dissect: Lp End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_end_date, range, value, display)

  return offset + length, value
end

-- Lp Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order = {}

-- Size: Lp Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.size = 1

-- Display: Lp Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.display = function(value)
  return "Lp Order: "..value
end

-- Dissect: Lp Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_order, range, value, display)

  return offset + length, value
end

-- Lp Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date = {}

-- Size: Lp Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.size = 8

-- Display: Lp Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.display = function(value)
  return "Lp Start Date: "..value
end

-- Dissect: Lp Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.lp_start_date, range, value, display)

  return offset + length, value
end

-- Market Alert
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert = {}

-- Size: Market Alert
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.size = 1

-- Display: Market Alert
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.display = function(value)
  return "Market Alert: "..value
end

-- Dissect: Market Alert
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_alert, range, value, display)

  return offset + length, value
end

-- Market Alert Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code = {}

-- Size: Market Alert Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.size = 2

-- Display: Market Alert Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.display = function(value)
  return "Market Alert Type Code: "..value
end

-- Dissect: Market Alert Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_alert_type_code, range, value, display)

  return offset + length, value
end

-- Market Capitalization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code = {}

-- Size: Market Capitalization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.size = 1

-- Display: Market Capitalization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.display = function(value)
  return "Market Capitalization Type Code: "..value
end

-- Dissect: Market Capitalization Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_capitalization_type_code, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.display = function(value)
  return "Market Capitalization Weight: "..value
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Making Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility = {}

-- Size: Market Making Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.size = 1

-- Display: Market Making Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.display = function(value)
  return "Market Making Possibility: "..value
end

-- Dissect: Market Making Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_making_possibility, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Participant Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number = {}

-- Size: Market Participant Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.size = 5

-- Display: Market Participant Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.display = function(value)
  return "Market Participant Number: "..value
end

-- Dissect: Market Participant Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_participant_number, range, value, display)

  return offset + length, value
end

-- Market Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11 = {}

-- Size: Market Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.size = 11

-- Display: Market Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.display = function(value)
  return "Market Price Index Double 11: "..value
end

-- Dissect: Market Price Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Market Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816 = {}

-- Size: Market Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.size = 16

-- Display: Market Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.display = function(value)
  return "Market Price Index Float 12816: "..value
end

-- Dissect: Market Price Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.display = function(value)
  return "Market Price Index Weight: "..value
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Market Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code = {}

-- Size: Market Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.size = 5

-- Display: Market Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.display = function(value)
  return "Market Price Order Permission Type Code: "..value
end

-- Dissect: Market Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Market Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value = {}

-- Size: Market Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.size = 11

-- Display: Market Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.display = function(value)
  return "Market Value: "..value
end

-- Dissect: Market Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.market_value, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Maturity Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date = {}

-- Size: Maturity Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.size = 8

-- Display: Maturity Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maximum Bid Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price = {}

-- Size: Maximum Bid Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.size = 22

-- Display: Maximum Bid Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.display = function(value)
  return "Maximum Bid Price: "..value
end

-- Dissect: Maximum Bid Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_bid_price, range, value, display)

  return offset + length, value
end

-- Maximum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price = {}

-- Size: Maximum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.size = 22

-- Display: Maximum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.display = function(value)
  return "Maximum Order Price: "..value
end

-- Dissect: Maximum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_order_price, range, value, display)

  return offset + length, value
end

-- Maximum Volume Of Multiple Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order = {}

-- Size: Maximum Volume Of Multiple Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.size = 11

-- Display: Maximum Volume Of Multiple Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.display = function(value)
  return "Maximum Volume Of Multiple Order: "..value
end

-- Dissect: Maximum Volume Of Multiple Order
koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.maximum_volume_of_multiple_order, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.display = function(value)
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
  if value == "B201S" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kospi Message (B201S)"
  end
  if value == "B201Q" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kosdaq Message (B201Q)"
  end
  if value == "B202S" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message (B202S)"
  end
  if value == "B203S" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message (B203S)"
  end
  if value == "B204S" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message (B204S)"
  end
  if value == "B205S" then
    return "Message Code: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message (B205S)"
  end
  if value == "A001S" then
    return "Message Code: Securities Equities Batch Data Message (A001S)"
  end
  if value == "A002S" then
    return "Message Code: Securities Equities Batch Data Message (A002S)"
  end
  if value == "A003S" then
    return "Message Code: Securities Equities Batch Data Message (A003S)"
  end
  if value == "A004S" then
    return "Message Code: Securities Equities Batch Data Message (A004S)"
  end
  if value == "A005S" then
    return "Message Code: Securities Equities Batch Data Message (A005S)"
  end
  if value == "A001Q" then
    return "Message Code: Securities Equities Batch Data Message (A001Q)"
  end
  if value == "A001X" then
    return "Message Code: Securities Equities Batch Data Message (A001X)"
  end
  if value == "I501S" then
    return "Message Code: Securities Closing Date Message (I501S)"
  end
  if value == "I503S" then
    return "Message Code: Securities Closing Date Message (I503S)"
  end
  if value == "I504S" then
    return "Message Code: Securities Closing Date Message (I504S)"
  end
  if value == "I505S" then
    return "Message Code: Securities Closing Date Message (I505S)"
  end
  if value == "I501Q" then
    return "Message Code: Securities Closing Date Message (I501Q)"
  end
  if value == "I501X" then
    return "Message Code: Securities Closing Date Message (I501X)"
  end
  if value == "I701S" then
    return "Message Code: Securities Mm Lp Information Message (I701S)"
  end
  if value == "I702S" then
    return "Message Code: Securities Mm Lp Information Message (I702S)"
  end
  if value == "I703S" then
    return "Message Code: Securities Mm Lp Information Message (I703S)"
  end
  if value == "I704S" then
    return "Message Code: Securities Mm Lp Information Message (I704S)"
  end
  if value == "I705S" then
    return "Message Code: Securities Mm Lp Information Message (I705S)"
  end
  if value == "I701Q" then
    return "Message Code: Securities Mm Lp Information Message (I701Q)"
  end
  if value == "I701X" then
    return "Message Code: Securities Mm Lp Information Message (I701X)"
  end
  if value == "M900S" then
    return "Message Code: Securities Member Information Message (M900S)"
  end
  if value == "M900Q" then
    return "Message Code: Securities Member Information Message (M900Q)"
  end
  if value == "M900X" then
    return "Message Code: Securities Member Information Message (M900X)"
  end
  if value == "A901S" then
    return "Message Code: Securities Treasury Stocks Batch Message (A901S)"
  end
  if value == "A901Q" then
    return "Message Code: Securities Treasury Stocks Batch Message (A901Q)"
  end
  if value == "A901X" then
    return "Message Code: Securities Treasury Stocks Batch Message (A901X)"
  end
  if value == "CA01S" then
    return "Message Code: Securities Equity Index Indicator Message (CA01S)"
  end
  if value == "CA01Q" then
    return "Message Code: Securities Equity Index Indicator Message (CA01Q)"
  end
  if value == "P200S" then
    return "Message Code: Securities Dividend Yield Per Industry Message (P200S)"
  end
  if value == "P200Q" then
    return "Message Code: Securities Dividend Yield Per Industry Message (P200Q)"
  end
  if value == "A001B" then
    return "Message Code: Bonds Batch Data Message (A001B)"
  end
  if value == "A001R" then
    return "Message Code: Repo Batch Data Message (A001R)"
  end
  if value == "I601S" then
    return "Message Code: Issue Event Message (I601S)"
  end
  if value == "I602S" then
    return "Message Code: Issue Event Message (I602S)"
  end
  if value == "I603S" then
    return "Message Code: Issue Event Message (I603S)"
  end
  if value == "I604S" then
    return "Message Code: Issue Event Message (I604S)"
  end
  if value == "I605S" then
    return "Message Code: Issue Event Message (I605S)"
  end
  if value == "I601Q" then
    return "Message Code: Issue Event Message (I601Q)"
  end
  if value == "I601X" then
    return "Message Code: Issue Event Message (I601X)"
  end
  if value == "I601B" then
    return "Message Code: Issue Event Message (I601B)"
  end
  if value == "I601M" then
    return "Message Code: Issue Event Message (I601M)"
  end
  if value == "I601K" then
    return "Message Code: Issue Event Message (I601K)"
  end
  if value == "I601R" then
    return "Message Code: Issue Event Message (I601R)"
  end
  if value == "F901B" then
    return "Message Code: Corporate Bonds Reference Message (F901B)"
  end
  if value == "F901M" then
    return "Message Code: Corporate Bonds Reference Message (F901M)"
  end
  if value == "BN01B" then
    return "Message Code: Regular Bonds Installment Repayment Date Message (BN01B)"
  end
  if value == "CB01R" then
    return "Message Code: Repo Classification Data Message (CB01R)"
  end
  if value == "S001R" then
    return "Message Code: Repo Trade Availability Per Term Message (S001R)"
  end
  if value == "G300B" then
    return "Message Code: Retail Bonds Type Code Message (G300B)"
  end

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Mid Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code = {}

-- Size: Mid Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.size = 5

-- Display: Mid Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.display = function(value)
  return "Mid Price Order Permission Type Code: "..value
end

-- Dissect: Mid Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.mid_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Minimum Ask Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price = {}

-- Size: Minimum Ask Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.size = 22

-- Display: Minimum Ask Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.display = function(value)
  return "Minimum Ask Price: "..value
end

-- Dissect: Minimum Ask Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_ask_price, range, value, display)

  return offset + length, value
end

-- Minimum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price = {}

-- Size: Minimum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.size = 22

-- Display: Minimum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.display = function(value)
  return "Minimum Order Price: "..value
end

-- Dissect: Minimum Order Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_order_price, range, value, display)

  return offset + length, value
end

-- Minimum Order Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume = {}

-- Size: Minimum Order Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.size = 11

-- Display: Minimum Order Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.display = function(value)
  return "Minimum Order Volume: "..value
end

-- Dissect: Minimum Order Volume
koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.minimum_order_volume, range, value, display)

  return offset + length, value
end

-- Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment = {}

-- Size: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.size = 4

-- Display: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.display = function(value)
  return "Monthly Cycle Of Coupon Payment: "..value
end

-- Dissect: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.monthly_cycle_of_coupon_payment, range, value, display)

  return offset + length, value
end

-- Name Of A Market Participant In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en = {}

-- Size: Name Of A Market Participant In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.size = 80

-- Display: Name Of A Market Participant In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.display = function(value)
  return "Name Of A Market Participant In En: "..value
end

-- Dissect: Name Of A Market Participant In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.name_of_a_market_participant_in_en, range, value, display)

  return offset + length, value
end

-- Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr = {}

-- Size: Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.size = 80

-- Display: Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.display = function(value)
  return "Name Of A Market Participant In Kr: "..value
end

-- Dissect: Name Of A Market Participant In Kr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.name_of_a_market_participant_in_kr, range, value, display)

  return offset + length, value
end

-- National Stock
koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock = {}

-- Size: National Stock
koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.size = 1

-- Display: National Stock
koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.display = function(value)
  return "National Stock: "..value
end

-- Dissect: National Stock
koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.national_stock, range, value, display)

  return offset + length, value
end

-- Next Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date = {}

-- Size: Next Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.size = 8

-- Display: Next Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.display = function(value)
  return "Next Coupon Payment Date: "..value
end

-- Dissect: Next Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.next_coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Number Of Amortization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization = {}

-- Size: Number Of Amortization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.size = 5

-- Display: Number Of Amortization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.display = function(value)
  return "Number Of Amortization: "..value
end

-- Dissect: Number Of Amortization
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_amortization, range, value, display)

  return offset + length, value
end

-- Number Of Listed Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares = {}

-- Size: Number Of Listed Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.size = 16

-- Display: Number Of Listed Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.display = function(value)
  return "Number Of Listed Shares: "..value
end

-- Dissect: Number Of Listed Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_listed_shares, range, value, display)

  return offset + length, value
end

-- Number Of Months For Grace
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace = {}

-- Size: Number Of Months For Grace
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.size = 4

-- Display: Number Of Months For Grace
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.display = function(value)
  return "Number Of Months For Grace: "..value
end

-- Dissect: Number Of Months For Grace
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_months_for_grace, range, value, display)

  return offset + length, value
end

-- Number Of Repo Trade Periods
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods = {}

-- Size: Number Of Repo Trade Periods
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.size = 3

-- Display: Number Of Repo Trade Periods
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.display = function(value)
  return "Number Of Repo Trade Periods: "..value
end

-- Dissect: Number Of Repo Trade Periods
koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.number_of_repo_trade_periods, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.size = 11

-- Display: Opening Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Other Stock Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code = {}

-- Size: Other Stock Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.size = 1

-- Display: Other Stock Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.display = function(value)
  return "Other Stock Type Code: "..value
end

-- Dissect: Other Stock Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.other_stock_type_code, range, value, display)

  return offset + length, value
end

-- Par Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value = {}

-- Size: Par Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.size = 11

-- Display: Par Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.display = function(value)
  return "Par Value: "..value
end

-- Dissect: Par Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.par_value, range, value, display)

  return offset + length, value
end

-- Par Value Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code = {}

-- Size: Par Value Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.size = 2

-- Display: Par Value Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.display = function(value)
  return "Par Value Type Code: "..value
end

-- Dissect: Par Value Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.par_value_type_code, range, value, display)

  return offset + length, value
end

-- Pbr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr = {}

-- Size: Pbr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.size = 13

-- Display: Pbr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.display = function(value)
  return "Pbr: "..value
end

-- Dissect: Pbr
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pbr, range, value, display)

  return offset + length, value
end

-- Per
koscom_mdcsrealtime_equityderivatives_exture_v2_018.per = {}

-- Size: Per
koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.size = 13

-- Display: Per
koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.display = function(value)
  return "Per: "..value
end

-- Dissect: Per
koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.per, range, value, display)

  return offset + length, value
end

-- Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status = {}

-- Size: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.size = 1

-- Display: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.display = function(value)
  return "Perpetual Bond Maturity Structure Status: "..value
end

-- Dissect: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.perpetual_bond_maturity_structure_status, range, value, display)

  return offset + length, value
end

-- Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code = {}

-- Size: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size = 1

-- Display: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.display = function(value)
  return "Pre Issue Sale Coupon Payment Type Code: "..value
end

-- Dissect: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pre_issue_sale_coupon_payment_type_code, range, value, display)

  return offset + length, value
end

-- Pre Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility = {}

-- Size: Pre Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.size = 1

-- Display: Pre Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.display = function(value)
  return "Pre Market Possibility: "..value
end

-- Dissect: Pre Market Possibility
koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.pre_market_possibility, range, value, display)

  return offset + length, value
end

-- Preferred Stocks With Lesser Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares = {}

-- Size: Preferred Stocks With Lesser Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.size = 1

-- Display: Preferred Stocks With Lesser Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.display = function(value)
  return "Preferred Stocks With Lesser Shares: "..value
end

-- Dissect: Preferred Stocks With Lesser Shares
koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.preferred_stocks_with_lesser_shares, range, value, display)

  return offset + length, value
end

-- Price Change Against Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day = {}

-- Size: Price Change Against Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.size = 1

-- Display: Price Change Against Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.display = function(value)
  return "Price Change Against Previous Day: "..value
end

-- Dissect: Price Change Against Previous Day
koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.price_change_against_previous_day, range, value, display)

  return offset + length, value
end

-- Prior Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date = {}

-- Size: Prior Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.size = 8

-- Display: Prior Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.display = function(value)
  return "Prior Coupon Payment Date: "..value
end

-- Dissect: Prior Coupon Payment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.prior_coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Random End Trigger Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code = {}

-- Size: Random End Trigger Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.size = 1

-- Display: Random End Trigger Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.display = function(value)
  return "Random End Trigger Code: "..value
end

-- Dissect: Random End Trigger Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.random_end_trigger_code, range, value, display)

  return offset + length, value
end

-- Record Date Of Dividend Payout
koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout = {}

-- Size: Record Date Of Dividend Payout
koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.size = 1

-- Display: Record Date Of Dividend Payout
koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.display = function(value)
  return "Record Date Of Dividend Payout: "..value
end

-- Dissect: Record Date Of Dividend Payout
koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.record_date_of_dividend_payout, range, value, display)

  return offset + length, value
end

-- Redemption Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date = {}

-- Size: Redemption Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.size = 8

-- Display: Redemption Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.display = function(value)
  return "Redemption Date: "..value
end

-- Dissect: Redemption Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.redemption_date, range, value, display)

  return offset + length, value
end

-- Redemption Ratio At Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity = {}

-- Size: Redemption Ratio At Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.size = 13

-- Display: Redemption Ratio At Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.display = function(value)
  return "Redemption Ratio At Maturity: "..value
end

-- Dissect: Redemption Ratio At Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.redemption_ratio_at_maturity, range, value, display)

  return offset + length, value
end

-- Reevaluation Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code = {}

-- Size: Reevaluation Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.size = 2

-- Display: Reevaluation Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.display = function(value)
  return "Reevaluation Reason Code: "..value
end

-- Dissect: Reevaluation Reason Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reevaluation_reason_code, range, value, display)

  return offset + length, value
end

-- Reference Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code = {}

-- Size: Reference Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.size = 2

-- Display: Reference Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.display = function(value)
  return "Reference Index Leverage Inverse Type Code: "..value
end

-- Dissect: Reference Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reference_index_leverage_inverse_type_code, range, value, display)

  return offset + length, value
end

-- Regs
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs = {}

-- Size: Regs
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.size = 1

-- Display: Regs
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.display = function(value)
  return "Regs: "..value
end

-- Dissect: Regs
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.regs, range, value, display)

  return offset + length, value
end

-- Rei Ts Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code = {}

-- Size: Rei Ts Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.size = 1

-- Display: Rei Ts Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.display = function(value)
  return "Rei Ts Type Code: "..value
end

-- Dissect: Rei Ts Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.rei_ts_type_code, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.display = function(value)
  return "Reinvest Call Cash: "..value
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Repo Classification Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code = {}

-- Size: Repo Classification Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.size = 2

-- Display: Repo Classification Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.display = function(value)
  return "Repo Classification Code: "..value
end

-- Dissect: Repo Classification Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_code, range, value, display)

  return offset + length, value
end

-- Repo Classification Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name = {}

-- Size: Repo Classification Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.size = 20

-- Display: Repo Classification Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.display = function(value)
  return "Repo Classification Name: "..value
end

-- Dissect: Repo Classification Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_name, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1 = {}

-- Size: Repo Trade Period 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.size = 3

-- Display: Repo Trade Period 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.display = function(value)
  return "Repo Trade Period 1: "..value
end

-- Dissect: Repo Trade Period 1
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_1, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 10
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10 = {}

-- Size: Repo Trade Period 10
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.size = 3

-- Display: Repo Trade Period 10
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.display = function(value)
  return "Repo Trade Period 10: "..value
end

-- Dissect: Repo Trade Period 10
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_10, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2 = {}

-- Size: Repo Trade Period 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.size = 3

-- Display: Repo Trade Period 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.display = function(value)
  return "Repo Trade Period 2: "..value
end

-- Dissect: Repo Trade Period 2
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_2, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3 = {}

-- Size: Repo Trade Period 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.size = 3

-- Display: Repo Trade Period 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.display = function(value)
  return "Repo Trade Period 3: "..value
end

-- Dissect: Repo Trade Period 3
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_3, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4 = {}

-- Size: Repo Trade Period 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.size = 3

-- Display: Repo Trade Period 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.display = function(value)
  return "Repo Trade Period 4: "..value
end

-- Dissect: Repo Trade Period 4
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_4, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 5
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5 = {}

-- Size: Repo Trade Period 5
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.size = 3

-- Display: Repo Trade Period 5
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.display = function(value)
  return "Repo Trade Period 5: "..value
end

-- Dissect: Repo Trade Period 5
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_5, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 6
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6 = {}

-- Size: Repo Trade Period 6
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.size = 3

-- Display: Repo Trade Period 6
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.display = function(value)
  return "Repo Trade Period 6: "..value
end

-- Dissect: Repo Trade Period 6
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_6, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 7
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7 = {}

-- Size: Repo Trade Period 7
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.size = 3

-- Display: Repo Trade Period 7
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.display = function(value)
  return "Repo Trade Period 7: "..value
end

-- Dissect: Repo Trade Period 7
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_7, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8 = {}

-- Size: Repo Trade Period 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.size = 3

-- Display: Repo Trade Period 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.display = function(value)
  return "Repo Trade Period 8: "..value
end

-- Dissect: Repo Trade Period 8
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_8, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 9
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9 = {}

-- Size: Repo Trade Period 9
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.size = 3

-- Display: Repo Trade Period 9
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.display = function(value)
  return "Repo Trade Period 9: "..value
end

-- Dissect: Repo Trade Period 9
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_period_9, range, value, display)

  return offset + length, value
end

-- Retail Bond Category Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name = {}

-- Size: Retail Bond Category Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.size = 20

-- Display: Retail Bond Category Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.display = function(value)
  return "Retail Bond Category Name: "..value
end

-- Dissect: Retail Bond Category Name
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_category_name, range, value, display)

  return offset + length, value
end

-- Retail Bond Category Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en = {}

-- Size: Retail Bond Category Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.size = 20

-- Display: Retail Bond Category Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.display = function(value)
  return "Retail Bond Category Name In En: "..value
end

-- Dissect: Retail Bond Category Name In En
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_category_name_in_en, range, value, display)

  return offset + length, value
end

-- Retail Bond Generated Quotes
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes = {}

-- Size: Retail Bond Generated Quotes
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.size = 1

-- Display: Retail Bond Generated Quotes
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.display = function(value)
  return "Retail Bond Generated Quotes: "..value
end

-- Dissect: Retail Bond Generated Quotes
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_generated_quotes, range, value, display)

  return offset + length, value
end

-- Retail Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code = {}

-- Size: Retail Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.size = 2

-- Display: Retail Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.display = function(value)
  return "Retail Bond Type Code: "..value
end

-- Dissect: Retail Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bond_type_code, range, value, display)

  return offset + length, value
end

-- Rights Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code = {}

-- Size: Rights Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.size = 2

-- Display: Rights Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.display = function(value)
  return "Rights Type Code: "..value
end

-- Dissect: Rights Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.rights_type_code, range, value, display)

  return offset + length, value
end

-- Sale Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date = {}

-- Size: Sale Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.size = 8

-- Display: Sale Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.display = function(value)
  return "Sale Date: "..value
end

-- Dissect: Sale Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.sale_date, range, value, display)

  return offset + length, value
end

-- Section Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code = {}

-- Size: Section Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.size = 1

-- Display: Section Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.display = function(value)
  return "Section Type Code: "..value
end

-- Dissect: Section Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.section_type_code, range, value, display)

  return offset + length, value
end

-- Security Group Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id = {}

-- Size: Security Group Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.size = 2

-- Display: Security Group Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Segment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code = {}

-- Size: Segment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.size = 1

-- Display: Segment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.display = function(value)
  return "Segment Type Code: "..value
end

-- Dissect: Segment Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.segment_type_code, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Selling
koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling = {}

-- Size: Short Selling
koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.size = 1

-- Display: Short Selling
koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.display = function(value)
  return "Short Selling: "..value
end

-- Dissect: Short Selling
koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.short_selling, range, value, display)

  return offset + length, value
end

-- Shortterm Overheat Issue Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code = {}

-- Size: Shortterm Overheat Issue Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.size = 1

-- Display: Shortterm Overheat Issue Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.display = function(value)
  return "Shortterm Overheat Issue Type Code: "..value
end

-- Dissect: Shortterm Overheat Issue Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.shortterm_overheat_issue_type_code, range, value, display)

  return offset + length, value
end

-- Small Medium Sized Business
koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business = {}

-- Size: Small Medium Sized Business
koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.size = 1

-- Display: Small Medium Sized Business
koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.display = function(value)
  return "Small Medium Sized Business: "..value
end

-- Dissect: Small Medium Sized Business
koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.small_medium_sized_business, range, value, display)

  return offset + length, value
end

-- Spac
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac = {}

-- Size: Spac
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.size = 1

-- Display: Spac
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.display = function(value)
  return "Spac: "..value
end

-- Dissect: Spac
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spac, range, value, display)

  return offset + length, value
end

-- Spac Merger
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger = {}

-- Size: Spac Merger
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.size = 1

-- Display: Spac Merger
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.display = function(value)
  return "Spac Merger: "..value
end

-- Dissect: Spac Merger
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spac_merger, range, value, display)

  return offset + length, value
end

-- Spread Multiple For Market Holidays
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays = {}

-- Size: Spread Multiple For Market Holidays
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.size = 11

-- Display: Spread Multiple For Market Holidays
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.display = function(value)
  return "Spread Multiple For Market Holidays: "..value
end

-- Dissect: Spread Multiple For Market Holidays
koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.spread_multiple_for_market_holidays, range, value, display)

  return offset + length, value
end

-- Stop Limit Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code = {}

-- Size: Stop Limit Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.size = 5

-- Display: Stop Limit Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.display = function(value)
  return "Stop Limit Price Order Permission Type Code: "..value
end

-- Dissect: Stop Limit Price Order Permission Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.stop_limit_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Strip Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code = {}

-- Size: Strip Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.size = 1

-- Display: Strip Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.display = function(value)
  return "Strip Bond Type Code: "..value
end

-- Dissect: Strip Bond Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.strip_bond_type_code, range, value, display)

  return offset + length, value
end

-- Substitute Price Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities = {}

-- Size: Substitute Price Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.size = 11

-- Display: Substitute Price Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.display = function(value)
  return "Substitute Price Of Securities: "..value
end

-- Dissect: Substitute Price Of Securities
koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.substitute_price_of_securities, range, value, display)

  return offset + length, value
end

-- Target Stock Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code = {}

-- Size: Target Stock Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.size = 12

-- Display: Target Stock Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.display = function(value)
  return "Target Stock Isin Code: "..value
end

-- Dissect: Target Stock Isin Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.target_stock_isin_code, range, value, display)

  return offset + length, value
end

-- Tax Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code = {}

-- Size: Tax Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.size = 1

-- Display: Tax Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.display = function(value)
  return "Tax Type Code: "..value
end

-- Dissect: Tax Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.tax_type_code, range, value, display)

  return offset + length, value
end

-- The Best Ask
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask = {}

-- Size: The Best Ask
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.size = 11

-- Display: The Best Ask
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.display = function(value)
  return "The Best Ask: "..value
end

-- Dissect: The Best Ask
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_best_ask, range, value, display)

  return offset + length, value
end

-- The Best Bid
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid = {}

-- Size: The Best Bid
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.size = 11

-- Display: The Best Bid
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.display = function(value)
  return "The Best Bid: "..value
end

-- Dissect: The Best Bid
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_best_bid, range, value, display)

  return offset + length, value
end

-- The Establishment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date = {}

-- Size: The Establishment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.size = 8

-- Display: The Establishment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.display = function(value)
  return "The Establishment Date: "..value
end

-- Dissect: The Establishment Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.the_establishment_date, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.size = 11

-- Display: Todays High
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.size = 11

-- Display: Todays Low
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.display = function(value)
  return "Total Earnings Index: "..value
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.display = function(value)
  return "Total Earnings Index Weight: "..value
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.display = function(value)
  return "Total Profit Index: "..value
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Tracking Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code = {}

-- Size: Tracking Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.size = 2

-- Display: Tracking Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.display = function(value)
  return "Tracking Index Leverage Inverse Type Code: "..value
end

-- Dissect: Tracking Index Leverage Inverse Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.tracking_index_leverage_inverse_type_code, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.display = function(value)
  return "Transmission Time: "..value
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Trearsury Stock Trading Method Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code = {}

-- Size: Trearsury Stock Trading Method Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.size = 1

-- Display: Trearsury Stock Trading Method Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.display = function(value)
  return "Trearsury Stock Trading Method Type Code: "..value
end

-- Dissect: Trearsury Stock Trading Method Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.trearsury_stock_trading_method_type_code, range, value, display)

  return offset + length, value
end

-- Treasury Stock Application Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date = {}

-- Size: Treasury Stock Application Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.size = 8

-- Display: Treasury Stock Application Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.display = function(value)
  return "Treasury Stock Application Date: "..value
end

-- Dissect: Treasury Stock Application Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_application_date, range, value, display)

  return offset + length, value
end

-- Treasury Stock Ask Bid Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code = {}

-- Size: Treasury Stock Ask Bid Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.size = 1

-- Display: Treasury Stock Ask Bid Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.display = function(value)
  return "Treasury Stock Ask Bid Type Code: "..value
end

-- Dissect: Treasury Stock Ask Bid Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Treasury Stock Report Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id = {}

-- Size: Treasury Stock Report Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.size = 5

-- Display: Treasury Stock Report Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.display = function(value)
  return "Treasury Stock Report Id: "..value
end

-- Dissect: Treasury Stock Report Id
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_report_id, range, value, display)

  return offset + length, value
end

-- Treasury Stock Trading End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date = {}

-- Size: Treasury Stock Trading End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.size = 8

-- Display: Treasury Stock Trading End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.display = function(value)
  return "Treasury Stock Trading End Date: "..value
end

-- Dissect: Treasury Stock Trading End Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_trading_end_date, range, value, display)

  return offset + length, value
end

-- Treasury Stock Trading Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date = {}

-- Size: Treasury Stock Trading Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.size = 8

-- Display: Treasury Stock Trading Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.display = function(value)
  return "Treasury Stock Trading Start Date: "..value
end

-- Dissect: Treasury Stock Trading Start Date
koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.treasury_stock_trading_start_date, range, value, display)

  return offset + length, value
end

-- Unfaithful Disclosure
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure = {}

-- Size: Unfaithful Disclosure
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.size = 1

-- Display: Unfaithful Disclosure
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.display = function(value)
  return "Unfaithful Disclosure: "..value
end

-- Dissect: Unfaithful Disclosure
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.unfaithful_disclosure, range, value, display)

  return offset + length, value
end

-- Unit Of Volume In Main Board
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board = {}

-- Size: Unit Of Volume In Main Board
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.size = 11

-- Display: Unit Of Volume In Main Board
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.display = function(value)
  return "Unit Of Volume In Main Board: "..value
end

-- Dissect: Unit Of Volume In Main Board
koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.unit_of_volume_in_main_board, range, value, display)

  return offset + length, value
end

-- Upper Limit Of Bid Ask Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread = {}

-- Size: Upper Limit Of Bid Ask Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.size = 22

-- Display: Upper Limit Of Bid Ask Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.display = function(value)
  return "Upper Limit Of Bid Ask Spread: "..value
end

-- Dissect: Upper Limit Of Bid Ask Spread
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_of_bid_ask_spread, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price = {}

-- Size: Upper Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.size = 11

-- Display: Upper Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.display = function(value)
  return "Upper Limit Price: "..value
end

-- Dissect: Upper Limit Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity = {}

-- Size: Upper Limit Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.size = 23

-- Display: Upper Limit Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.display = function(value)
  return "Upper Limit Quantity: "..value
end

-- Dissect: Upper Limit Quantity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.upper_limit_quantity, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Clean Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Sum Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount = {}

-- Size: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.size = 12

-- Display: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.display = function(value)
  return "Yesterdays Accumulated Trading Amount: "..value
end

-- Dissect: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_accumulated_trading_amount, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value = {}

-- Size: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.size = 22

-- Display: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.display = function(value)
  return "Yesterdays Accumulated Trading Value: "..value
end

-- Dissect: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price = {}

-- Size: Yesterdays Closing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.size = 11

-- Display: Yesterdays Closing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.display = function(value)
  return "Yesterdays Closing Price: "..value
end

-- Dissect: Yesterdays Closing Price
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_closing_price, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code = {}

-- Size: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.size = 1

-- Display: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.display = function(value)
  return "Yesterdays Closing Price Type Code: "..value
end

-- Dissect: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_equityderivatives_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yesterdays_closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Yield To Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity = {}

-- Size: Yield To Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.size = 13

-- Display: Yield To Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.display = function(value)
  return "Yield To Maturity: "..value
end

-- Dissect: Yield To Maturity
koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.yield_to_maturity, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11 = {}

-- Size: Zero Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.size = 11

-- Display: Zero Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.display = function(value)
  return "Zero Re Investment Index Double 11: "..value
end

-- Dissect: Zero Re Investment Index Double 11
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816 = {}

-- Size: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.size = 16

-- Display: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.display = function(value)
  return "Zero Re Investment Index Float 12816: "..value
end

-- Dissect: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.display = function(value)
  return "Zero Re Investment Index Weight: "..value
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime EquityDerivatives Exture 2.018
-----------------------------------------------------------------------

-- Retail Bonds Type Code Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message = {}

-- Size: Retail Bonds Type Code Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Retail Bonds Type Code Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Bonds Type Code Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Retail Bond Type Code: String
  index, retail_bond_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.dissect(buffer, index, packet, parent)

  -- Retail Bond Category Name: String
  index, retail_bond_category_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name.dissect(buffer, index, packet, parent)

  -- Retail Bond Category Name In En: String
  index, retail_bond_category_name_in_en = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_category_name_in_en.dissect(buffer, index, packet, parent)

  -- Retail Bond Generated Quotes: String
  index, retail_bond_generated_quotes = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_generated_quotes.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Bonds Type Code Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.retail_bonds_type_code_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Trade Availability Per Term Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message = {}

-- Size: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Number Of Repo Trade Periods: Int
  index, number_of_repo_trade_periods = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_repo_trade_periods.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 1: Int
  index, repo_trade_period_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_1.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 2: Int
  index, repo_trade_period_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_2.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 3: Int
  index, repo_trade_period_3 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_3.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 4: Int
  index, repo_trade_period_4 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_4.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 5: Int
  index, repo_trade_period_5 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_5.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 6: Int
  index, repo_trade_period_6 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_6.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 7: Int
  index, repo_trade_period_7 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_7.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 8: Int
  index, repo_trade_period_8 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_8.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 9: Int
  index, repo_trade_period_9 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_9.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 10: Int
  index, repo_trade_period_10 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_period_10.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_trade_availability_per_term_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Classification Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message = {}

-- Size: Repo Classification Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Repo Classification Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Classification Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Repo Classification Code: String
  index, repo_classification_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_code.dissect(buffer, index, packet, parent)

  -- Repo Classification Name: String
  index, repo_classification_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_name.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Classification Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_classification_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message = {}

-- Size: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Installment Repayment Date: String
  index, installment_repayment_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.installment_repayment_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.regular_bonds_installment_repayment_date_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Corporate Bonds Reference Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message = {}

-- Size: Corporate Bonds Reference Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Corporate Bonds Reference Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corporate Bonds Reference Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Issue Date: String
  index, issue_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.dissect(buffer, index, packet, parent)

  -- Redemption Date: String
  index, redemption_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 2: String
  index, coupon_payment_type_code_string_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.dissect(buffer, index, packet, parent)

  -- Issuing Amount: FLOAT128
  index, issuing_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.dissect(buffer, index, packet, parent)

  -- Listed Amount: FLOAT128
  index, listed_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 1: String
  index, coupon_payment_type_code_string_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.dissect(buffer, index, packet, parent)

  -- Number Of Months For Grace: Int
  index, number_of_months_for_grace = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.dissect(buffer, index, packet, parent)

  -- Number Of Amortization: Int
  index, number_of_amortization = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.dissect(buffer, index, packet, parent)

  -- Interest Payment: String
  index, interest_payment = koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date Type Code: String
  index, coupon_payment_date_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Double
  index, coupon_rate = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin.dissect(buffer, index, packet, parent)

  -- Date To Start Exercising: String
  index, date_to_start_exercising = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_start_exercising.dissect(buffer, index, packet, parent)

  -- Date To End Exercising: String
  index, date_to_end_exercising = koscom_mdcsrealtime_equityderivatives_exture_v2_018.date_to_end_exercising.dissect(buffer, index, packet, parent)

  -- Record Date Of Dividend Payout: String
  index, record_date_of_dividend_payout = koscom_mdcsrealtime_equityderivatives_exture_v2_018.record_date_of_dividend_payout.dissect(buffer, index, packet, parent)

  -- Exercise Ratio: Double
  index, exercise_ratio = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_ratio.dissect(buffer, index, packet, parent)

  -- Yield To Maturity: Double
  index, yield_to_maturity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yield_to_maturity.dissect(buffer, index, packet, parent)

  -- Corporate Bonds Related To Securities Exercise Price: Double
  index, corporate_bonds_related_to_securities_exercise_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Baby Bonds Type Code: String
  index, baby_bonds_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.baby_bonds_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corporate Bonds Reference Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.corporate_bonds_reference_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Event Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message = {}

-- Size: Issue Event Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Issue Event Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Event Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Event Type Code: String
  index, event_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_type_code.dissect(buffer, index, packet, parent)

  -- Event Reason Code: String
  index, event_reason_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_reason_code.dissect(buffer, index, packet, parent)

  -- Event Start Date: String
  index, event_start_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_start_date.dissect(buffer, index, packet, parent)

  -- Event End Date: String
  index, event_end_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.event_end_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Event Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.issue_event_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message = {}

-- Size: Repo Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Repo Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Market Value: Double
  index, market_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.repo_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message = {}

-- Size: Bonds Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Bonds Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Retail Bond Type Code: String
  index, retail_bond_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bond_type_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Bond Listing Type Code: String
  index, bond_listing_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_listing_type_code.dissect(buffer, index, packet, parent)

  -- Bond Category Code: String
  index, bond_category_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_category_code.dissect(buffer, index, packet, parent)

  -- Bond Guaranteed Type Code: String
  index, bond_guaranteed_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_guaranteed_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 2: String
  index, coupon_payment_type_code_string_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_2.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Issue Date: String
  index, issue_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_date.dissect(buffer, index, packet, parent)

  -- Redemption Date: String
  index, redemption_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_date.dissect(buffer, index, packet, parent)

  -- Sale Date: String
  index, sale_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.sale_date.dissect(buffer, index, packet, parent)

  -- Bond Issuance Rate: Double
  index, bond_issuance_rate = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_issuance_rate.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Double
  index, coupon_rate = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_rate.dissect(buffer, index, packet, parent)

  -- Monthly Cycle Of Coupon Payment: Int
  index, monthly_cycle_of_coupon_payment = koscom_mdcsrealtime_equityderivatives_exture_v2_018.monthly_cycle_of_coupon_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 1: String
  index, coupon_payment_type_code_string_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_type_code_string_1.dissect(buffer, index, packet, parent)

  -- Interest Payment: String
  index, interest_payment = koscom_mdcsrealtime_equityderivatives_exture_v2_018.interest_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date Type Code: String
  index, coupon_payment_date_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.coupon_payment_date_type_code.dissect(buffer, index, packet, parent)

  -- Decimal Point Of Coupon Type Code: String
  index, decimal_point_of_coupon_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.decimal_point_of_coupon_type_code.dissect(buffer, index, packet, parent)

  -- Pre Issue Sale Coupon Payment Type Code: String
  index, pre_issue_sale_coupon_payment_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_issue_sale_coupon_payment_type_code.dissect(buffer, index, packet, parent)

  -- Issuing Amount: FLOAT128
  index, issuing_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_amount.dissect(buffer, index, packet, parent)

  -- Listed Amount: FLOAT128
  index, listed_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listed_amount.dissect(buffer, index, packet, parent)

  -- Redemption Ratio At Maturity: Double
  index, redemption_ratio_at_maturity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.redemption_ratio_at_maturity.dissect(buffer, index, packet, parent)

  -- Amortization Type Code: String
  index, amortization_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.amortization_type_code.dissect(buffer, index, packet, parent)

  -- Number Of Months For Grace: Int
  index, number_of_months_for_grace = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_months_for_grace.dissect(buffer, index, packet, parent)

  -- Number Of Amortization: Int
  index, number_of_amortization = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_amortization.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Prior Coupon Payment Date: String
  index, prior_coupon_payment_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.prior_coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Next Coupon Payment Date: String
  index, next_coupon_payment_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.next_coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Perpetual Bond Maturity Structure Status: String
  index, perpetual_bond_maturity_structure_status = koscom_mdcsrealtime_equityderivatives_exture_v2_018.perpetual_bond_maturity_structure_status.dissect(buffer, index, packet, parent)

  -- Strip Bond Type Code: String
  index, strip_bond_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.strip_bond_type_code.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Liquidation Trade: String
  index, liquidation_trade = koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.dissect(buffer, index, packet, parent)

  -- Investment Caution Bond Type Code: String
  index, investment_caution_bond_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_bond_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bonds_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Dividend Yield Per Industry Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message = {}

-- Size: Securities Dividend Yield Per Industry Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Dividend Yield Per Industry Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Dividend Yield Per Industry Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Dividend Yield: Double
  index, dividend_yield = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_3.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Dividend Yield Per Industry Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_dividend_yield_per_industry_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Equity Index Indicator Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message = {}

-- Size: Securities Equity Index Indicator Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Equity Index Indicator Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Equity Index Indicator Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.dissect(buffer, index, packet, parent)

  -- Eps Calculation: String
  index, eps_calculation = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps_calculation.dissect(buffer, index, packet, parent)

  -- Eps: FLOAT128
  index, eps = koscom_mdcsrealtime_equityderivatives_exture_v2_018.eps.dissect(buffer, index, packet, parent)

  -- Loss Category: String
  index, loss_category = koscom_mdcsrealtime_equityderivatives_exture_v2_018.loss_category.dissect(buffer, index, packet, parent)

  -- Per: Double
  index, per = koscom_mdcsrealtime_equityderivatives_exture_v2_018.per.dissect(buffer, index, packet, parent)

  -- Bps Calculation: String
  index, bps_calculation = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps_calculation.dissect(buffer, index, packet, parent)

  -- Bps: FLOAT128
  index, bps = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bps.dissect(buffer, index, packet, parent)

  -- Pbr: Double
  index, pbr = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pbr.dissect(buffer, index, packet, parent)

  -- Dps Calculation: String
  index, dps_calculation = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps_calculation.dissect(buffer, index, packet, parent)

  -- Dps: FLOAT128
  index, dps = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dps.dissect(buffer, index, packet, parent)

  -- Dividend Yield: Double
  index, dividend_yield = koscom_mdcsrealtime_equityderivatives_exture_v2_018.dividend_yield.dissect(buffer, index, packet, parent)

  -- Market Capitalization Type Code: String
  index, market_capitalization_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_type_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_1.dissect(buffer, index, packet, parent)

  -- Index Classification Level 1: String
  index, index_classification_level_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_1.dissect(buffer, index, packet, parent)

  -- Index Classification Level 2: String
  index, index_classification_level_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_2.dissect(buffer, index, packet, parent)

  -- Index Classification Level 3: String
  index, index_classification_level_3 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_classification_level_3.dissect(buffer, index, packet, parent)

  -- Kospi 200 Sector Code 1: String
  index, kospi_200_sector_code_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_1.dissect(buffer, index, packet, parent)

  -- Kospi 200 Sector Code 2: String
  index, kospi_200_sector_code_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_sector_code_2.dissect(buffer, index, packet, parent)

  -- Kospi: String
  index, kospi = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi.dissect(buffer, index, packet, parent)

  -- Kosdaq: String
  index, kosdaq = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq.dissect(buffer, index, packet, parent)

  -- Kospi 100: String
  index, kospi_100 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_100.dissect(buffer, index, packet, parent)

  -- Kospi 50: String
  index, kospi_50 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_50.dissect(buffer, index, packet, parent)

  -- Kosdaq 150: String
  index, kosdaq_150 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kosdaq_150.dissect(buffer, index, packet, parent)

  -- Krx 100: String
  index, krx_100 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_100.dissect(buffer, index, packet, parent)

  -- Krx 300: String
  index, krx_300 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_300.dissect(buffer, index, packet, parent)

  -- Kospi 200 High Dividend Yield Index: String
  index, kospi_200_high_dividend_yield_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.kospi_200_high_dividend_yield_index.dissect(buffer, index, packet, parent)

  -- Krx Bbig Index: String
  index, krx_bbig_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bbig_index.dissect(buffer, index, packet, parent)

  -- Krx Secondary Battery Top 10 Index: String
  index, krx_secondary_battery_top_10_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_secondary_battery_top_10_index.dissect(buffer, index, packet, parent)

  -- Krx Bio Top 10 Index: String
  index, krx_bio_top_10_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_bio_top_10_index.dissect(buffer, index, packet, parent)

  -- Korea Valueup Index: String
  index, korea_valueup_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_valueup_index.dissect(buffer, index, packet, parent)

  -- Filler 8: String
  index, filler_8 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_8.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Equity Index Indicator Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_equity_index_indicator_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Treasury Stocks Batch Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message = {}

-- Size: Securities Treasury Stocks Batch Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Treasury Stocks Batch Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Treasury Stocks Batch Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Treasury Stock Report Id: String
  index, treasury_stock_report_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_report_id.dissect(buffer, index, packet, parent)

  -- Treasury Stock Ask Bid Type Code: String
  index, treasury_stock_ask_bid_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Treasury Stock Application Date: String
  index, treasury_stock_application_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_application_date.dissect(buffer, index, packet, parent)

  -- Treasury Stock Trading Start Date: String
  index, treasury_stock_trading_start_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_start_date.dissect(buffer, index, packet, parent)

  -- Treasury Stock Trading End Date: String
  index, treasury_stock_trading_end_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.treasury_stock_trading_end_date.dissect(buffer, index, packet, parent)

  -- Trearsury Stock Trading Method Type Code: String
  index, trearsury_stock_trading_method_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trearsury_stock_trading_method_type_code.dissect(buffer, index, packet, parent)

  -- Market Participant Number: String
  index, market_participant_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.dissect(buffer, index, packet, parent)

  -- Buying Volume Open Single Price Session: Long
  index, buying_volume_open_single_price_session = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_open_single_price_session.dissect(buffer, index, packet, parent)

  -- Buying Volume Regular Session: Long
  index, buying_volume_regular_session = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_regular_session.dissect(buffer, index, packet, parent)

  -- Buying Volume Block Trading In Offhours Session: Long
  index, buying_volume_block_trading_in_offhours_session = koscom_mdcsrealtime_equityderivatives_exture_v2_018.buying_volume_block_trading_in_offhours_session.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Quantity: Long
  index, accumulated_trading_quantity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_quantity.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Treasury Stocks Batch Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_treasury_stocks_batch_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Member Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message = {}

-- Size: Securities Member Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Member Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Member Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Market Participant Number: String
  index, market_participant_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.dissect(buffer, index, packet, parent)

  -- Name Of A Market Participant In Kr: String
  index, name_of_a_market_participant_in_kr = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_kr.dissect(buffer, index, packet, parent)

  -- Name Of A Market Participant In En: String
  index, name_of_a_market_participant_in_en = koscom_mdcsrealtime_equityderivatives_exture_v2_018.name_of_a_market_participant_in_en.dissect(buffer, index, packet, parent)

  -- An Abbreviated Name Of A Market Participant In Kr: String
  index, an_abbreviated_name_of_a_market_participant_in_kr = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_abbreviated_name_of_a_market_participant_in_kr.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Member Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_member_information_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Mm Lp Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message = {}

-- Size: Securities Mm Lp Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Mm Lp Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Mm Lp Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Market Participant Number: String
  index, market_participant_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_participant_number.dissect(buffer, index, packet, parent)

  -- Lp Start Date: String
  index, lp_start_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_start_date.dissect(buffer, index, packet, parent)

  -- Lp End Date: String
  index, lp_end_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_end_date.dissect(buffer, index, packet, parent)

  -- Minimum Order Volume: Long
  index, minimum_order_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_volume.dissect(buffer, index, packet, parent)

  -- Maximum Volume Of Multiple Order: Long
  index, maximum_volume_of_multiple_order = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_volume_of_multiple_order.dissect(buffer, index, packet, parent)

  -- Bid Ask Spread Unit Code: String
  index, bid_ask_spread_unit_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bid_ask_spread_unit_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Bid Ask Spread: FLOAT128
  index, upper_limit_of_bid_ask_spread = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_of_bid_ask_spread.dissect(buffer, index, packet, parent)

  -- Spread Multiple For Market Holidays: Long
  index, spread_multiple_for_market_holidays = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spread_multiple_for_market_holidays.dissect(buffer, index, packet, parent)

  -- An Obligatory Time Interval To Place An Order: Int
  index, an_obligatory_time_interval_to_place_an_order = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_obligatory_time_interval_to_place_an_order.dissect(buffer, index, packet, parent)

  -- Minimum Ask Price: FLOAT128
  index, minimum_ask_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_ask_price.dissect(buffer, index, packet, parent)

  -- Maximum Bid Price: FLOAT128
  index, maximum_bid_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_bid_price.dissect(buffer, index, packet, parent)

  -- Minimum Order Price: FLOAT128
  index, minimum_order_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.minimum_order_price.dissect(buffer, index, packet, parent)

  -- Maximum Order Price: FLOAT128
  index, maximum_order_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maximum_order_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Mm Lp Information Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_mm_lp_information_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Closing Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message = {}

-- Size: Securities Closing Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Closing Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Closing Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Closing Date: String
  index, closing_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Closing Date Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_closing_date_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Equities Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message = {}

-- Size: Securities Equities Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Securities Equities Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Equities Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Group Number: String
  index, group_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_number.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.security_group_id.dissect(buffer, index, packet, parent)

  -- Discrete Time Trading: String
  index, discrete_time_trading = koscom_mdcsrealtime_equityderivatives_exture_v2_018.discrete_time_trading.dissect(buffer, index, packet, parent)

  -- Rights Type Code: String
  index, rights_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rights_type_code.dissect(buffer, index, packet, parent)

  -- Par Value Type Code: String
  index, par_value_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value_type_code.dissect(buffer, index, packet, parent)

  -- An Issue Of Which Base Price Is Settled With A Todays Single Price: String
  index, an_issue_of_which_base_price_is_settled_with_a_todays_single_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect(buffer, index, packet, parent)

  -- Reevaluation Reason Code: String
  index, reevaluation_reason_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reevaluation_reason_code.dissect(buffer, index, packet, parent)

  -- Base Price Change: String
  index, base_price_change = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price_change.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Market Alert: String
  index, market_alert = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert.dissect(buffer, index, packet, parent)

  -- Market Alert Type Code: String
  index, market_alert_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_alert_type_code.dissect(buffer, index, packet, parent)

  -- Korea Corporate Governance Stock Price Index Kogi: String
  index, korea_corporate_governance_stock_price_index_kogi = koscom_mdcsrealtime_equityderivatives_exture_v2_018.korea_corporate_governance_stock_price_index_kogi.dissect(buffer, index, packet, parent)

  -- Issue For Administration: String
  index, issue_for_administration = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_for_administration.dissect(buffer, index, packet, parent)

  -- Unfaithful Disclosure: String
  index, unfaithful_disclosure = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unfaithful_disclosure.dissect(buffer, index, packet, parent)

  -- Backdoor Listing: String
  index, backdoor_listing = koscom_mdcsrealtime_equityderivatives_exture_v2_018.backdoor_listing.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Industry Id: String
  index, industry_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.industry_id.dissect(buffer, index, packet, parent)

  -- Small Medium Sized Business: String
  index, small_medium_sized_business = koscom_mdcsrealtime_equityderivatives_exture_v2_018.small_medium_sized_business.dissect(buffer, index, packet, parent)

  -- Section Type Code: String
  index, section_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.section_type_code.dissect(buffer, index, packet, parent)

  -- Investment Institution Type Code: String
  index, investment_institution_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_institution_type_code.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Amount: Long
  index, yesterdays_accumulated_trading_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_amount.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Value: FLOAT128
  index, yesterdays_accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.yesterdays_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_equityderivatives_exture_v2_018.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Par Value: Double
  index, par_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.par_value.dissect(buffer, index, packet, parent)

  -- Issuing Price: Double
  index, issuing_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issuing_price.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Number Of Listed Shares: Long
  index, number_of_listed_shares = koscom_mdcsrealtime_equityderivatives_exture_v2_018.number_of_listed_shares.dissect(buffer, index, packet, parent)

  -- Liquidation Trade: String
  index, liquidation_trade = koscom_mdcsrealtime_equityderivatives_exture_v2_018.liquidation_trade.dissect(buffer, index, packet, parent)

  -- The Establishment Date: String
  index, the_establishment_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_establishment_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: String
  index, maturity_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_date.dissect(buffer, index, packet, parent)

  -- Exercising Period: String
  index, exercising_period = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercising_period.dissect(buffer, index, packet, parent)

  -- Expiration Date For Right: String
  index, expiration_date_for_right = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date_for_right.dissect(buffer, index, packet, parent)

  -- Exercise Price Of Elw Or Bw: Double
  index, exercise_price_of_elw_or_bw = koscom_mdcsrealtime_equityderivatives_exture_v2_018.exercise_price_of_elw_or_bw.dissect(buffer, index, packet, parent)

  -- Capital: FLOAT128
  index, capital = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital.dissect(buffer, index, packet, parent)

  -- Credit Order Possibillity: String
  index, credit_order_possibillity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.credit_order_possibillity.dissect(buffer, index, packet, parent)

  -- Limit Order Permission Type Code: Int
  index, limit_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.limit_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Market Price Order Permission Type Code: Int
  index, market_price_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Conditioned Order Permission Type Code: Int
  index, conditioned_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.conditioned_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Best Favorable Order Permission Type Code: Int
  index, best_favorable_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.best_favorable_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- First Best Order Permission Type Code: Int
  index, first_best_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.first_best_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Mid Price Order Permission Type Code: Int
  index, mid_price_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.mid_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Stop Limit Price Order Permission Type Code: Int
  index, stop_limit_price_order_permission_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.stop_limit_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Capital Increase Type Code: String
  index, capital_increase_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.capital_increase_type_code.dissect(buffer, index, packet, parent)

  -- Other Stock Type Code: String
  index, other_stock_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.other_stock_type_code.dissect(buffer, index, packet, parent)

  -- National Stock: String
  index, national_stock = koscom_mdcsrealtime_equityderivatives_exture_v2_018.national_stock.dissect(buffer, index, packet, parent)

  -- Appraised Price: Double
  index, appraised_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraised_price.dissect(buffer, index, packet, parent)

  -- Lowest Order Price: Double
  index, lowest_order_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lowest_order_price.dissect(buffer, index, packet, parent)

  -- Highest Order Price: Double
  index, highest_order_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.highest_order_price.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = koscom_mdcsrealtime_equityderivatives_exture_v2_018.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Lot Size Afterhours Trading: Long
  index, lot_size_afterhours_trading = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lot_size_afterhours_trading.dissect(buffer, index, packet, parent)

  -- Rei Ts Type Code: String
  index, rei_ts_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.rei_ts_type_code.dissect(buffer, index, packet, parent)

  -- Target Stock Isin Code: String
  index, target_stock_isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.target_stock_isin_code.dissect(buffer, index, packet, parent)

  -- Currency Iso Code: String
  index, currency_iso_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_iso_code.dissect(buffer, index, packet, parent)

  -- Country Code: String
  index, country_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.country_code.dissect(buffer, index, packet, parent)

  -- Market Making Possibility: String
  index, market_making_possibility = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_making_possibility.dissect(buffer, index, packet, parent)

  -- Closing Price Trading Possibility In The After Hours: String
  index, closing_price_trading_possibility_in_the_after_hours = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_possibility_in_the_after_hours.dissect(buffer, index, packet, parent)

  -- Closing Price Trading In The Preopening Market: String
  index, closing_price_trading_in_the_preopening_market = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_trading_in_the_preopening_market.dissect(buffer, index, packet, parent)

  -- Block Trading In The Preopening Market: String
  index, block_trading_in_the_preopening_market = koscom_mdcsrealtime_equityderivatives_exture_v2_018.block_trading_in_the_preopening_market.dissect(buffer, index, packet, parent)

  -- Basket Trading In The Preopening Market: String
  index, basket_trading_in_the_preopening_market = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basket_trading_in_the_preopening_market.dissect(buffer, index, packet, parent)

  -- Announcement Of Estimated Trading Price: String
  index, announcement_of_estimated_trading_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.announcement_of_estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Short Selling: String
  index, short_selling = koscom_mdcsrealtime_equityderivatives_exture_v2_018.short_selling.dissect(buffer, index, packet, parent)

  -- Etf Tracking Difference: Double
  index, etf_tracking_difference = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_tracking_difference.dissect(buffer, index, packet, parent)

  -- Regs: String
  index, regs = koscom_mdcsrealtime_equityderivatives_exture_v2_018.regs.dissect(buffer, index, packet, parent)

  -- Spac: String
  index, spac = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac.dissect(buffer, index, packet, parent)

  -- Tax Type Code: String
  index, tax_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tax_type_code.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- Investment Caution Issue: String
  index, investment_caution_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_caution_issue.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.delisting_date.dissect(buffer, index, packet, parent)

  -- Shortterm Overheat Issue Type Code: String
  index, shortterm_overheat_issue_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.shortterm_overheat_issue_type_code.dissect(buffer, index, packet, parent)

  -- Etf Replication Methods Type Code: String
  index, etf_replication_methods_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etf_replication_methods_type_code.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.expiration_date.dissect(buffer, index, packet, parent)

  -- Distribution Type Code: String
  index, distribution_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.distribution_type_code.dissect(buffer, index, packet, parent)

  -- Calculation Of Redemption Price Start Date: String
  index, calculation_of_redemption_price_start_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_start_date.dissect(buffer, index, packet, parent)

  -- Calculation Of Redemption Price End Date: String
  index, calculation_of_redemption_price_end_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_of_redemption_price_end_date.dissect(buffer, index, packet, parent)

  -- Etp Product Type Code: String
  index, etp_product_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.etp_product_type_code.dissect(buffer, index, packet, parent)

  -- Index Calculation Institution Type Code: String
  index, index_calculation_institution_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_calculation_institution_type_code.dissect(buffer, index, packet, parent)

  -- Index Market Classification Id: String
  index, index_market_classification_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_classification_id.dissect(buffer, index, packet, parent)

  -- Index Sequence Number: String
  index, index_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_sequence_number.dissect(buffer, index, packet, parent)

  -- Tracking Index Leverage Inverse Type Code: String
  index, tracking_index_leverage_inverse_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.tracking_index_leverage_inverse_type_code.dissect(buffer, index, packet, parent)

  -- Reference Index Leverage Inverse Type Code: String
  index, reference_index_leverage_inverse_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reference_index_leverage_inverse_type_code.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 1: String
  index, index_asset_classification_id_1 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_1.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 2: String
  index, index_asset_classification_id_2 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_asset_classification_id_2.dissect(buffer, index, packet, parent)

  -- Ipo Underwriter Member Number: String
  index, ipo_underwriter_member_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.ipo_underwriter_member_number.dissect(buffer, index, packet, parent)

  -- Lp Order: String
  index, lp_order = koscom_mdcsrealtime_equityderivatives_exture_v2_018.lp_order.dissect(buffer, index, packet, parent)

  -- Low Liquidity: String
  index, low_liquidity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.low_liquidity.dissect(buffer, index, packet, parent)

  -- Abnormal Rise: String
  index, abnormal_rise = koscom_mdcsrealtime_equityderivatives_exture_v2_018.abnormal_rise.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity: FLOAT128
  index, upper_limit_quantity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.upper_limit_quantity.dissect(buffer, index, packet, parent)

  -- Investment Precaution Issue: String
  index, investment_precaution_issue = koscom_mdcsrealtime_equityderivatives_exture_v2_018.investment_precaution_issue.dissect(buffer, index, packet, parent)

  -- Preferred Stocks With Lesser Shares: String
  index, preferred_stocks_with_lesser_shares = koscom_mdcsrealtime_equityderivatives_exture_v2_018.preferred_stocks_with_lesser_shares.dissect(buffer, index, packet, parent)

  -- Spac Merger: String
  index, spac_merger = koscom_mdcsrealtime_equityderivatives_exture_v2_018.spac_merger.dissect(buffer, index, packet, parent)

  -- Segment Type Code: String
  index, segment_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.segment_type_code.dissect(buffer, index, packet, parent)

  -- After Market Possibility: String
  index, after_market_possibility = koscom_mdcsrealtime_equityderivatives_exture_v2_018.after_market_possibility.dissect(buffer, index, packet, parent)

  -- Pre Market Possibility: String
  index, pre_market_possibility = koscom_mdcsrealtime_equityderivatives_exture_v2_018.pre_market_possibility.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Equities Batch Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.securities_equities_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message = {}

-- Size: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Derivatives Underlying Snapshot Kosdaq Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message = {}

-- Size: Equity Derivatives Underlying Snapshot Kosdaq Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Equity Derivatives Underlying Snapshot Kosdaq Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Derivatives Underlying Snapshot Kosdaq Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Derivatives Underlying Snapshot Kosdaq Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kosdaq_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Derivatives Underlying Snapshot Kospi Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message = {}

-- Size: Equity Derivatives Underlying Snapshot Kospi Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Equity Derivatives Underlying Snapshot Kospi Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Derivatives Underlying Snapshot Kospi Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_equityderivatives_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_equityderivatives_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = koscom_mdcsrealtime_equityderivatives_exture_v2_018.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Derivatives Underlying Snapshot Kospi Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.equity_derivatives_underlying_snapshot_kospi_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Float 12816: FLOAT128
  index, market_price_index_float_12816 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Float 12816: FLOAT128
  index, zero_re_investment_index_float_12816 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Float 12816: FLOAT128
  index, call_re_investment_index_float_12816 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_equityderivatives_exture_v2_018.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_equityderivatives_exture_v2_018.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Double 11: Double
  index, clean_price_index_double_11 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Market Price Index Double 11: Double
  index, market_price_index_double_11 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.market_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Double 11: Double
  index, call_re_investment_index_double_11 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.call_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Double 11: Double
  index, zero_re_investment_index_double_11 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.zero_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_equityderivatives_exture_v2_018.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_equityderivatives_exture_v2_018.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_equityderivatives_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_equityderivatives_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_equityderivatives_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_equityderivatives_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_equityderivatives_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_equityderivatives_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.size =
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.size + 
  koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_equityderivatives_exture_v2_018.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_equityderivatives_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_equityderivatives_exture_v2_018.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_equityderivatives_exture_v2_018.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Polling Data Message
  if message_code == "I2000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Index Message
  if message_code == "IA000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Estimated Index Message
  if message_code == "IB000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.krx_estimated_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Index Message
  if message_code == "J2000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.global_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Prime Index Message
  if message_code == "J4000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_prime_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Message
  if message_code == "K1000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Term Structure Message
  if message_code == "K8000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_ktb_index_term_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Index Krx Message
  if message_code == "IG000" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bond_index_krx_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kospi Message
  if message_code == "B201S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kosdaq Message
  if message_code == "B201Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kosdaq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
  if message_code == "B202S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
  if message_code == "B203S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
  if message_code == "B204S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Underlying Snapshot Kospi Mm Lp Included Message
  if message_code == "B205S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.equity_derivatives_underlying_snapshot_kospi_mm_lp_included_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A001S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A002S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A003S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A004S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A005S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A001Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equities Batch Data Message
  if message_code == "A001X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equities_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I501S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I503S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I504S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I505S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I501Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Closing Date Message
  if message_code == "I501X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_closing_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I701S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I702S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I703S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I704S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I705S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I701Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Mm Lp Information Message
  if message_code == "I701X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_mm_lp_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Member Information Message
  if message_code == "M900S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Member Information Message
  if message_code == "M900Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Member Information Message
  if message_code == "M900X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_member_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Batch Message
  if message_code == "A901S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Batch Message
  if message_code == "A901Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Treasury Stocks Batch Message
  if message_code == "A901X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_treasury_stocks_batch_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equity Index Indicator Message
  if message_code == "CA01S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Equity Index Indicator Message
  if message_code == "CA01Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_equity_index_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Dividend Yield Per Industry Message
  if message_code == "P200S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Dividend Yield Per Industry Message
  if message_code == "P200Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.securities_dividend_yield_per_industry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Batch Data Message
  if message_code == "A001B" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.bonds_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Batch Data Message
  if message_code == "A001R" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I602S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I603S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I604S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I605S" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601Q" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601X" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601B" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601M" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601K" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601R" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corporate Bonds Reference Message
  if message_code == "F901B" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corporate Bonds Reference Message
  if message_code == "F901M" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.corporate_bonds_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regular Bonds Installment Repayment Date Message
  if message_code == "BN01B" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.regular_bonds_installment_repayment_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Classification Data Message
  if message_code == "CB01R" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_classification_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Trade Availability Per Term Message
  if message_code == "S001R" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.repo_trade_availability_per_term_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Bonds Type Code Message
  if message_code == "G300B" then
    return koscom_mdcsrealtime_equityderivatives_exture_v2_018.retail_bonds_type_code_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_equityderivatives_exture_v2_018.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_equityderivatives_exture_v2_018.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_equityderivatives_exture_v2_018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_equityderivatives_exture_v2_018.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 26 branches
    index = koscom_mdcsrealtime_equityderivatives_exture_v2_018.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.init()
end

-- Dissector for Koscom MdcsRealtime EquityDerivatives Exture 2.018
function omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018, buffer(), omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_equityderivatives_exture_v2_018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime EquityDerivatives Exture 2.018 (Udp)
local function omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_equityderivatives_exture_v2_018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018
  omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime EquityDerivatives Exture 2.018
omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018:register_heuristic("udp", omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018_udp_heuristic)

-- Register Koscom MdcsRealtime EquityDerivatives Exture 2.018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_equityderivatives_exture_v2_018)

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
