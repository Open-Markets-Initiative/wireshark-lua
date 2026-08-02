-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Commodities Exture 2.018 Protocol
local omi_koscom_mdcsrealtime_commodities_exture_v2_018 = Proto("Omi.Koscom.MdcsRealtime.Commodities.Exture.v2.018", "Koscom MdcsRealtime Commodities Exture 2.018")

-- Protocol table
local koscom_mdcsrealtime_commodities_exture_v2_018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Commodities Exture 2.018 Fields
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.commodities.exture.v2.018.adesignatednumberforanissue", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.a_representative_issue_to_calculate_base_price = ProtoField.new("A Representative Issue To Calculate Base Price", "koscom.mdcsrealtime.commodities.exture.v2.018.arepresentativeissuetocalculatebaseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.commodities.exture.v2.018.abbreviatedissuecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.018.abbreviatedissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.commodities.exture.v2.018.abbreviatedissuenameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.commodities.exture.v2.018.accumulatedcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.018.accumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = ProtoField.new("An Issue Of Which Base Price Is Settled With A Todays Single Price", "koscom.mdcsrealtime.commodities.exture.v2.018.anissueofwhichbasepriceissettledwithatodayssingleprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.appraisal_ratio_of_substitute_price = ProtoField.new("Appraisal Ratio Of Substitute Price", "koscom.mdcsrealtime.commodities.exture.v2.018.appraisalratioofsubstituteprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel10price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel6price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel7price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel8price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel9price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.asklevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_quote = ProtoField.new("Ask Quote", "koscom.mdcsrealtime.commodities.exture.v2.018.askquote", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_bid_volume = ProtoField.new("Auction Bid Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.auctionbidvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_price = ProtoField.new("Auction Price", "koscom.mdcsrealtime.commodities.exture.v2.018.auctionprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_volume = ProtoField.new("Auction Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.auctionvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.commodities.exture.v2.018.averageconvexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.commodities.exture.v2.018.averagecouponprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.commodities.exture.v2.018.averagecurrentyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.commodities.exture.v2.018.averageduration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.commodities.exture.v2.018.averageforwardytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.commodities.exture.v2.018.averageremainingmaturityprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.commodities.exture.v2.018.averagespread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.commodities.exture.v2.018.averagespreadsign", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.commodities.exture.v2.018.averageyld", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.commodities.exture.v2.018.averageytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.commodities.exture.v2.018.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.commodities.exture.v2.018.baseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.commodities.exture.v2.018.basetime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.commodities.exture.v2.018.basisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel10price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel6price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel7price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel8price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel9price", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.bidlevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_quote = ProtoField.new("Bid Quote", "koscom.mdcsrealtime.commodities.exture.v2.018.bidquote", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bidtocover_ratio = ProtoField.new("Bidtocover Ratio", "koscom.mdcsrealtime.commodities.exture.v2.018.bidtocoverratio", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.block_trading_lower_limit_price = ProtoField.new("Block Trading Lower Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.018.blocktradinglowerlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.block_trading_upper_limit_price = ProtoField.new("Block Trading Upper Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.018.blocktradingupperlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "koscom.mdcsrealtime.commodities.exture.v2.018.boardeventgroupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_event_id = ProtoField.new("Board Event Id", "koscom.mdcsrealtime.commodities.exture.v2.018.boardeventid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.commodities.exture.v2.018.boardid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.commodities.exture.v2.018.bondindexid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.commodities.exture.v2.018.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.commodities.exture.v2.018.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.commodities.exture.v2.018.calculatingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.commodities.exture.v2.018.calculationtime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_double_11 = ProtoField.new("Call Re Investment Index Double 11", "koscom.mdcsrealtime.commodities.exture.v2.018.callreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_float_12816 = ProtoField.new("Call Re Investment Index Float 12816", "koscom.mdcsrealtime.commodities.exture.v2.018.callreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.callreinvestmentindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.commodities.exture.v2.018.cashinflow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.change_from_previous_day = ProtoField.new("Change From Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.018.changefrompreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.change_from_previous_day_sign = ProtoField.new("Change From Previous Day Sign", "koscom.mdcsrealtime.commodities.exture.v2.018.changefrompreviousdaysign", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.commodities.exture.v2.018.cleanprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_double_11 = ProtoField.new("Clean Price Index Double 11", "koscom.mdcsrealtime.commodities.exture.v2.018.cleanpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_float_12816 = ProtoField.new("Clean Price Index Float 12816", "koscom.mdcsrealtime.commodities.exture.v2.018.cleanpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.cleanpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.commodities.exture.v2.018.closingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_base_price_of_buy_in = ProtoField.new("Closing Price Base Price Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.018.closingpricebasepriceofbuyin", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_lower_limit_of_buy_in = ProtoField.new("Closing Price Lower Limit Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.018.closingpricelowerlimitofbuyin", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.commodities.exture.v2.018.closingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_upper_limit_of_buy_in = ProtoField.new("Closing Price Upper Limit Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.018.closingpriceupperlimitofbuyin", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_weighted_stock_price_average = ProtoField.new("Closing Price Weighted Stock Price Average", "koscom.mdcsrealtime.commodities.exture.v2.018.closingpriceweightedstockpriceaverage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.conversion_basic_exchange_rate = ProtoField.new("Conversion Basic Exchange Rate", "koscom.mdcsrealtime.commodities.exture.v2.018.conversionbasicexchangerate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.commodities.exture.v2.018.convexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.commodities.exture.v2.018.currencycode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.current_price = ProtoField.new("Current Price", "koscom.mdcsrealtime.commodities.exture.v2.018.currentprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.commodities.exture.v2.018.currenttime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.data_type = ProtoField.new("Data Type", "koscom.mdcsrealtime.commodities.exture.v2.018.datatype", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.delisting_date = ProtoField.new("Delisting Date", "koscom.mdcsrealtime.commodities.exture.v2.018.delistingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.commodities.exture.v2.018.duration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.commodities.exture.v2.018.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.english_issue_name = ProtoField.new("English Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.018.englishissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "koscom.mdcsrealtime.commodities.exture.v2.018.estimatedtradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.estimatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "koscom.mdcsrealtime.commodities.exture.v2.018.expectedtimeofexpandingpricelimitrange", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.filler_11 = ProtoField.new("Filler 11", "koscom.mdcsrealtime.commodities.exture.v2.018.filler11", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.commodities.exture.v2.018.filler4", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "koscom.mdcsrealtime.commodities.exture.v2.018.finalaskbidtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.fluctuating_rate = ProtoField.new("Fluctuating Rate", "koscom.mdcsrealtime.commodities.exture.v2.018.fluctuatingrate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.commodities.exture.v2.018.futuresbasisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.commodities.exture.v2.018.groupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.high_price = ProtoField.new("High Price", "koscom.mdcsrealtime.commodities.exture.v2.018.highprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.commodities.exture.v2.018.index", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.018.indexchangeagainstthepreviousday", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.018.indexchangesignagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.commodities.exture.v2.018.indexconstituent", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.commodities.exture.v2.018.indexid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.commodities.exture.v2.018.indexmarketcapitalization", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.commodities.exture.v2.018.indexnumberofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.commodities.exture.v2.018.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "koscom.mdcsrealtime.commodities.exture.v2.018.isincodeofacommonstock", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issue_name = ProtoField.new("Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.018.issuename", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.commodities.exture.v2.018.issuedamount", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.issuedamountweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.job_code_symbol = ProtoField.new("Job Code Symbol", "koscom.mdcsrealtime.commodities.exture.v2.018.jobcodesymbol", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.commodities.exture.v2.018.listingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.low_price = ProtoField.new("Low Price", "koscom.mdcsrealtime.commodities.exture.v2.018.lowprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lower_limit_of_base_price = ProtoField.new("Lower Limit Of Base Price", "koscom.mdcsrealtime.commodities.exture.v2.018.lowerlimitofbaseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.018.lowerlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_1_volume = ProtoField.new("Lp Ask Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_10_volume = ProtoField.new("Lp Ask Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_2_volume = ProtoField.new("Lp Ask Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_3_volume = ProtoField.new("Lp Ask Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_4_volume = ProtoField.new("Lp Ask Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_5_volume = ProtoField.new("Lp Ask Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_6_volume = ProtoField.new("Lp Ask Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_7_volume = ProtoField.new("Lp Ask Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_8_volume = ProtoField.new("Lp Ask Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_9_volume = ProtoField.new("Lp Ask Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpasklevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_1_volume = ProtoField.new("Lp Bid Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_10_volume = ProtoField.new("Lp Bid Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_2_volume = ProtoField.new("Lp Bid Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_3_volume = ProtoField.new("Lp Bid Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_4_volume = ProtoField.new("Lp Bid Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_5_volume = ProtoField.new("Lp Bid Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_6_volume = ProtoField.new("Lp Bid Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_7_volume = ProtoField.new("Lp Bid Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_8_volume = ProtoField.new("Lp Bid Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_9_volume = ProtoField.new("Lp Bid Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.lpbidlevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_holding_quantity = ProtoField.new("Lp Holding Quantity", "koscom.mdcsrealtime.commodities.exture.v2.018.lpholdingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.marketcapitalizationweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_id = ProtoField.new("Market Id", "koscom.mdcsrealtime.commodities.exture.v2.018.marketid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.commodities.exture.v2.018.marketoperationproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_double_11 = ProtoField.new("Market Price Index Double 11", "koscom.mdcsrealtime.commodities.exture.v2.018.marketpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_float_12816 = ProtoField.new("Market Price Index Float 12816", "koscom.mdcsrealtime.commodities.exture.v2.018.marketpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.marketpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.commodities.exture.v2.018.maturitycode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.commodities.exture.v2.018.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.commodities.exture.v2.018.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_block_trade_trading_value = ProtoField.new("Negotiated Block Trade Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.018.negotiatedblocktradetradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_block_trade_trading_volume = ProtoField.new("Negotiated Block Trade Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.negotiatedblocktradetradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_trade_accumulated_trading_value = ProtoField.new("Negotiated Trade Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.018.negotiatedtradeaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_trade_accumulated_trading_volume = ProtoField.new("Negotiated Trade Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.negotiatedtradeaccumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.number_of_bidders = ProtoField.new("Number Of Bidders", "koscom.mdcsrealtime.commodities.exture.v2.018.numberofbidders", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.commodities.exture.v2.018.openingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.commodities.exture.v2.018.packet", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.previous_price = ProtoField.new("Previous Price", "koscom.mdcsrealtime.commodities.exture.v2.018.previousprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "koscom.mdcsrealtime.commodities.exture.v2.018.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "koscom.mdcsrealtime.commodities.exture.v2.018.processingtimeoftradingsystem", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.product_id = ProtoField.new("Product Id", "koscom.mdcsrealtime.commodities.exture.v2.018.productid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.random_end_trigger_code = ProtoField.new("Random End Trigger Code", "koscom.mdcsrealtime.commodities.exture.v2.018.randomendtriggercode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.commodities.exture.v2.018.reinvestcallcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.second_filler_11 = ProtoField.new("Second Filler 11", "koscom.mdcsrealtime.commodities.exture.v2.018.secondfiller11", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.security_group_id = ProtoField.new("Security Group Id", "koscom.mdcsrealtime.commodities.exture.v2.018.securitygroupid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.commodities.exture.v2.018.sessionid", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.session_start_end_code = ProtoField.new("Session Start End Code", "koscom.mdcsrealtime.commodities.exture.v2.018.sessionstartendcode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "koscom.mdcsrealtime.commodities.exture.v2.018.starttimeofaboardevent", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.step_applied = ProtoField.new("Step Applied", "koscom.mdcsrealtime.commodities.exture.v2.018.stepapplied", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.substitute_price_of_securities = ProtoField.new("Substitute Price Of Securities", "koscom.mdcsrealtime.commodities.exture.v2.018.substitutepriceofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.commodities.exture.v2.018.todayshigh", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.commodities.exture.v2.018.todayslow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_accumulated_trading_value = ProtoField.new("Total Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.018.totalaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_accumulated_trading_volume = ProtoField.new("Total Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.totalaccumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_ask_volume = ProtoField.new("Total Ask Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.totalaskvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_bid_volume = ProtoField.new("Total Bid Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.totalbidvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.commodities.exture.v2.018.totalearningsindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.totalearningsindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.commodities.exture.v2.018.totalnumberofinstrumentsofthecontract", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.commodities.exture.v2.018.totalprofitindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.commodities.exture.v2.018.tradingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.commodities.exture.v2.018.tradinghalt", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "koscom.mdcsrealtime.commodities.exture.v2.018.tradinghaltreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "koscom.mdcsrealtime.commodities.exture.v2.018.tradinghalttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.commodities.exture.v2.018.tradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_time = ProtoField.new("Trading Time", "koscom.mdcsrealtime.commodities.exture.v2.018.tradingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.018.tradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.commodities.exture.v2.018.transmissiontime", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.unit_of_volume_in_main_board = ProtoField.new("Unit Of Volume In Main Board", "koscom.mdcsrealtime.commodities.exture.v2.018.unitofvolumeinmainboard", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.upper_limit_of_base_price = ProtoField.new("Upper Limit Of Base Price", "koscom.mdcsrealtime.commodities.exture.v2.018.upperlimitofbaseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.018.upperlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.volume_in_the_bid_invitation = ProtoField.new("Volume In The Bid Invitation", "koscom.mdcsrealtime.commodities.exture.v2.018.volumeinthebidinvitation", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.weightofcleanindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.weightofsumindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.yesterdays_closing_price = ProtoField.new("Yesterdays Closing Price", "koscom.mdcsrealtime.commodities.exture.v2.018.yesterdaysclosingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.yesterdays_closing_price_type_code = ProtoField.new("Yesterdays Closing Price Type Code", "koscom.mdcsrealtime.commodities.exture.v2.018.yesterdaysclosingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_double_11 = ProtoField.new("Zero Re Investment Index Double 11", "koscom.mdcsrealtime.commodities.exture.v2.018.zeroreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_float_12816 = ProtoField.new("Zero Re Investment Index Float 12816", "koscom.mdcsrealtime.commodities.exture.v2.018.zeroreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.018.zeroreinvestmentindexweight", ftypes.STRING)

-- Koscom MdcsRealtime Exture Commodities 2.018 Application Messages
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.commodities.exture.v2.018.bondindexkrxmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.commodities.exture.v2.018.bondktbindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.commodities.exture.v2.018.bondktbindextermstructuremessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.commodities.exture.v2.018.bondprimeindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_auction_results_message = ProtoField.new("Emissions Auction Results Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsauctionresultsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_batch_data_message = ProtoField.new("Emissions Batch Data Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_determination_of_base_price_message = ProtoField.new("Emissions Determination Of Base Price Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsdeterminationofbasepricemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_issue_closing_message = ProtoField.new("Emissions Issue Closing Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsissueclosingmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_schedule_message = ProtoField.new("Emissions Market Operation Schedule Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsmarketoperationschedulemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_ts_message = ProtoField.new("Emissions Market Operation Ts Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsmarketoperationtsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_ts_plus_quote_message = ProtoField.new("Emissions Market Operation Ts Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsmarketoperationtsplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_negotiated_trade_message = ProtoField.new("Emissions Negotiated Trade Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsnegotiatedtrademessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_order_filled_message = ProtoField.new("Emissions Order Filled Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsorderfilledmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_order_filled_plus_quote_message = ProtoField.new("Emissions Order Filled Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsorderfilledplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_quote_message = ProtoField.new("Emissions Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionsquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_snapshot_message = ProtoField.new("Emissions Snapshot Message", "koscom.mdcsrealtime.commodities.exture.v2.018.emissionssnapshotmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.external_gold_spot_closing_price_message = ProtoField.new("External Gold Spot Closing Price Message", "koscom.mdcsrealtime.commodities.exture.v2.018.externalgoldspotclosingpricemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.commodities.exture.v2.018.globalindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.commodities.exture.v2.018.krxestimatedindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.commodities.exture.v2.018.krxindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.commodities.exture.v2.018.pollingdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_batch_data_message = ProtoField.new("Spot Gold Batch Data Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_issue_closing_message = ProtoField.new("Spot Gold Issue Closing Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldissueclosingmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_schedule_message = ProtoField.new("Spot Gold Market Operation Schedule Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldmarketoperationschedulemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_ts_message = ProtoField.new("Spot Gold Market Operation Ts Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldmarketoperationtsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_ts_plus_quote_message = ProtoField.new("Spot Gold Market Operation Ts Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldmarketoperationtsplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_negotiated_trade_message = ProtoField.new("Spot Gold Negotiated Trade Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldnegotiatedtrademessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_order_filled_message = ProtoField.new("Spot Gold Order Filled Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldorderfilledmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_order_filled_plus_quote_message = ProtoField.new("Spot Gold Order Filled Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldorderfilledplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_quote_message = ProtoField.new("Spot Gold Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_random_end_message = ProtoField.new("Spot Gold Random End Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldrandomendmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_snapshot_message = ProtoField.new("Spot Gold Snapshot Message", "koscom.mdcsrealtime.commodities.exture.v2.018.spotgoldsnapshotmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime Commodities Exture 2.018 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime Commodities Exture 2.018 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime Commodities Exture 2.018 Show Options
omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")


-- Handle changed preferences
function omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_commodities_exture_v2_018.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime Commodities Exture 2.018 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price = {}

-- Size: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.size = 12

-- Display: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.display = function(value)
  return "A Representative Issue To Calculate Base Price: "..value
end

-- Dissect: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.a_representative_issue_to_calculate_base_price, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.display = function(value)
  return "Accumulated Cash: "..value
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = {}

-- Size: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size = 1

-- Display: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display = function(value)
  return "An Issue Of Which Base Price Is Settled With A Todays Single Price: "..value
end

-- Dissect: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price, range, value, display)

  return offset + length, value
end

-- Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price = {}

-- Size: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.size = 13

-- Display: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.display = function(value)
  return "Appraisal Ratio Of Substitute Price: "..value
end

-- Dissect: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.appraisal_ratio_of_substitute_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price = {}

-- Size: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size = 12

-- Display: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price = {}

-- Size: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size = 11

-- Display: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.display = function(value)
  return "Ask Level 10 Price: "..value
end

-- Dissect: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size = 12

-- Display: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.display = function(value)
  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price = {}

-- Size: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size = 12

-- Display: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price = {}

-- Size: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size = 12

-- Display: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price = {}

-- Size: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size = 11

-- Display: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.display = function(value)
  return "Ask Level 4 Price: "..value
end

-- Dissect: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size = 12

-- Display: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.display = function(value)
  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price = {}

-- Size: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size = 11

-- Display: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.display = function(value)
  return "Ask Level 5 Price: "..value
end

-- Dissect: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size = 12

-- Display: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.display = function(value)
  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price = {}

-- Size: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size = 11

-- Display: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.display = function(value)
  return "Ask Level 6 Price: "..value
end

-- Dissect: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size = 12

-- Display: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.display = function(value)
  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price = {}

-- Size: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size = 11

-- Display: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.display = function(value)
  return "Ask Level 7 Price: "..value
end

-- Dissect: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size = 12

-- Display: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.display = function(value)
  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price = {}

-- Size: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size = 11

-- Display: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.display = function(value)
  return "Ask Level 8 Price: "..value
end

-- Dissect: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size = 12

-- Display: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.display = function(value)
  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price = {}

-- Size: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size = 11

-- Display: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.display = function(value)
  return "Ask Level 9 Price: "..value
end

-- Dissect: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size = 12

-- Display: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.display = function(value)
  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote = {}

-- Size: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.size = 9

-- Display: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.display = function(value)
  return "Ask Quote: "..value
end

-- Dissect: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.ask_quote, range, value, display)

  return offset + length, value
end

-- Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume = {}

-- Size: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.size = 12

-- Display: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.display = function(value)
  return "Auction Bid Volume: "..value
end

-- Dissect: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_bid_volume, range, value, display)

  return offset + length, value
end

-- Auction Price
koscom_mdcsrealtime_commodities_exture_v2_018.auction_price = {}

-- Size: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.size = 11

-- Display: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Dissect: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume = {}

-- Size: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.size = 12

-- Display: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.display = function(value)
  return "Auction Volume: "..value
end

-- Dissect: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.auction_volume, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.display = function(value)
  return "Average Convexity: "..value
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.display = function(value)
  return "Average Coupon Price: "..value
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.display = function(value)
  return "Average Current Yield: "..value
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_commodities_exture_v2_018.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.display = function(value)
  return "Average Duration: "..value
end

-- Dissect: Average Duration
koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.display = function(value)
  return "Average Forward Ytm: "..value
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.display = function(value)
  return "Average Remaining Maturity Price: "..value
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.display = function(value)
  return "Average Spread: "..value
end

-- Dissect: Average Spread
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_commodities_exture_v2_018.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.display = function(value)
  return "Average Yld: "..value
end

-- Dissect: Average Yld
koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.display = function(value)
  return "Average Ytm: "..value
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_commodities_exture_v2_018.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_commodities_exture_v2_018.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_commodities_exture_v2_018.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_commodities_exture_v2_018.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.base_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_commodities_exture_v2_018.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_commodities_exture_v2_018.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_commodities_exture_v2_018.base_time.display = function(value)
  return "Base Time: "..value
end

-- Dissect: Base Time
koscom_mdcsrealtime_commodities_exture_v2_018.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.display = function(value)
  return "Basis Price: "..value
end

-- Dissect: Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price = {}

-- Size: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size = 12

-- Display: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price = {}

-- Size: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size = 11

-- Display: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.display = function(value)
  return "Bid Level 10 Price: "..value
end

-- Dissect: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size = 12

-- Display: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.display = function(value)
  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price = {}

-- Size: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size = 12

-- Display: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price = {}

-- Size: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size = 12

-- Display: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price = {}

-- Size: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size = 11

-- Display: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.display = function(value)
  return "Bid Level 4 Price: "..value
end

-- Dissect: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size = 12

-- Display: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.display = function(value)
  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price = {}

-- Size: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size = 11

-- Display: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.display = function(value)
  return "Bid Level 5 Price: "..value
end

-- Dissect: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size = 12

-- Display: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.display = function(value)
  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price = {}

-- Size: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size = 11

-- Display: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.display = function(value)
  return "Bid Level 6 Price: "..value
end

-- Dissect: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size = 12

-- Display: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.display = function(value)
  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price = {}

-- Size: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size = 11

-- Display: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.display = function(value)
  return "Bid Level 7 Price: "..value
end

-- Dissect: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size = 12

-- Display: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.display = function(value)
  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price = {}

-- Size: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size = 11

-- Display: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.display = function(value)
  return "Bid Level 8 Price: "..value
end

-- Dissect: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size = 12

-- Display: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.display = function(value)
  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price = {}

-- Size: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size = 11

-- Display: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.display = function(value)
  return "Bid Level 9 Price: "..value
end

-- Dissect: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size = 12

-- Display: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.display = function(value)
  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote = {}

-- Size: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.size = 9

-- Display: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.display = function(value)
  return "Bid Quote: "..value
end

-- Dissect: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bid_quote, range, value, display)

  return offset + length, value
end

-- Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio = {}

-- Size: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.size = 11

-- Display: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.display = function(value)
  return "Bidtocover Ratio: "..value
end

-- Dissect: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bidtocover_ratio, range, value, display)

  return offset + length, value
end

-- Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price = {}

-- Size: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.size = 11

-- Display: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.display = function(value)
  return "Block Trading Lower Limit Price: "..value
end

-- Dissect: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.block_trading_lower_limit_price, range, value, display)

  return offset + length, value
end

-- Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price = {}

-- Size: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.size = 11

-- Display: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.display = function(value)
  return "Block Trading Upper Limit Price: "..value
end

-- Dissect: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.block_trading_upper_limit_price, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code = {}

-- Size: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size = 5

-- Display: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id = {}

-- Size: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size = 3

-- Display: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.board_id, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_commodities_exture_v2_018.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_commodities_exture_v2_018.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_commodities_exture_v2_018.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_commodities_exture_v2_018.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.display = function(value)
  return "Calculating Time: "..value
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.display = function(value)
  return "Calculation Time: "..value
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11 = {}

-- Size: Call Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.size = 11

-- Display: Call Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.display = function(value)
  return "Call Re Investment Index Double 11: "..value
end

-- Dissect: Call Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816 = {}

-- Size: Call Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.size = 16

-- Display: Call Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.display = function(value)
  return "Call Re Investment Index Float 12816: "..value
end

-- Dissect: Call Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.display = function(value)
  return "Call Re Investment Index Weight: "..value
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.display = function(value)
  return "Cash Inflow: "..value
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day = {}

-- Size: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.size = 9

-- Display: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.display = function(value)
  return "Change From Previous Day: "..value
end

-- Dissect: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.change_from_previous_day, range, value, display)

  return offset + length, value
end

-- Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign = {}

-- Size: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.size = 1

-- Display: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.display = function(value)
  return "Change From Previous Day Sign: "..value
end

-- Dissect: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.change_from_previous_day_sign, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.display = function(value)
  return "Clean Price: "..value
end

-- Dissect: Clean Price
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11 = {}

-- Size: Clean Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.size = 11

-- Display: Clean Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.display = function(value)
  return "Clean Price Index Double 11: "..value
end

-- Dissect: Clean Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Clean Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816 = {}

-- Size: Clean Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.size = 16

-- Display: Clean Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.display = function(value)
  return "Clean Price Index Float 12816: "..value
end

-- Dissect: Clean Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.display = function(value)
  return "Clean Price Index Weight: "..value
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.size = 11

-- Display: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in = {}

-- Size: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.size = 11

-- Display: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.display = function(value)
  return "Closing Price Base Price Of Buy In: "..value
end

-- Dissect: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_base_price_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in = {}

-- Size: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.size = 11

-- Display: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.display = function(value)
  return "Closing Price Lower Limit Of Buy In: "..value
end

-- Dissect: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_lower_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in = {}

-- Size: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.size = 11

-- Display: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.display = function(value)
  return "Closing Price Upper Limit Of Buy In: "..value
end

-- Dissect: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_upper_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average = {}

-- Size: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.size = 11

-- Display: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.display = function(value)
  return "Closing Price Weighted Stock Price Average: "..value
end

-- Dissect: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.closing_price_weighted_stock_price_average, range, value, display)

  return offset + length, value
end

-- Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate = {}

-- Size: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.size = 9

-- Display: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.display = function(value)
  return "Conversion Basic Exchange Rate: "..value
end

-- Dissect: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.conversion_basic_exchange_rate, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.convexity.display = function(value)
  return "Convexity: "..value
end

-- Dissect: Convexity
koscom_mdcsrealtime_commodities_exture_v2_018.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.convexity, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_commodities_exture_v2_018.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.size = 6

-- Display: Currency Code
koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Current Price
koscom_mdcsrealtime_commodities_exture_v2_018.current_price = {}

-- Size: Current Price
koscom_mdcsrealtime_commodities_exture_v2_018.current_price.size = 11

-- Display: Current Price
koscom_mdcsrealtime_commodities_exture_v2_018.current_price.display = function(value)
  return "Current Price: "..value
end

-- Dissect: Current Price
koscom_mdcsrealtime_commodities_exture_v2_018.current_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.current_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.current_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.current_price, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_commodities_exture_v2_018.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_commodities_exture_v2_018.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_commodities_exture_v2_018.current_time.display = function(value)
  return "Current Time: "..value
end

-- Dissect: Current Time
koscom_mdcsrealtime_commodities_exture_v2_018.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.current_time, range, value, display)

  return offset + length, value
end

-- Data Type
koscom_mdcsrealtime_commodities_exture_v2_018.data_type = {}

-- Size: Data Type
koscom_mdcsrealtime_commodities_exture_v2_018.data_type.size = 1

-- Display: Data Type
koscom_mdcsrealtime_commodities_exture_v2_018.data_type.display = function(value)
  return "Data Type: "..value
end

-- Dissect: Data Type
koscom_mdcsrealtime_commodities_exture_v2_018.data_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.data_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.data_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.data_type, range, value, display)

  return offset + length, value
end

-- Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date = {}

-- Size: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.size = 8

-- Display: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_commodities_exture_v2_018.duration = {}

-- Size: Duration
koscom_mdcsrealtime_commodities_exture_v2_018.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_commodities_exture_v2_018.duration.display = function(value)
  return "Duration: "..value
end

-- Dissect: Duration
koscom_mdcsrealtime_commodities_exture_v2_018.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name = {}

-- Size: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.size = 80

-- Display: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.display = function(value)
  return "English Issue Name: "..value
end

-- Dissect: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.english_issue_name, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price = {}

-- Size: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size = 11

-- Display: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.display = function(value)
  return "Estimated Trading Price: "..value
end

-- Dissect: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size = 12

-- Display: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.filler_11 = {}

-- Size: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.size = 11

-- Display: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.display = function(value)
  return "Filler 11: "..value
end

-- Dissect: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.filler_11, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_commodities_exture_v2_018.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.display = function(value)
  return "Final Ask Bid Type Code: "..value
end

-- Dissect: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate = {}

-- Size: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.size = 9

-- Display: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.display = function(value)
  return "Fluctuating Rate: "..value
end

-- Dissect: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.fluctuating_rate, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.display = function(value)
  return "Futures Basis Price: "..value
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_commodities_exture_v2_018.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.group_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.group_code, range, value, display)

  return offset + length, value
end

-- High Price
koscom_mdcsrealtime_commodities_exture_v2_018.high_price = {}

-- Size: High Price
koscom_mdcsrealtime_commodities_exture_v2_018.high_price.size = 9

-- Display: High Price
koscom_mdcsrealtime_commodities_exture_v2_018.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
koscom_mdcsrealtime_commodities_exture_v2_018.high_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.high_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_commodities_exture_v2_018.index = {}

-- Size: Index
koscom_mdcsrealtime_commodities_exture_v2_018.index.size = 9

-- Display: Index
koscom_mdcsrealtime_commodities_exture_v2_018.index.display = function(value)
  return "Index: "..value
end

-- Dissect: Index
koscom_mdcsrealtime_commodities_exture_v2_018.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.display = function(value)
  return "Index Change Against The Previous Day: "..value
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.display = function(value)
  if value == "0" then
    return "Index Constituent: Included In Etf Not In Index (0)"
  end
  if value == "1" then
    return "Index Constituent: Included In Index (1)"
  end

  return "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_commodities_exture_v2_018.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.issue_name = {}

-- Size: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.size = 80

-- Display: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.display = function(value)
  return "Issued Amount Weight: "..value
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol = {}

-- Size: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.size = 16

-- Display: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.display = function(value)
  return "Job Code Symbol: "..value
end

-- Dissect: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.job_code_symbol, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_commodities_exture_v2_018.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Low Price
koscom_mdcsrealtime_commodities_exture_v2_018.low_price = {}

-- Size: Low Price
koscom_mdcsrealtime_commodities_exture_v2_018.low_price.size = 9

-- Display: Low Price
koscom_mdcsrealtime_commodities_exture_v2_018.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
koscom_mdcsrealtime_commodities_exture_v2_018.low_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.low_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price = {}

-- Size: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.size = 11

-- Display: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.display = function(value)
  return "Lower Limit Of Base Price: "..value
end

-- Dissect: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lower_limit_of_base_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price = {}

-- Size: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.size = 11

-- Display: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.display = function(value)
  return "Lower Limit Price: "..value
end

-- Dissect: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume = {}

-- Size: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size = 12

-- Display: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.display = function(value)
  return "Lp Ask Level 1 Volume: "..value
end

-- Dissect: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume = {}

-- Size: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size = 12

-- Display: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.display = function(value)
  return "Lp Ask Level 10 Volume: "..value
end

-- Dissect: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume = {}

-- Size: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size = 12

-- Display: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.display = function(value)
  return "Lp Ask Level 2 Volume: "..value
end

-- Dissect: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume = {}

-- Size: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size = 12

-- Display: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.display = function(value)
  return "Lp Ask Level 3 Volume: "..value
end

-- Dissect: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume = {}

-- Size: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size = 12

-- Display: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.display = function(value)
  return "Lp Ask Level 4 Volume: "..value
end

-- Dissect: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume = {}

-- Size: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size = 12

-- Display: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.display = function(value)
  return "Lp Ask Level 5 Volume: "..value
end

-- Dissect: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume = {}

-- Size: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size = 12

-- Display: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.display = function(value)
  return "Lp Ask Level 6 Volume: "..value
end

-- Dissect: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume = {}

-- Size: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size = 12

-- Display: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.display = function(value)
  return "Lp Ask Level 7 Volume: "..value
end

-- Dissect: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume = {}

-- Size: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size = 12

-- Display: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.display = function(value)
  return "Lp Ask Level 8 Volume: "..value
end

-- Dissect: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume = {}

-- Size: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size = 12

-- Display: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.display = function(value)
  return "Lp Ask Level 9 Volume: "..value
end

-- Dissect: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume = {}

-- Size: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size = 12

-- Display: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.display = function(value)
  return "Lp Bid Level 1 Volume: "..value
end

-- Dissect: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume = {}

-- Size: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size = 12

-- Display: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.display = function(value)
  return "Lp Bid Level 10 Volume: "..value
end

-- Dissect: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume = {}

-- Size: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size = 12

-- Display: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.display = function(value)
  return "Lp Bid Level 2 Volume: "..value
end

-- Dissect: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume = {}

-- Size: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size = 12

-- Display: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.display = function(value)
  return "Lp Bid Level 3 Volume: "..value
end

-- Dissect: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume = {}

-- Size: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size = 12

-- Display: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.display = function(value)
  return "Lp Bid Level 4 Volume: "..value
end

-- Dissect: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume = {}

-- Size: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size = 12

-- Display: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.display = function(value)
  return "Lp Bid Level 5 Volume: "..value
end

-- Dissect: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume = {}

-- Size: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size = 12

-- Display: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.display = function(value)
  return "Lp Bid Level 6 Volume: "..value
end

-- Dissect: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume = {}

-- Size: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size = 12

-- Display: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.display = function(value)
  return "Lp Bid Level 7 Volume: "..value
end

-- Dissect: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume = {}

-- Size: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size = 12

-- Display: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.display = function(value)
  return "Lp Bid Level 8 Volume: "..value
end

-- Dissect: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume = {}

-- Size: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size = 12

-- Display: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.display = function(value)
  return "Lp Bid Level 9 Volume: "..value
end

-- Dissect: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity = {}

-- Size: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.size = 15

-- Display: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.display = function(value)
  return "Lp Holding Quantity: "..value
end

-- Dissect: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.lp_holding_quantity, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.display = function(value)
  return "Market Capitalization Weight: "..value
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_id = {}

-- Size: Market Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_id.size = 3

-- Display: Market Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11 = {}

-- Size: Market Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.size = 11

-- Display: Market Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.display = function(value)
  return "Market Price Index Double 11: "..value
end

-- Dissect: Market Price Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Market Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816 = {}

-- Size: Market Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.size = 16

-- Display: Market Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.display = function(value)
  return "Market Price Index Float 12816: "..value
end

-- Dissect: Market Price Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.display = function(value)
  return "Market Price Index Weight: "..value
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_commodities_exture_v2_018.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_commodities_exture_v2_018.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_commodities_exture_v2_018.message_code.display = function(value)
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
  if value == "B601G" then
    return "Message Code: Spot Gold Quote Message (B601G)"
  end
  if value == "A301G" then
    return "Message Code: Spot Gold Order Filled Message (A301G)"
  end
  if value == "G701G" then
    return "Message Code: Spot Gold Order Filled Plus Quote Message (G701G)"
  end
  if value == "R101G" then
    return "Message Code: Spot Gold Market Operation Ts Plus Quote Message (R101G)"
  end
  if value == "B201G" then
    return "Message Code: Spot Gold Snapshot Message (B201G)"
  end
  if value == "C401G" then
    return "Message Code: Spot Gold Negotiated Trade Message (C401G)"
  end
  if value == "B601E" then
    return "Message Code: Emissions Quote Message (B601E)"
  end
  if value == "A301E" then
    return "Message Code: Emissions Order Filled Message (A301E)"
  end
  if value == "G701E" then
    return "Message Code: Emissions Order Filled Plus Quote Message (G701E)"
  end
  if value == "R101E" then
    return "Message Code: Emissions Market Operation Ts Plus Quote Message (R101E)"
  end
  if value == "B201E" then
    return "Message Code: Emissions Snapshot Message (B201E)"
  end
  if value == "C401E" then
    return "Message Code: Emissions Negotiated Trade Message (C401E)"
  end
  if value == "A401E" then
    return "Message Code: Emissions Determination Of Base Price Message (A401E)"
  end
  if value == "AC01E" then
    return "Message Code: Emissions Auction Results Message (AC01E)"
  end
  if value == "A001G" then
    return "Message Code: Spot Gold Batch Data Message (A001G)"
  end
  if value == "A001E" then
    return "Message Code: Emissions Batch Data Message (A001E)"
  end
  if value == "M200G" then
    return "Message Code: External Gold Spot Closing Price Message (M200G)"
  end
  if value == "A701S" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701S)"
  end
  if value == "A702S" then
    return "Message Code: Spot Gold Market Operation Ts Message (A702S)"
  end
  if value == "A703S" then
    return "Message Code: Spot Gold Market Operation Ts Message (A703S)"
  end
  if value == "A704S" then
    return "Message Code: Spot Gold Market Operation Ts Message (A704S)"
  end
  if value == "A705S" then
    return "Message Code: Spot Gold Market Operation Ts Message (A705S)"
  end
  if value == "A701Q" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701Q)"
  end
  if value == "A701X" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701X)"
  end
  if value == "A701B" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701B)"
  end
  if value == "A701M" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701M)"
  end
  if value == "A701K" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701K)"
  end
  if value == "A701R" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701R)"
  end
  if value == "A701F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701F)"
  end
  if value == "A702F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A702F)"
  end
  if value == "A703F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A703F)"
  end
  if value == "A704F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A704F)"
  end
  if value == "A705F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A705F)"
  end
  if value == "A706F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A706F)"
  end
  if value == "A707F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A707F)"
  end
  if value == "A708F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A708F)"
  end
  if value == "A709F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A709F)"
  end
  if value == "A710F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A710F)"
  end
  if value == "A711F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A711F)"
  end
  if value == "A712F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A712F)"
  end
  if value == "A713F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A713F)"
  end
  if value == "A715F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A715F)"
  end
  if value == "A716F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A716F)"
  end
  if value == "A717F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A717F)"
  end
  if value == "A718F" then
    return "Message Code: Spot Gold Market Operation Ts Message (A718F)"
  end
  if value == "A701G" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701G)"
  end
  if value == "A701E" then
    return "Message Code: Spot Gold Market Operation Ts Message (A701E)"
  end
  if value == "A601S" then
    return "Message Code: Spot Gold Issue Closing Message (A601S)"
  end
  if value == "A602S" then
    return "Message Code: Spot Gold Issue Closing Message (A602S)"
  end
  if value == "A603S" then
    return "Message Code: Spot Gold Issue Closing Message (A603S)"
  end
  if value == "A604S" then
    return "Message Code: Spot Gold Issue Closing Message (A604S)"
  end
  if value == "A605S" then
    return "Message Code: Spot Gold Issue Closing Message (A605S)"
  end
  if value == "A601Q" then
    return "Message Code: Spot Gold Issue Closing Message (A601Q)"
  end
  if value == "A601X" then
    return "Message Code: Spot Gold Issue Closing Message (A601X)"
  end
  if value == "A601G" then
    return "Message Code: Spot Gold Issue Closing Message (A601G)"
  end
  if value == "A601E" then
    return "Message Code: Spot Gold Issue Closing Message (A601E)"
  end
  if value == "M401S" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401S)"
  end
  if value == "M402S" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M402S)"
  end
  if value == "M403S" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M403S)"
  end
  if value == "M404S" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M404S)"
  end
  if value == "M405S" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M405S)"
  end
  if value == "M401Q" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401Q)"
  end
  if value == "M401X" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401X)"
  end
  if value == "M401B" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401B)"
  end
  if value == "M401M" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401M)"
  end
  if value == "M401K" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401K)"
  end
  if value == "M401R" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401R)"
  end
  if value == "M401F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401F)"
  end
  if value == "M402F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M402F)"
  end
  if value == "M403F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M403F)"
  end
  if value == "M404F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M404F)"
  end
  if value == "M405F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M405F)"
  end
  if value == "M406F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M406F)"
  end
  if value == "M407F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M407F)"
  end
  if value == "M408F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M408F)"
  end
  if value == "M409F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M409F)"
  end
  if value == "M410F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M410F)"
  end
  if value == "M411F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M411F)"
  end
  if value == "M412F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M412F)"
  end
  if value == "M413F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M413F)"
  end
  if value == "M415F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M415F)"
  end
  if value == "M416F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M416F)"
  end
  if value == "M417F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M417F)"
  end
  if value == "M418F" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M418F)"
  end
  if value == "M401G" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401G)"
  end
  if value == "M401E" then
    return "Message Code: Spot Gold Market Operation Schedule Message (M401E)"
  end
  if value == "A701S" then
    return "Message Code: Emissions Market Operation Ts Message (A701S)"
  end
  if value == "A702S" then
    return "Message Code: Emissions Market Operation Ts Message (A702S)"
  end
  if value == "A703S" then
    return "Message Code: Emissions Market Operation Ts Message (A703S)"
  end
  if value == "A704S" then
    return "Message Code: Emissions Market Operation Ts Message (A704S)"
  end
  if value == "A705S" then
    return "Message Code: Emissions Market Operation Ts Message (A705S)"
  end
  if value == "A701Q" then
    return "Message Code: Emissions Market Operation Ts Message (A701Q)"
  end
  if value == "A701X" then
    return "Message Code: Emissions Market Operation Ts Message (A701X)"
  end
  if value == "A701B" then
    return "Message Code: Emissions Market Operation Ts Message (A701B)"
  end
  if value == "A701M" then
    return "Message Code: Emissions Market Operation Ts Message (A701M)"
  end
  if value == "A701K" then
    return "Message Code: Emissions Market Operation Ts Message (A701K)"
  end
  if value == "A701R" then
    return "Message Code: Emissions Market Operation Ts Message (A701R)"
  end
  if value == "A701F" then
    return "Message Code: Emissions Market Operation Ts Message (A701F)"
  end
  if value == "A702F" then
    return "Message Code: Emissions Market Operation Ts Message (A702F)"
  end
  if value == "A703F" then
    return "Message Code: Emissions Market Operation Ts Message (A703F)"
  end
  if value == "A704F" then
    return "Message Code: Emissions Market Operation Ts Message (A704F)"
  end
  if value == "A705F" then
    return "Message Code: Emissions Market Operation Ts Message (A705F)"
  end
  if value == "A706F" then
    return "Message Code: Emissions Market Operation Ts Message (A706F)"
  end
  if value == "A707F" then
    return "Message Code: Emissions Market Operation Ts Message (A707F)"
  end
  if value == "A708F" then
    return "Message Code: Emissions Market Operation Ts Message (A708F)"
  end
  if value == "A709F" then
    return "Message Code: Emissions Market Operation Ts Message (A709F)"
  end
  if value == "A710F" then
    return "Message Code: Emissions Market Operation Ts Message (A710F)"
  end
  if value == "A711F" then
    return "Message Code: Emissions Market Operation Ts Message (A711F)"
  end
  if value == "A712F" then
    return "Message Code: Emissions Market Operation Ts Message (A712F)"
  end
  if value == "A713F" then
    return "Message Code: Emissions Market Operation Ts Message (A713F)"
  end
  if value == "A715F" then
    return "Message Code: Emissions Market Operation Ts Message (A715F)"
  end
  if value == "A716F" then
    return "Message Code: Emissions Market Operation Ts Message (A716F)"
  end
  if value == "A717F" then
    return "Message Code: Emissions Market Operation Ts Message (A717F)"
  end
  if value == "A718F" then
    return "Message Code: Emissions Market Operation Ts Message (A718F)"
  end
  if value == "A701G" then
    return "Message Code: Emissions Market Operation Ts Message (A701G)"
  end
  if value == "A701E" then
    return "Message Code: Emissions Market Operation Ts Message (A701E)"
  end
  if value == "A601S" then
    return "Message Code: Emissions Issue Closing Message (A601S)"
  end
  if value == "A602S" then
    return "Message Code: Emissions Issue Closing Message (A602S)"
  end
  if value == "A603S" then
    return "Message Code: Emissions Issue Closing Message (A603S)"
  end
  if value == "A604S" then
    return "Message Code: Emissions Issue Closing Message (A604S)"
  end
  if value == "A605S" then
    return "Message Code: Emissions Issue Closing Message (A605S)"
  end
  if value == "A601Q" then
    return "Message Code: Emissions Issue Closing Message (A601Q)"
  end
  if value == "A601X" then
    return "Message Code: Emissions Issue Closing Message (A601X)"
  end
  if value == "A601G" then
    return "Message Code: Emissions Issue Closing Message (A601G)"
  end
  if value == "A601E" then
    return "Message Code: Emissions Issue Closing Message (A601E)"
  end
  if value == "M401S" then
    return "Message Code: Emissions Market Operation Schedule Message (M401S)"
  end
  if value == "M402S" then
    return "Message Code: Emissions Market Operation Schedule Message (M402S)"
  end
  if value == "M403S" then
    return "Message Code: Emissions Market Operation Schedule Message (M403S)"
  end
  if value == "M404S" then
    return "Message Code: Emissions Market Operation Schedule Message (M404S)"
  end
  if value == "M405S" then
    return "Message Code: Emissions Market Operation Schedule Message (M405S)"
  end
  if value == "M401Q" then
    return "Message Code: Emissions Market Operation Schedule Message (M401Q)"
  end
  if value == "M401X" then
    return "Message Code: Emissions Market Operation Schedule Message (M401X)"
  end
  if value == "M401B" then
    return "Message Code: Emissions Market Operation Schedule Message (M401B)"
  end
  if value == "M401M" then
    return "Message Code: Emissions Market Operation Schedule Message (M401M)"
  end
  if value == "M401K" then
    return "Message Code: Emissions Market Operation Schedule Message (M401K)"
  end
  if value == "M401R" then
    return "Message Code: Emissions Market Operation Schedule Message (M401R)"
  end
  if value == "M401F" then
    return "Message Code: Emissions Market Operation Schedule Message (M401F)"
  end
  if value == "M402F" then
    return "Message Code: Emissions Market Operation Schedule Message (M402F)"
  end
  if value == "M403F" then
    return "Message Code: Emissions Market Operation Schedule Message (M403F)"
  end
  if value == "M404F" then
    return "Message Code: Emissions Market Operation Schedule Message (M404F)"
  end
  if value == "M405F" then
    return "Message Code: Emissions Market Operation Schedule Message (M405F)"
  end
  if value == "M406F" then
    return "Message Code: Emissions Market Operation Schedule Message (M406F)"
  end
  if value == "M407F" then
    return "Message Code: Emissions Market Operation Schedule Message (M407F)"
  end
  if value == "M408F" then
    return "Message Code: Emissions Market Operation Schedule Message (M408F)"
  end
  if value == "M409F" then
    return "Message Code: Emissions Market Operation Schedule Message (M409F)"
  end
  if value == "M410F" then
    return "Message Code: Emissions Market Operation Schedule Message (M410F)"
  end
  if value == "M411F" then
    return "Message Code: Emissions Market Operation Schedule Message (M411F)"
  end
  if value == "M412F" then
    return "Message Code: Emissions Market Operation Schedule Message (M412F)"
  end
  if value == "M413F" then
    return "Message Code: Emissions Market Operation Schedule Message (M413F)"
  end
  if value == "M415F" then
    return "Message Code: Emissions Market Operation Schedule Message (M415F)"
  end
  if value == "M416F" then
    return "Message Code: Emissions Market Operation Schedule Message (M416F)"
  end
  if value == "M417F" then
    return "Message Code: Emissions Market Operation Schedule Message (M417F)"
  end
  if value == "M418F" then
    return "Message Code: Emissions Market Operation Schedule Message (M418F)"
  end
  if value == "M401G" then
    return "Message Code: Emissions Market Operation Schedule Message (M401G)"
  end
  if value == "M401E" then
    return "Message Code: Emissions Market Operation Schedule Message (M401E)"
  end
  if value == "A501X" then
    return "Message Code: Spot Gold Random End Message (A501X)"
  end
  if value == "A501G" then
    return "Message Code: Spot Gold Random End Message (A501G)"
  end

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_commodities_exture_v2_018.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value = {}

-- Size: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.size = 22

-- Display: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.display = function(value)
  return "Negotiated Block Trade Trading Value: "..value
end

-- Dissect: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_block_trade_trading_value, range, value, display)

  return offset + length, value
end

-- Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume = {}

-- Size: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.size = 12

-- Display: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.display = function(value)
  return "Negotiated Block Trade Trading Volume: "..value
end

-- Dissect: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_block_trade_trading_volume, range, value, display)

  return offset + length, value
end

-- Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value = {}

-- Size: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.size = 22

-- Display: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.display = function(value)
  return "Negotiated Trade Accumulated Trading Value: "..value
end

-- Dissect: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_trade_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume = {}

-- Size: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.size = 15

-- Display: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.display = function(value)
  return "Negotiated Trade Accumulated Trading Volume: "..value
end

-- Dissect: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.negotiated_trade_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders = {}

-- Size: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.size = 13

-- Display: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.display = function(value)
  return "Number Of Bidders: "..value
end

-- Dissect: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.number_of_bidders, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_commodities_exture_v2_018.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size = 9

-- Display: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Previous Price
koscom_mdcsrealtime_commodities_exture_v2_018.previous_price = {}

-- Size: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size = 11

-- Display: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Dissect: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.display = function(value)
  return "Processing Time Of Trading System: "..value
end

-- Dissect: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.product_id = {}

-- Size: Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.product_id.size = 11

-- Display: Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
koscom_mdcsrealtime_commodities_exture_v2_018.product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.product_id, range, value, display)

  return offset + length, value
end

-- Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code = {}

-- Size: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.size = 1

-- Display: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.display = function(value)
  return "Random End Trigger Code: "..value
end

-- Dissect: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.random_end_trigger_code, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.display = function(value)
  return "Reinvest Call Cash: "..value
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11 = {}

-- Size: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.size = 11

-- Display: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.display = function(value)
  return "Second Filler 11: "..value
end

-- Dissect: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.second_filler_11, range, value, display)

  return offset + length, value
end

-- Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id = {}

-- Size: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.size = 2

-- Display: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_commodities_exture_v2_018.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_commodities_exture_v2_018.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code = {}

-- Size: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.size = 2

-- Display: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
koscom_mdcsrealtime_commodities_exture_v2_018.step_applied = {}

-- Size: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.size = 2

-- Display: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities = {}

-- Size: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.size = 11

-- Display: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.display = function(value)
  return "Substitute Price Of Securities: "..value
end

-- Dissect: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.substitute_price_of_securities, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_commodities_exture_v2_018.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size = 11

-- Display: Todays High
koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_commodities_exture_v2_018.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size = 11

-- Display: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value = {}

-- Size: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.size = 22

-- Display: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.display = function(value)
  return "Total Accumulated Trading Value: "..value
end

-- Dissect: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume = {}

-- Size: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.size = 15

-- Display: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.display = function(value)
  return "Total Accumulated Trading Volume: "..value
end

-- Dissect: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume = {}

-- Size: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size = 12

-- Display: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.display = function(value)
  return "Total Ask Volume: "..value
end

-- Dissect: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_ask_volume, range, value, display)

  return offset + length, value
end

-- Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume = {}

-- Size: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size = 12

-- Display: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.display = function(value)
  return "Total Bid Volume: "..value
end

-- Dissect: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_bid_volume, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.display = function(value)
  return "Total Earnings Index: "..value
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.display = function(value)
  return "Total Earnings Index Weight: "..value
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.display = function(value)
  return "Total Profit Index: "..value
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_commodities_exture_v2_018.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.display = function(value)
  return "Trading Date: "..value
end

-- Dissect: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Time
koscom_mdcsrealtime_commodities_exture_v2_018.trading_time = {}

-- Size: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.size = 6

-- Display: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.display = function(value)
  return "Trading Time: "..value
end

-- Dissect: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_time, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size = 10

-- Display: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.display = function(value)
  return "Transmission Time: "..value
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board = {}

-- Size: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.size = 11

-- Display: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.display = function(value)
  return "Unit Of Volume In Main Board: "..value
end

-- Dissect: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.unit_of_volume_in_main_board, range, value, display)

  return offset + length, value
end

-- Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price = {}

-- Size: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.size = 11

-- Display: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.display = function(value)
  return "Upper Limit Of Base Price: "..value
end

-- Dissect: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.upper_limit_of_base_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price = {}

-- Size: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.size = 11

-- Display: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.display = function(value)
  return "Upper Limit Price: "..value
end

-- Dissect: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation = {}

-- Size: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.size = 12

-- Display: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.display = function(value)
  return "Volume In The Bid Invitation: "..value
end

-- Dissect: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.volume_in_the_bid_invitation, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Clean Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Sum Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price = {}

-- Size: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.size = 11

-- Display: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.display = function(value)
  return "Yesterdays Closing Price: "..value
end

-- Dissect: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.yesterdays_closing_price, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code = {}

-- Size: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.size = 1

-- Display: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.display = function(value)
  return "Yesterdays Closing Price Type Code: "..value
end

-- Dissect: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.yesterdays_closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11 = {}

-- Size: Zero Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.size = 11

-- Display: Zero Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.display = function(value)
  return "Zero Re Investment Index Double 11: "..value
end

-- Dissect: Zero Re Investment Index Double 11
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816 = {}

-- Size: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.size = 16

-- Display: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.display = function(value)
  return "Zero Re Investment Index Float 12816: "..value
end

-- Dissect: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.display = function(value)
  return "Zero Re Investment Index Weight: "..value
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime Commodities Exture 2.018
-----------------------------------------------------------------------

-- Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message = {}

-- Size: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_random_end_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message = {}

-- Size: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_commodities_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message = {}

-- Size: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Filler 11: Double
  index, filler_11 = koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.dissect(buffer, index, packet, parent)

  -- Second Filler 11: Double
  index, second_filler_11 = koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message = {}

-- Size: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message = {}

-- Size: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_commodities_exture_v2_018.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_commodities_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_commodities_exture_v2_018.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_commodities_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message = {}

-- Size: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Filler 11: Double
  index, filler_11 = koscom_mdcsrealtime_commodities_exture_v2_018.filler_11.dissect(buffer, index, packet, parent)

  -- Second Filler 11: Double
  index, second_filler_11 = koscom_mdcsrealtime_commodities_exture_v2_018.second_filler_11.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message = {}

-- Size: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message = {}

-- Size: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.data_type.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.high_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.low_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Type: String
  index, data_type = koscom_mdcsrealtime_commodities_exture_v2_018.data_type.dissect(buffer, index, packet, parent)

  -- Job Code Symbol: String
  index, job_code_symbol = koscom_mdcsrealtime_commodities_exture_v2_018.job_code_symbol.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_commodities_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Time: String
  index, trading_time = koscom_mdcsrealtime_commodities_exture_v2_018.trading_time.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- High Price: String
  index, high_price = koscom_mdcsrealtime_commodities_exture_v2_018.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: String
  index, low_price = koscom_mdcsrealtime_commodities_exture_v2_018.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_018.closing_price.dissect(buffer, index, packet, parent)

  -- Change From Previous Day Sign: String
  index, change_from_previous_day_sign = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day_sign.dissect(buffer, index, packet, parent)

  -- Change From Previous Day: String
  index, change_from_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.change_from_previous_day.dissect(buffer, index, packet, parent)

  -- Fluctuating Rate: String
  index, fluctuating_rate = koscom_mdcsrealtime_commodities_exture_v2_018.fluctuating_rate.dissect(buffer, index, packet, parent)

  -- Bid Quote: String
  index, bid_quote = koscom_mdcsrealtime_commodities_exture_v2_018.bid_quote.dissect(buffer, index, packet, parent)

  -- Ask Quote: String
  index, ask_quote = koscom_mdcsrealtime_commodities_exture_v2_018.ask_quote.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.dissect(buffer, index, packet, parent)

  -- Conversion Basic Exchange Rate: String
  index, conversion_basic_exchange_rate = koscom_mdcsrealtime_commodities_exture_v2_018.conversion_basic_exchange_rate.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.external_gold_spot_closing_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message = {}

-- Size: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.dissect(buffer, index, packet, parent)

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- A Representative Issue To Calculate Base Price: String
  index, a_representative_issue_to_calculate_base_price = koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.dissect(buffer, index, packet, parent)

  -- An Issue Of Which Base Price Is Settled With A Todays Single Price: String
  index, an_issue_of_which_base_price_is_settled_with_a_todays_single_price = koscom_mdcsrealtime_commodities_exture_v2_018.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message = {}

-- Size: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_commodities_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_commodities_exture_v2_018.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_commodities_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_commodities_exture_v2_018.security_group_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_commodities_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_commodities_exture_v2_018.delisting_date.dissect(buffer, index, packet, parent)

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_commodities_exture_v2_018.market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_018.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = koscom_mdcsrealtime_commodities_exture_v2_018.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_commodities_exture_v2_018.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = koscom_mdcsrealtime_commodities_exture_v2_018.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- A Representative Issue To Calculate Base Price: String
  index, a_representative_issue_to_calculate_base_price = koscom_mdcsrealtime_commodities_exture_v2_018.a_representative_issue_to_calculate_base_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message = {}

-- Size: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Auction Bid Volume: Long
  index, auction_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.auction_bid_volume.dissect(buffer, index, packet, parent)

  -- Auction Price: Double
  index, auction_price = koscom_mdcsrealtime_commodities_exture_v2_018.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Volume: Long
  index, auction_volume = koscom_mdcsrealtime_commodities_exture_v2_018.auction_volume.dissect(buffer, index, packet, parent)

  -- Volume In The Bid Invitation: Long
  index, volume_in_the_bid_invitation = koscom_mdcsrealtime_commodities_exture_v2_018.volume_in_the_bid_invitation.dissect(buffer, index, packet, parent)

  -- Number Of Bidders: Long
  index, number_of_bidders = koscom_mdcsrealtime_commodities_exture_v2_018.number_of_bidders.dissect(buffer, index, packet, parent)

  -- Bidtocover Ratio: Double
  index, bidtocover_ratio = koscom_mdcsrealtime_commodities_exture_v2_018.bidtocover_ratio.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_auction_results_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message = {}

-- Size: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Base Price: Double
  index, upper_limit_of_base_price = koscom_mdcsrealtime_commodities_exture_v2_018.upper_limit_of_base_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Base Price: Double
  index, lower_limit_of_base_price = koscom_mdcsrealtime_commodities_exture_v2_018.lower_limit_of_base_price.dissect(buffer, index, packet, parent)

  -- Block Trading Upper Limit Price: Double
  index, block_trading_upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_upper_limit_price.dissect(buffer, index, packet, parent)

  -- Block Trading Lower Limit Price: Double
  index, block_trading_lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_018.block_trading_lower_limit_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_determination_of_base_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message = {}

-- Size: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message = {}

-- Size: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.current_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Current Price: Double
  index, current_price = koscom_mdcsrealtime_commodities_exture_v2_018.current_price.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Negotiated Block Trade Trading Volume: Long
  index, negotiated_block_trade_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_volume.dissect(buffer, index, packet, parent)

  -- Negotiated Block Trade Trading Value: FLOAT128
  index, negotiated_block_trade_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_block_trade_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_snapshot_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message = {}

-- Size: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_market_operation_ts_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message = {}

-- Size: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message = {}

-- Size: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message = {}

-- Size: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.emissions_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message = {}

-- Size: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Negotiated Trade Accumulated Trading Volume: Long
  index, negotiated_trade_accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Negotiated Trade Accumulated Trading Value: FLOAT128
  index, negotiated_trade_accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.negotiated_trade_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Volume: Long
  index, total_accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Value: FLOAT128
  index, total_accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message = {}

-- Size: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.current_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Current Price: Double
  index, current_price = koscom_mdcsrealtime_commodities_exture_v2_018.current_price.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_snapshot_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message = {}

-- Size: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_market_operation_ts_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message = {}

-- Size: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message = {}

-- Size: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = koscom_mdcsrealtime_commodities_exture_v2_018.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message = {}

-- Size: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_018.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_018.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.spot_gold_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Float 12816: FLOAT128
  index, market_price_index_float_12816 = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Float 12816: FLOAT128
  index, zero_re_investment_index_float_12816 = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Float 12816: FLOAT128
  index, call_re_investment_index_float_12816 = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_commodities_exture_v2_018.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_commodities_exture_v2_018.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_commodities_exture_v2_018.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_commodities_exture_v2_018.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_commodities_exture_v2_018.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_commodities_exture_v2_018.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_commodities_exture_v2_018.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_commodities_exture_v2_018.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_commodities_exture_v2_018.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_commodities_exture_v2_018.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_commodities_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_commodities_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_commodities_exture_v2_018.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_commodities_exture_v2_018.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_commodities_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_commodities_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_commodities_exture_v2_018.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Double 11: Double
  index, clean_price_index_double_11 = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Market Price Index Double 11: Double
  index, market_price_index_double_11 = koscom_mdcsrealtime_commodities_exture_v2_018.market_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Double 11: Double
  index, call_re_investment_index_double_11 = koscom_mdcsrealtime_commodities_exture_v2_018.call_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Double 11: Double
  index, zero_re_investment_index_double_11 = koscom_mdcsrealtime_commodities_exture_v2_018.zero_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_commodities_exture_v2_018.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_commodities_exture_v2_018.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_commodities_exture_v2_018.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_commodities_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_commodities_exture_v2_018.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_commodities_exture_v2_018.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_commodities_exture_v2_018.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_commodities_exture_v2_018.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_commodities_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_commodities_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_commodities_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_commodities_exture_v2_018.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_commodities_exture_v2_018.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_018.current_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_commodities_exture_v2_018.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_commodities_exture_v2_018.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_commodities_exture_v2_018.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Polling Data Message
  if message_code == "I2000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Index Message
  if message_code == "IA000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.krx_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Estimated Index Message
  if message_code == "IB000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.krx_estimated_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Index Message
  if message_code == "J2000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.global_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Prime Index Message
  if message_code == "J4000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_prime_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Message
  if message_code == "K1000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Term Structure Message
  if message_code == "K8000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_ktb_index_term_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Index Krx Message
  if message_code == "IG000" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.bond_index_krx_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Quote Message
  if message_code == "B601G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Order Filled Message
  if message_code == "A301G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Order Filled Plus Quote Message
  if message_code == "G701G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Plus Quote Message
  if message_code == "R101G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Snapshot Message
  if message_code == "B201G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Negotiated Trade Message
  if message_code == "C401G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Quote Message
  if message_code == "B601E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Order Filled Message
  if message_code == "A301E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Order Filled Plus Quote Message
  if message_code == "G701E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Plus Quote Message
  if message_code == "R101E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Snapshot Message
  if message_code == "B201E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Negotiated Trade Message
  if message_code == "C401E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Determination Of Base Price Message
  if message_code == "A401E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_determination_of_base_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Auction Results Message
  if message_code == "AC01E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_auction_results_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Batch Data Message
  if message_code == "A001G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Batch Data Message
  if message_code == "A001E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect External Gold Spot Closing Price Message
  if message_code == "M200G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.external_gold_spot_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A702S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A703S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A704S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A705S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701B" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701M" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701K" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701R" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A702F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A703F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A704F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A705F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A706F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A707F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A708F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A709F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A710F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A711F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A712F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A713F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A715F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A716F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A717F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A718F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Ts Message
  if message_code == "A701E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A601S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A602S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A603S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A604S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A605S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A601Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A601X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A601G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Issue Closing Message
  if message_code == "A601E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M402S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M403S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M404S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M405S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401B" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401M" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401K" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401R" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M402F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M403F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M404F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M405F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M406F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M407F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M408F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M409F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M410F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M411F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M412F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M413F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M415F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M416F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M417F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M418F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Market Operation Schedule Message
  if message_code == "M401E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A702S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A703S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A704S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A705S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701B" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701M" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701K" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701R" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A702F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A703F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A704F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A705F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A706F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A707F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A708F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A709F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A710F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A711F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A712F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A713F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A715F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A716F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A717F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A718F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Ts Message
  if message_code == "A701E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A601S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A602S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A603S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A604S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A605S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A601Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A601X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A601G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Issue Closing Message
  if message_code == "A601E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M402S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M403S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M404S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M405S" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401Q" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401B" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401M" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401K" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401R" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M402F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M403F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M404F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M405F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M406F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M407F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M408F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M409F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M410F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M411F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M412F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M413F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M415F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M416F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M417F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M418F" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Emissions Market Operation Schedule Message
  if message_code == "M401E" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.emissions_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Random End Message
  if message_code == "A501X" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Gold Random End Message
  if message_code == "A501G" then
    return koscom_mdcsrealtime_commodities_exture_v2_018.spot_gold_random_end_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_commodities_exture_v2_018.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_commodities_exture_v2_018.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_commodities_exture_v2_018.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_commodities_exture_v2_018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_commodities_exture_v2_018.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 165 branches
    index = koscom_mdcsrealtime_commodities_exture_v2_018.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_commodities_exture_v2_018.init()
end

-- Dissector for Koscom MdcsRealtime Commodities Exture 2.018
function omi_koscom_mdcsrealtime_commodities_exture_v2_018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_commodities_exture_v2_018.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_018, buffer(), omi_koscom_mdcsrealtime_commodities_exture_v2_018.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_commodities_exture_v2_018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime Commodities Exture 2.018 (Udp)
local function omi_koscom_mdcsrealtime_commodities_exture_v2_018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_commodities_exture_v2_018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_commodities_exture_v2_018
  omi_koscom_mdcsrealtime_commodities_exture_v2_018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime Commodities Exture 2.018
omi_koscom_mdcsrealtime_commodities_exture_v2_018:register_heuristic("udp", omi_koscom_mdcsrealtime_commodities_exture_v2_018_udp_heuristic)

-- Register Koscom MdcsRealtime Commodities Exture 2.018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_commodities_exture_v2_018)

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
