-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime BondA Exture 2.018 Protocol
local omi_koscom_mdcsrealtime_bonda_exture_v2_018 = Proto("Omi.Koscom.MdcsRealtime.BondA.Exture.v2.018", "Koscom MdcsRealtime BondA Exture 2.018")

-- Protocol table
local koscom_mdcsrealtime_bonda_exture_v2_018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime BondA Exture 2.018 Fields
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.bonda.exture.v2.018.adesignatednumberforanissue", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.bonda.exture.v2.018.abbreviatedissuecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.bonda.exture.v2.018.abbreviatedissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.bonda.exture.v2.018.abbreviatedissuenameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accrued_interest_rate_on_bank_holidays_type_code = ProtoField.new("Accrued Interest Rate On Bank Holidays Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.accruedinterestrateonbankholidaystypecode", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_ask_trading_value = ProtoField.new("Accumulated Ask Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedasktradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_ask_trading_volume = ProtoField.new("Accumulated Ask Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedasktradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_bid_trading_value = ProtoField.new("Accumulated Bid Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedbidtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_bid_trading_volume = ProtoField.new("Accumulated Bid Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedbidtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.additional_yield = ProtoField.new("Additional Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.additionalyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.additional_yield_effective_date = ProtoField.new("Additional Yield Effective Date", "koscom.mdcsrealtime.bonda.exture.v2.018.additionalyieldeffectivedate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.amortization_type_code = ProtoField.new("Amortization Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.amortizationtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.applied_exchange_rate = ProtoField.new("Applied Exchange Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.appliedexchangerate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_duration_of_term_repo = ProtoField.new("Ask Duration Of Term Repo", "koscom.mdcsrealtime.bonda.exture.v2.018.askdurationoftermrepo", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_remaining_quantity = ProtoField.new("Ask Level 1 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel1remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_trading_amount = ProtoField.new("Ask Level 1 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel1tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_yield = ProtoField.new("Ask Level 1 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel1yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_remaining_quantity = ProtoField.new("Ask Level 2 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel2remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_trading_amount = ProtoField.new("Ask Level 2 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel2tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_yield = ProtoField.new("Ask Level 2 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel2yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_remaining_quantity = ProtoField.new("Ask Level 3 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel3remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_trading_amount = ProtoField.new("Ask Level 3 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel3tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_yield = ProtoField.new("Ask Level 3 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel3yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_remaining_quantity = ProtoField.new("Ask Level 4 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel4remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_trading_amount = ProtoField.new("Ask Level 4 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel4tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_yield = ProtoField.new("Ask Level 4 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel4yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_remaining_quantity = ProtoField.new("Ask Level 5 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel5remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_trading_amount = ProtoField.new("Ask Level 5 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel5tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_yield = ProtoField.new("Ask Level 5 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.asklevel5yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_price = ProtoField.new("Ask Per Type Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_remaining_quantity = ProtoField.new("Ask Per Type Level 1 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel1remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_trading_amount = ProtoField.new("Ask Per Type Level 1 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel1tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_yield = ProtoField.new("Ask Per Type Level 1 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel1yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_price = ProtoField.new("Ask Per Type Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_remaining_quantity = ProtoField.new("Ask Per Type Level 2 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel2remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_trading_amount = ProtoField.new("Ask Per Type Level 2 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel2tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_yield = ProtoField.new("Ask Per Type Level 2 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel2yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_price = ProtoField.new("Ask Per Type Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_remaining_quantity = ProtoField.new("Ask Per Type Level 3 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel3remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_trading_amount = ProtoField.new("Ask Per Type Level 3 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel3tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_yield = ProtoField.new("Ask Per Type Level 3 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel3yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_price = ProtoField.new("Ask Per Type Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_remaining_quantity = ProtoField.new("Ask Per Type Level 4 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel4remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_trading_amount = ProtoField.new("Ask Per Type Level 4 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel4tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_yield = ProtoField.new("Ask Per Type Level 4 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel4yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_price = ProtoField.new("Ask Per Type Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_remaining_quantity = ProtoField.new("Ask Per Type Level 5 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel5remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_trading_amount = ProtoField.new("Ask Per Type Level 5 Trading Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel5tradingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_yield = ProtoField.new("Ask Per Type Level 5 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypelevel5yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_total_remaining_quantity = ProtoField.new("Ask Per Type Total Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.askpertypetotalremainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_repo_type_code = ProtoField.new("Ask Repo Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.askrepotypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_total_remaining_quantity = ProtoField.new("Ask Total Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.asktotalremainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.bonda.exture.v2.018.averageconvexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.bonda.exture.v2.018.averagecouponprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.averagecurrentyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.bonda.exture.v2.018.averageduration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.bonda.exture.v2.018.averageforwardytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.bonda.exture.v2.018.averageremainingmaturityprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.bonda.exture.v2.018.averagespread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.bonda.exture.v2.018.averagespreadsign", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_yield = ProtoField.new("Average Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.averageyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.bonda.exture.v2.018.averageyld", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.bonda.exture.v2.018.averageytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_type_code = ProtoField.new("Baby Bonds Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.babybondstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.bonda.exture.v2.018.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_interest_rate_on_bank_holidays_type_code = ProtoField.new("Base Interest Rate On Bank Holidays Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.baseinterestrateonbankholidaystypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.bonda.exture.v2.018.baseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.bonda.exture.v2.018.basetime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.bonda.exture.v2.018.basisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_closing_date = ProtoField.new("Bid Closing Date", "koscom.mdcsrealtime.bonda.exture.v2.018.bidclosingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_duration_of_term_repo = ProtoField.new("Bid Duration Of Term Repo", "koscom.mdcsrealtime.bonda.exture.v2.018.biddurationoftermrepo", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_including_gc = ProtoField.new("Bid Level 1 Including Gc", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel1includinggc", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_remaining_quantity = ProtoField.new("Bid Level 1 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel1remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_yield = ProtoField.new("Bid Level 1 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel1yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_including_gc = ProtoField.new("Bid Level 2 Including Gc", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel2includinggc", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_remaining_quantity = ProtoField.new("Bid Level 2 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel2remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_yield = ProtoField.new("Bid Level 2 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel2yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_including_gc = ProtoField.new("Bid Level 3 Including Gc", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel3includinggc", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_remaining_quantity = ProtoField.new("Bid Level 3 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel3remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_yield = ProtoField.new("Bid Level 3 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel3yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_including_gc = ProtoField.new("Bid Level 4 Including Gc", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel4includinggc", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_remaining_quantity = ProtoField.new("Bid Level 4 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel4remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_yield = ProtoField.new("Bid Level 4 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel4yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_including_gc = ProtoField.new("Bid Level 5 Including Gc", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel5includinggc", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_remaining_quantity = ProtoField.new("Bid Level 5 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel5remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_yield = ProtoField.new("Bid Level 5 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidlevel5yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_price = ProtoField.new("Bid Per Type Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_remaining_quantity = ProtoField.new("Bid Per Type Level 1 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel1remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_yield = ProtoField.new("Bid Per Type Level 1 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel1yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_price = ProtoField.new("Bid Per Type Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_remaining_quantity = ProtoField.new("Bid Per Type Level 2 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel2remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_yield = ProtoField.new("Bid Per Type Level 2 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel2yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_price = ProtoField.new("Bid Per Type Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_remaining_quantity = ProtoField.new("Bid Per Type Level 3 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel3remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_yield = ProtoField.new("Bid Per Type Level 3 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel3yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_price = ProtoField.new("Bid Per Type Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_remaining_quantity = ProtoField.new("Bid Per Type Level 4 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel4remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_yield = ProtoField.new("Bid Per Type Level 4 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel4yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_price = ProtoField.new("Bid Per Type Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_remaining_quantity = ProtoField.new("Bid Per Type Level 5 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel5remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_yield = ProtoField.new("Bid Per Type Level 5 Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypelevel5yield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_total_remaining_quantity = ProtoField.new("Bid Per Type Total Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidpertypetotalremainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_repo_type_code = ProtoField.new("Bid Repo Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bidrepotypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_total_remaining_quantity = ProtoField.new("Bid Total Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.bidtotalremainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "koscom.mdcsrealtime.bonda.exture.v2.018.boardeventgroupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_event_id = ProtoField.new("Board Event Id", "koscom.mdcsrealtime.bonda.exture.v2.018.boardeventid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.bonda.exture.v2.018.boardid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_category_code = ProtoField.new("Bond Category Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondcategorycode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_delisted_date = ProtoField.new("Bond Delisted Date", "koscom.mdcsrealtime.bonda.exture.v2.018.bonddelisteddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_delisting_reason_code = ProtoField.new("Bond Delisting Reason Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bonddelistingreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_guaranteed_type_code = ProtoField.new("Bond Guaranteed Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondguaranteedtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.bonda.exture.v2.018.bondindexid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_issuance_rate = ProtoField.new("Bond Issuance Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.bondissuancerate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_issuance_type_code = ProtoField.new("Bond Issuance Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondissuancetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_lead_manager_company_code = ProtoField.new("Bond Lead Manager Company Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondleadmanagercompanycode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_listing_type_code = ProtoField.new("Bond Listing Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondlistingtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_odd_lot_days_base_interest_type_code = ProtoField.new("Bond Odd Lot Days Base Interest Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondoddlotdaysbaseinteresttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_sale_type_code = ProtoField.new("Bond Sale Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsaletypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_type_code = ProtoField.new("Bond Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.bondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_yield = ProtoField.new("Bond Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.bondyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.bonda.exture.v2.018.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.bonda.exture.v2.018.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.bonda.exture.v2.018.calculatingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.bonda.exture.v2.018.calculationtime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_double_11 = ProtoField.new("Call Re Investment Index Double 11", "koscom.mdcsrealtime.bonda.exture.v2.018.callreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_float_12816 = ProtoField.new("Call Re Investment Index Float 12816", "koscom.mdcsrealtime.bonda.exture.v2.018.callreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.callreinvestmentindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.cancellation = ProtoField.new("Cancellation", "koscom.mdcsrealtime.bonda.exture.v2.018.cancellation", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.bonda.exture.v2.018.cashinflow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_accumulated_trading_value = ProtoField.new("Category Accumulated Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.categoryaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_accumulated_trading_volume = ProtoField.new("Category Accumulated Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.categoryaccumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_opening_price = ProtoField.new("Category Opening Price", "koscom.mdcsrealtime.bonda.exture.v2.018.categoryopeningprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_todays_high = ProtoField.new("Category Todays High", "koscom.mdcsrealtime.bonda.exture.v2.018.categorytodayshigh", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_todays_low = ProtoField.new("Category Todays Low", "koscom.mdcsrealtime.bonda.exture.v2.018.categorytodayslow", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.bonda.exture.v2.018.cleanprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_double_11 = ProtoField.new("Clean Price Index Double 11", "koscom.mdcsrealtime.bonda.exture.v2.018.cleanpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_float_12816 = ProtoField.new("Clean Price Index Float 12816", "koscom.mdcsrealtime.bonda.exture.v2.018.cleanpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.cleanpriceindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.bonda.exture.v2.018.closingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.closingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_with_yield = ProtoField.new("Closing Price With Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.closingpricewithyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_yield = ProtoField.new("Closing Price Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.closingpriceyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_yield_rate = ProtoField.new("Closing Price Yield Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.closingpriceyieldrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.co_cos_type_code = ProtoField.new("Co Cos Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.cocostypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.confirmation_of_lump_sum_payment = ProtoField.new("Confirmation Of Lump Sum Payment", "koscom.mdcsrealtime.bonda.exture.v2.018.confirmationoflumpsumpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.contents_of_underlying_asset = ProtoField.new("Contents Of Underlying Asset", "koscom.mdcsrealtime.bonda.exture.v2.018.contentsofunderlyingasset", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.bonda.exture.v2.018.convexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.corporate_bonds_related_to_securities_exercise_price = ProtoField.new("Corporate Bonds Related To Securities Exercise Price", "koscom.mdcsrealtime.bonda.exture.v2.018.corporatebondsrelatedtosecuritiesexerciseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_date_type_code = ProtoField.new("Coupon Payment Date Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.couponpaymentdatetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_decision_code_for_bank_holidays = ProtoField.new("Coupon Payment Decision Code For Bank Holidays", "koscom.mdcsrealtime.bonda.exture.v2.018.couponpaymentdecisioncodeforbankholidays", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_type_code_string_1 = ProtoField.new("Coupon Payment Type Code String 1", "koscom.mdcsrealtime.bonda.exture.v2.018.couponpaymenttypecodestring1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_type_code_string_2 = ProtoField.new("Coupon Payment Type Code String 2", "koscom.mdcsrealtime.bonda.exture.v2.018.couponpaymenttypecodestring2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate = ProtoField.new("Coupon Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.couponrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate_confirmation = ProtoField.new("Coupon Rate Confirmation", "koscom.mdcsrealtime.bonda.exture.v2.018.couponrateconfirmation", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate_decision_base_rate_type_code = ProtoField.new("Coupon Rate Decision Base Rate Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.couponratedecisionbaseratetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_1 = ProtoField.new("Credit Rating Agency Code No 1", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingagencycodeno1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_2 = ProtoField.new("Credit Rating Agency Code No 2", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingagencycodeno2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_3 = ProtoField.new("Credit Rating Agency Code No 3", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingagencycodeno3", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_4 = ProtoField.new("Credit Rating Agency Code No 4", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingagencycodeno4", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_1 = ProtoField.new("Credit Rating Per Agency Code No 1", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingperagencycodeno1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_2 = ProtoField.new("Credit Rating Per Agency Code No 2", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingperagencycodeno2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_3 = ProtoField.new("Credit Rating Per Agency Code No 3", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingperagencycodeno3", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_4 = ProtoField.new("Credit Rating Per Agency Code No 4", "koscom.mdcsrealtime.bonda.exture.v2.018.creditratingperagencycodeno4", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.crowdfunding = ProtoField.new("Crowdfunding", "koscom.mdcsrealtime.bonda.exture.v2.018.crowdfunding", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.bonda.exture.v2.018.currencycode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.currency_type_code = ProtoField.new("Currency Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.currencytypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.bonda.exture.v2.018.currenttime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.date_to_end_exercising = ProtoField.new("Date To End Exercising", "koscom.mdcsrealtime.bonda.exture.v2.018.datetoendexercising", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.date_to_start_exercising = ProtoField.new("Date To Start Exercising", "koscom.mdcsrealtime.bonda.exture.v2.018.datetostartexercising", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.decimal_point_of_coupon_type_code = ProtoField.new("Decimal Point Of Coupon Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.decimalpointofcoupontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_best_bid_price = ProtoField.new("Designated Best Bid Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbestbidprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_isin = ProtoField.new("Designated Bid Level 1 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel1isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_price = ProtoField.new("Designated Bid Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_repo_remaining_quantity = ProtoField.new("Designated Bid Level 1 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel1reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_isin = ProtoField.new("Designated Bid Level 10 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel10isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_price = ProtoField.new("Designated Bid Level 10 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel10price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_repo_remaining_quantity = ProtoField.new("Designated Bid Level 10 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel10reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_isin = ProtoField.new("Designated Bid Level 2 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel2isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_price = ProtoField.new("Designated Bid Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_repo_remaining_quantity = ProtoField.new("Designated Bid Level 2 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel2reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_isin = ProtoField.new("Designated Bid Level 3 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel3isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_price = ProtoField.new("Designated Bid Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_repo_remaining_quantity = ProtoField.new("Designated Bid Level 3 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel3reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_isin = ProtoField.new("Designated Bid Level 4 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel4isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_price = ProtoField.new("Designated Bid Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_repo_remaining_quantity = ProtoField.new("Designated Bid Level 4 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel4reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_isin = ProtoField.new("Designated Bid Level 5 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel5isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_price = ProtoField.new("Designated Bid Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_repo_remaining_quantity = ProtoField.new("Designated Bid Level 5 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel5reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_isin = ProtoField.new("Designated Bid Level 6 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel6isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_price = ProtoField.new("Designated Bid Level 6 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel6price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_repo_remaining_quantity = ProtoField.new("Designated Bid Level 6 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel6reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_isin = ProtoField.new("Designated Bid Level 7 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel7isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_price = ProtoField.new("Designated Bid Level 7 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel7price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_repo_remaining_quantity = ProtoField.new("Designated Bid Level 7 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel7reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_isin = ProtoField.new("Designated Bid Level 8 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel8isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_price = ProtoField.new("Designated Bid Level 8 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel8price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_repo_remaining_quantity = ProtoField.new("Designated Bid Level 8 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel8reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_isin = ProtoField.new("Designated Bid Level 9 Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel9isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_price = ProtoField.new("Designated Bid Level 9 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel9price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_repo_remaining_quantity = ProtoField.new("Designated Bid Level 9 Repo Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.designatedbidlevel9reporemainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.disclosing_data_type_code = ProtoField.new("Disclosing Data Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.disclosingdatatypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.disclosure_time = ProtoField.new("Disclosure Time", "koscom.mdcsrealtime.bonda.exture.v2.018.disclosuretime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.bonda.exture.v2.018.duration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.duration_of_term_repo = ProtoField.new("Duration Of Term Repo", "koscom.mdcsrealtime.bonda.exture.v2.018.durationoftermrepo", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.els_condition_1 = ProtoField.new("Els Condition 1", "koscom.mdcsrealtime.bonda.exture.v2.018.elscondition1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.els_condition_2 = ProtoField.new("Els Condition 2", "koscom.mdcsrealtime.bonda.exture.v2.018.elscondition2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.bonda.exture.v2.018.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.english_issue_name = ProtoField.new("English Issue Name", "koscom.mdcsrealtime.bonda.exture.v2.018.englishissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.equitylinked_bond_exercise_price = ProtoField.new("Equitylinked Bond Exercise Price", "koscom.mdcsrealtime.bonda.exture.v2.018.equitylinkedbondexerciseprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.equitylinked_bond_rights_type_code = ProtoField.new("Equitylinked Bond Rights Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.equitylinkedbondrightstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_end_date = ProtoField.new("Event End Date", "koscom.mdcsrealtime.bonda.exture.v2.018.eventenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_reason_code = ProtoField.new("Event Reason Code", "koscom.mdcsrealtime.bonda.exture.v2.018.eventreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_start_date = ProtoField.new("Event Start Date", "koscom.mdcsrealtime.bonda.exture.v2.018.eventstartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_type_code = ProtoField.new("Event Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.eventtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.exercise_ratio = ProtoField.new("Exercise Ratio", "koscom.mdcsrealtime.bonda.exture.v2.018.exerciseratio", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "koscom.mdcsrealtime.bonda.exture.v2.018.expectedtimeofexpandingpricelimitrange", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.facility_fund = ProtoField.new("Facility Fund", "koscom.mdcsrealtime.bonda.exture.v2.018.facilityfund", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.bonda.exture.v2.018.filler4", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_call_exercise_end_date = ProtoField.new("First Call Exercise End Date", "koscom.mdcsrealtime.bonda.exture.v2.018.firstcallexerciseenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_call_exercise_start_date = ProtoField.new("First Call Exercise Start Date", "koscom.mdcsrealtime.bonda.exture.v2.018.firstcallexercisestartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_put_exercise_end_date = ProtoField.new("First Put Exercise End Date", "koscom.mdcsrealtime.bonda.exture.v2.018.firstputexerciseenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_put_exercise_start_date = ProtoField.new("First Put Exercise Start Date", "koscom.mdcsrealtime.bonda.exture.v2.018.firstputexercisestartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.bonda.exture.v2.018.futuresbasisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.bonda.exture.v2.018.groupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.guaranteed_rate_for_payment = ProtoField.new("Guaranteed Rate For Payment", "koscom.mdcsrealtime.bonda.exture.v2.018.guaranteedrateforpayment", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.guaranteed_yield_effective_date = ProtoField.new("Guaranteed Yield Effective Date", "koscom.mdcsrealtime.bonda.exture.v2.018.guaranteedyieldeffectivedate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.hybrid_bond = ProtoField.new("Hybrid Bond", "koscom.mdcsrealtime.bonda.exture.v2.018.hybridbond", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.bonda.exture.v2.018.index", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.bonda.exture.v2.018.indexchangeagainstthepreviousday", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.bonda.exture.v2.018.indexchangesignagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.bonda.exture.v2.018.indexconstituent", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.bonda.exture.v2.018.indexid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.bonda.exture.v2.018.indexmarketcapitalization", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.bonda.exture.v2.018.indexnumberofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.inflation_indexed_category = ProtoField.new("Inflation Indexed Category", "koscom.mdcsrealtime.bonda.exture.v2.018.inflationindexedcategory", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.inscription_type_of_bond = ProtoField.new("Inscription Type Of Bond", "koscom.mdcsrealtime.bonda.exture.v2.018.inscriptiontypeofbond", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.installment_repayment_date = ProtoField.new("Installment Repayment Date", "koscom.mdcsrealtime.bonda.exture.v2.018.installmentrepaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.institution_code = ProtoField.new("Institution Code", "koscom.mdcsrealtime.bonda.exture.v2.018.institutioncode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_payment = ProtoField.new("Interest Payment", "koscom.mdcsrealtime.bonda.exture.v2.018.interestpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_rate_decision_other_base_rate_name = ProtoField.new("Interest Rate Decision Other Base Rate Name", "koscom.mdcsrealtime.bonda.exture.v2.018.interestratedecisionotherbaseratename", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_type_code_during_amortization = ProtoField.new("Interest Type Code During Amortization", "koscom.mdcsrealtime.bonda.exture.v2.018.interesttypecodeduringamortization", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investment_caution_bond_type_code = ProtoField.new("Investment Caution Bond Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.investmentcautionbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investor_code = ProtoField.new("Investor Code", "koscom.mdcsrealtime.bonda.exture.v2.018.investorcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin = ProtoField.new("Isin", "koscom.mdcsrealtime.bonda.exture.v2.018.isin", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.bonda.exture.v2.018.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "koscom.mdcsrealtime.bonda.exture.v2.018.isincodeofacommonstock", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_code_of_postexercise = ProtoField.new("Issue Code Of Postexercise", "koscom.mdcsrealtime.bonda.exture.v2.018.issuecodeofpostexercise", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_date = ProtoField.new("Issue Date", "koscom.mdcsrealtime.bonda.exture.v2.018.issuedate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_name = ProtoField.new("Issue Name", "koscom.mdcsrealtime.bonda.exture.v2.018.issuename", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.issuedamount", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.issuedamountweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issuer_code = ProtoField.new("Issuer Code", "koscom.mdcsrealtime.bonda.exture.v2.018.issuercode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issuing_amount = ProtoField.new("Issuing Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.issuingamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.level_payment_amount = ProtoField.new("Level Payment Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.levelpaymentamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.liquidation_trade = ProtoField.new("Liquidation Trade", "koscom.mdcsrealtime.bonda.exture.v2.018.liquidationtrade", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.listed_amount = ProtoField.new("Listed Amount", "koscom.mdcsrealtime.bonda.exture.v2.018.listedamount", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.bonda.exture.v2.018.listingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.loan_fund = ProtoField.new("Loan Fund", "koscom.mdcsrealtime.bonda.exture.v2.018.loanfund", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.lower_limit_coupon_rate = ProtoField.new("Lower Limit Coupon Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.lowerlimitcouponrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maintenance_fund = ProtoField.new("Maintenance Fund", "koscom.mdcsrealtime.bonda.exture.v2.018.maintenancefund", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.marketcapitalizationweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.bonda.exture.v2.018.marketoperationproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_double_11 = ProtoField.new("Market Price Index Double 11", "koscom.mdcsrealtime.bonda.exture.v2.018.marketpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_float_12816 = ProtoField.new("Market Price Index Float 12816", "koscom.mdcsrealtime.bonda.exture.v2.018.marketpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.marketpriceindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_value = ProtoField.new("Market Value", "koscom.mdcsrealtime.bonda.exture.v2.018.marketvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.bonda.exture.v2.018.maturitycode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maximum_yield = ProtoField.new("Maximum Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.maximumyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.mb_type_code = ProtoField.new("Mb Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.mbtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_firm_trust_principal_type_code = ProtoField.new("Member Firm Trust Principal Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.memberfirmtrustprincipaltypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_number = ProtoField.new("Member Number", "koscom.mdcsrealtime.bonda.exture.v2.018.membernumber", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.bonda.exture.v2.018.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.bonda.exture.v2.018.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.monthly_cycle_of_coupon_payment = ProtoField.new("Monthly Cycle Of Coupon Payment", "koscom.mdcsrealtime.bonda.exture.v2.018.monthlycycleofcouponpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.net_bid_per_type_total_remaining_quantity = ProtoField.new("Net Bid Per Type Total Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.netbidpertypetotalremainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.next_coupon_payment_date = ProtoField.new("Next Coupon Payment Date", "koscom.mdcsrealtime.bonda.exture.v2.018.nextcouponpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_amortization = ProtoField.new("Number Of Amortization", "koscom.mdcsrealtime.bonda.exture.v2.018.numberofamortization", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_months_for_grace = ProtoField.new("Number Of Months For Grace", "koscom.mdcsrealtime.bonda.exture.v2.018.numberofmonthsforgrace", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_months_to_pay_interest = ProtoField.new("Number Of Months To Pay Interest", "koscom.mdcsrealtime.bonda.exture.v2.018.numberofmonthstopayinterest", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_repo_trade_periods = ProtoField.new("Number Of Repo Trade Periods", "koscom.mdcsrealtime.bonda.exture.v2.018.numberofrepotradeperiods", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.bonda.exture.v2.018.openingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.optionembedded_type_code = ProtoField.new("Optionembedded Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.optionembeddedtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.original_bond_type_code_subjec_to_strip = ProtoField.new("Original Bond Type Code Subjec To Strip", "koscom.mdcsrealtime.bonda.exture.v2.018.originalbondtypecodesubjectostrip", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.other_funds = ProtoField.new("Other Funds", "koscom.mdcsrealtime.bonda.exture.v2.018.otherfunds", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.other_types_of_bond = ProtoField.new("Other Types Of Bond", "koscom.mdcsrealtime.bonda.exture.v2.018.othertypesofbond", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.participating_rate = ProtoField.new("Participating Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.participatingrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.payment_agent_code = ProtoField.new("Payment Agent Code", "koscom.mdcsrealtime.bonda.exture.v2.018.paymentagentcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.payment_guarantor_code = ProtoField.new("Payment Guarantor Code", "koscom.mdcsrealtime.bonda.exture.v2.018.paymentguarantorcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.perpetual_bond_maturity_structure_status = ProtoField.new("Perpetual Bond Maturity Structure Status", "koscom.mdcsrealtime.bonda.exture.v2.018.perpetualbondmaturitystructurestatus", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.pre_issue_sale_coupon_payment_type_code = ProtoField.new("Pre Issue Sale Coupon Payment Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.preissuesalecouponpaymenttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_accrued_interest_rate_on_bank_holidays_type_code = ProtoField.new("Principal Accrued Interest Rate On Bank Holidays Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.principalaccruedinterestrateonbankholidaystypecode", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_base_rate_on_bank_holidays_type_code = ProtoField.new("Principal Base Rate On Bank Holidays Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.principalbaserateonbankholidaystypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_guranteed_rate = ProtoField.new("Principal Guranteed Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.principalguranteedrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_payment_methods_on_bank_holidays_type_code = ProtoField.new("Principal Payment Methods On Bank Holidays Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.principalpaymentmethodsonbankholidaystypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.prior_coupon_payment_date = ProtoField.new("Prior Coupon Payment Date", "koscom.mdcsrealtime.bonda.exture.v2.018.priorcouponpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "koscom.mdcsrealtime.bonda.exture.v2.018.processingtimeoftradingsystem", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.product_id = ProtoField.new("Product Id", "koscom.mdcsrealtime.bonda.exture.v2.018.productid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.profit_participating_accum_status = ProtoField.new("Profit Participating Accum Status", "koscom.mdcsrealtime.bonda.exture.v2.018.profitparticipatingaccumstatus", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reason_for_exercising_a_call = ProtoField.new("Reason For Exercising A Call", "koscom.mdcsrealtime.bonda.exture.v2.018.reasonforexercisingacall", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reason_for_exercising_a_put = ProtoField.new("Reason For Exercising A Put", "koscom.mdcsrealtime.bonda.exture.v2.018.reasonforexercisingaput", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.record_date_of_dividend_payout = ProtoField.new("Record Date Of Dividend Payout", "koscom.mdcsrealtime.bonda.exture.v2.018.recorddateofdividendpayout", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.record_process_category = ProtoField.new("Record Process Category", "koscom.mdcsrealtime.bonda.exture.v2.018.recordprocesscategory", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_date = ProtoField.new("Redemption Date", "koscom.mdcsrealtime.bonda.exture.v2.018.redemptiondate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_priority_type_code = ProtoField.new("Redemption Priority Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.redemptionprioritytypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_ratio_at_maturity = ProtoField.new("Redemption Ratio At Maturity", "koscom.mdcsrealtime.bonda.exture.v2.018.redemptionratioatmaturity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reference_index_for_issue_date = ProtoField.new("Reference Index For Issue Date", "koscom.mdcsrealtime.bonda.exture.v2.018.referenceindexforissuedate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.register_institute_code = ProtoField.new("Register Institute Code", "koscom.mdcsrealtime.bonda.exture.v2.018.registerinstitutecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.bonda.exture.v2.018.reinvestcallcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_code = ProtoField.new("Repo Classification Code", "koscom.mdcsrealtime.bonda.exture.v2.018.repoclassificationcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_name = ProtoField.new("Repo Classification Name", "koscom.mdcsrealtime.bonda.exture.v2.018.repoclassificationname", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_1 = ProtoField.new("Repo Trade Period 1", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_10 = ProtoField.new("Repo Trade Period 10", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod10", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_2 = ProtoField.new("Repo Trade Period 2", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_3 = ProtoField.new("Repo Trade Period 3", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod3", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_4 = ProtoField.new("Repo Trade Period 4", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod4", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_5 = ProtoField.new("Repo Trade Period 5", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod5", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_6 = ProtoField.new("Repo Trade Period 6", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod6", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_7 = ProtoField.new("Repo Trade Period 7", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod7", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_8 = ProtoField.new("Repo Trade Period 8", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod8", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_9 = ProtoField.new("Repo Trade Period 9", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeperiod9", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_market_a_price_with_yield = ProtoField.new("Report Market A Price With Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.reportmarketapricewithyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_market_yield_rate = ProtoField.new("Report Market Yield Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.reportmarketyieldrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_trading_total_trading_volume = ProtoField.new("Report Trading Total Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.reporttradingtotaltradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_category_name = ProtoField.new("Retail Bond Category Name", "koscom.mdcsrealtime.bonda.exture.v2.018.retailbondcategoryname", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_category_name_in_en = ProtoField.new("Retail Bond Category Name In En", "koscom.mdcsrealtime.bonda.exture.v2.018.retailbondcategorynameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_generated_quotes = ProtoField.new("Retail Bond Generated Quotes", "koscom.mdcsrealtime.bonda.exture.v2.018.retailbondgeneratedquotes", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_type_code = ProtoField.new("Retail Bond Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.retailbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.rfq_accumulated_trading_value = ProtoField.new("Rfq Accumulated Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.rfqaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.risk_bond_redemption_type_code = ProtoField.new("Risk Bond Redemption Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.riskbondredemptiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sale_date = ProtoField.new("Sale Date", "koscom.mdcsrealtime.bonda.exture.v2.018.saledate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_call_exercise_end_date = ProtoField.new("Second Call Exercise End Date", "koscom.mdcsrealtime.bonda.exture.v2.018.secondcallexerciseenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_call_exercise_start_date = ProtoField.new("Second Call Exercise Start Date", "koscom.mdcsrealtime.bonda.exture.v2.018.secondcallexercisestartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_put_exercise_end_date = ProtoField.new("Second Put Exercise End Date", "koscom.mdcsrealtime.bonda.exture.v2.018.secondputexerciseenddate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_put_exercise_start_date = ProtoField.new("Second Put Exercise Start Date", "koscom.mdcsrealtime.bonda.exture.v2.018.secondputexercisestartdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.securitization_type_code = ProtoField.new("Securitization Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.securitizationtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.bonda.exture.v2.018.sessionid", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.session_start_end_code = ProtoField.new("Session Start End Code", "koscom.mdcsrealtime.bonda.exture.v2.018.sessionstartendcode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.settlement_date = ProtoField.new("Settlement Date", "koscom.mdcsrealtime.bonda.exture.v2.018.settlementdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_1 = ProtoField.new("Sf Ratings 1", "koscom.mdcsrealtime.bonda.exture.v2.018.sfratings1", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_2 = ProtoField.new("Sf Ratings 2", "koscom.mdcsrealtime.bonda.exture.v2.018.sfratings2", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_3 = ProtoField.new("Sf Ratings 3", "koscom.mdcsrealtime.bonda.exture.v2.018.sfratings3", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_4 = ProtoField.new("Sf Ratings 4", "koscom.mdcsrealtime.bonda.exture.v2.018.sfratings4", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.shortterm_interest_rates_type_code = ProtoField.new("Shortterm Interest Rates Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.shortterminterestratestypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.shortterm_yield = ProtoField.new("Shortterm Yield", "koscom.mdcsrealtime.bonda.exture.v2.018.shorttermyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.special_bond_issue_code = ProtoField.new("Special Bond Issue Code", "koscom.mdcsrealtime.bonda.exture.v2.018.specialbondissuecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.spread = ProtoField.new("Spread", "koscom.mdcsrealtime.bonda.exture.v2.018.spread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "koscom.mdcsrealtime.bonda.exture.v2.018.starttimeofaboardevent", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.step_applied = ProtoField.new("Step Applied", "koscom.mdcsrealtime.bonda.exture.v2.018.stepapplied", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.stopout_rate = ProtoField.new("Stopout Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.stopoutrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.strip_bond_type_code = ProtoField.new("Strip Bond Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.stripbondtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.substitute_price_of_securities = ProtoField.new("Substitute Price Of Securities", "koscom.mdcsrealtime.bonda.exture.v2.018.substitutepriceofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.taxation = ProtoField.new("Taxation", "koscom.mdcsrealtime.bonda.exture.v2.018.taxation", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.the_1_st_coupon_payment_date = ProtoField.new("The 1 St Coupon Payment Date", "koscom.mdcsrealtime.bonda.exture.v2.018.the1stcouponpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.the_date_to_decide_interest_rate = ProtoField.new("The Date To Decide Interest Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.thedatetodecideinterestrate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.timing_of_interest_rate_decision_type_code = ProtoField.new("Timing Of Interest Rate Decision Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.timingofinterestratedecisiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.bonda.exture.v2.018.todayshigh", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.bonda.exture.v2.018.todayslow", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_1_price = ProtoField.new("Total Bid Level 1 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_1_remaining_quantity = ProtoField.new("Total Bid Level 1 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel1remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_2_price = ProtoField.new("Total Bid Level 2 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_2_remaining_quantity = ProtoField.new("Total Bid Level 2 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel2remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_3_price = ProtoField.new("Total Bid Level 3 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_3_remaining_quantity = ProtoField.new("Total Bid Level 3 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel3remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_4_price = ProtoField.new("Total Bid Level 4 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_4_remaining_quantity = ProtoField.new("Total Bid Level 4 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel4remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_5_price = ProtoField.new("Total Bid Level 5 Price", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_5_remaining_quantity = ProtoField.new("Total Bid Level 5 Remaining Quantity", "koscom.mdcsrealtime.bonda.exture.v2.018.totalbidlevel5remainingquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.bonda.exture.v2.018.totalearningsindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.totalearningsindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.bonda.exture.v2.018.totalnumberofinstrumentsofthecontract", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.bonda.exture.v2.018.totalprofitindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.bonda.exture.v2.018.tradingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.bonda.exture.v2.018.tradinghalt", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "koscom.mdcsrealtime.bonda.exture.v2.018.tradinghaltreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "koscom.mdcsrealtime.bonda.exture.v2.018.tradinghalttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.bonda.exture.v2.018.tradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_value = ProtoField.new("Trading Value", "koscom.mdcsrealtime.bonda.exture.v2.018.tradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.bonda.exture.v2.018.tradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.transmission_date = ProtoField.new("Transmission Date", "koscom.mdcsrealtime.bonda.exture.v2.018.transmissiondate", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.bonda.exture.v2.018.transmissiontime", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trustee_code = ProtoField.new("Trustee Code", "koscom.mdcsrealtime.bonda.exture.v2.018.trusteecode", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.unstripped_balance = ProtoField.new("Unstripped Balance", "koscom.mdcsrealtime.bonda.exture.v2.018.unstrippedbalance", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.unusual_issuance_condition = ProtoField.new("Unusual Issuance Condition", "koscom.mdcsrealtime.bonda.exture.v2.018.unusualissuancecondition", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.upper_limit_coupon_rate = ProtoField.new("Upper Limit Coupon Rate", "koscom.mdcsrealtime.bonda.exture.v2.018.upperlimitcouponrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.weightofcleanindexvalueforintegrityindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.weightofsumindexvalueforintegrityindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_opening_price = ProtoField.new("Yield Opening Price", "koscom.mdcsrealtime.bonda.exture.v2.018.yieldopeningprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_to_maturity = ProtoField.new("Yield To Maturity", "koscom.mdcsrealtime.bonda.exture.v2.018.yieldtomaturity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_todays_high = ProtoField.new("Yield Todays High", "koscom.mdcsrealtime.bonda.exture.v2.018.yieldtodayshigh", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_todays_low = ProtoField.new("Yield Todays Low", "koscom.mdcsrealtime.bonda.exture.v2.018.yieldtodayslow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_double_11 = ProtoField.new("Zero Re Investment Index Double 11", "koscom.mdcsrealtime.bonda.exture.v2.018.zeroreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_float_12816 = ProtoField.new("Zero Re Investment Index Float 12816", "koscom.mdcsrealtime.bonda.exture.v2.018.zeroreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.bonda.exture.v2.018.zeroreinvestmentindexweight", ftypes.DOUBLE)

-- Koscom MdcsRealtime BondA Exture 2.018 Headers
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.bonda.exture.v2.018.packet", ftypes.STRING)

-- Koscom MdcsRealtime BondA 2.018 Application Messages
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_order_filled_plus_quote_message = ProtoField.new("Baby Bonds Order Filled Plus Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.babybondsorderfilledplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_quote_message = ProtoField.new("Baby Bonds Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.babybondsquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_reporting_market_yield_message = ProtoField.new("Baby Bonds Reporting Market Yield Message", "koscom.mdcsrealtime.bonda.exture.v2.018.babybondsreportingmarketyieldmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondindexkrxmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondktbindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondktbindextermstructuremessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondprimeindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_batch_data_message = ProtoField.new("Bonds Batch Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_credit_rating_information_message = ProtoField.new("Bonds Credit Rating Information Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondscreditratinginformationmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_isin_information_text_message = ProtoField.new("Bonds Isin Information Text Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsisininformationtextmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_isin_issue_information_message = ProtoField.new("Bonds Isin Issue Information Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsisinissueinformationmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_negotiated_trade_data_message = ProtoField.new("Bonds Negotiated Trade Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsnegotiatedtradedatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_order_filled_message = ProtoField.new("Bonds Order Filled Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondsorderfilledmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_total_remaining_volume_on_quotes_message = ProtoField.new("Bonds Total Remaining Volume On Quotes Message", "koscom.mdcsrealtime.bonda.exture.v2.018.bondstotalremainingvolumeonquotesmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.corporate_bonds_reference_message = ProtoField.new("Corporate Bonds Reference Message", "koscom.mdcsrealtime.bonda.exture.v2.018.corporatebondsreferencemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.general_bonds_ktb_order_filled_plus_quote_message = ProtoField.new("General Bonds Ktb Order Filled Plus Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.generalbondsktborderfilledplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.bonda.exture.v2.018.globalindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investor_activities_per_bond_types_message = ProtoField.new("Investor Activities Per Bond Types Message", "koscom.mdcsrealtime.bonda.exture.v2.018.investoractivitiesperbondtypesmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_closing_message = ProtoField.new("Issue Closing Message", "koscom.mdcsrealtime.bonda.exture.v2.018.issueclosingmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_event_message = ProtoField.new("Issue Event Message", "koscom.mdcsrealtime.bonda.exture.v2.018.issueeventmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.bonda.exture.v2.018.krxestimatedindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.bonda.exture.v2.018.krxindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_average_yield_message = ProtoField.new("Ktb Average Yield Message", "koscom.mdcsrealtime.bonda.exture.v2.018.ktbaverageyieldmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_confirmed_info_for_wit_message = ProtoField.new("Ktb Confirmed Info For Wit Message", "koscom.mdcsrealtime.bonda.exture.v2.018.ktbconfirmedinfoforwitmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_short_term_yield_message = ProtoField.new("Ktb Short Term Yield Message", "koscom.mdcsrealtime.bonda.exture.v2.018.ktbshorttermyieldmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_schedule_message = ProtoField.new("Market Operation Schedule Message", "koscom.mdcsrealtime.bonda.exture.v2.018.marketoperationschedulemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_ts_message = ProtoField.new("Market Operation Ts Message", "koscom.mdcsrealtime.bonda.exture.v2.018.marketoperationtsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_firm_sanctions_message = ProtoField.new("Member Firm Sanctions Message", "koscom.mdcsrealtime.bonda.exture.v2.018.memberfirmsanctionsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.pollingdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_disclosure_basic_exchange_rate_message = ProtoField.new("Regular Bonds Disclosure Basic Exchange Rate Message", "koscom.mdcsrealtime.bonda.exture.v2.018.regularbondsdisclosurebasicexchangeratemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_installment_repayment_date_message = ProtoField.new("Regular Bonds Installment Repayment Date Message", "koscom.mdcsrealtime.bonda.exture.v2.018.regularbondsinstallmentrepaymentdatemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_ktb_quote_message = ProtoField.new("Regular Bonds Ktb Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.regularbondsktbquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_batch_data_message = ProtoField.new("Repo Batch Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.repobatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_data_message = ProtoField.new("Repo Classification Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.repoclassificationdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_negotiated_trade_data_message = ProtoField.new("Repo Negotiated Trade Data Message", "koscom.mdcsrealtime.bonda.exture.v2.018.reponegotiatedtradedatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_order_filled_plus_quote_message = ProtoField.new("Repo Order Filled Plus Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.repoorderfilledplusquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_quote_message = ProtoField.new("Repo Quote Message", "koscom.mdcsrealtime.bonda.exture.v2.018.repoquotemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_availability_per_term_message = ProtoField.new("Repo Trade Availability Per Term Message", "koscom.mdcsrealtime.bonda.exture.v2.018.repotradeavailabilitypertermmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bonds_type_code_message = ProtoField.new("Retail Bonds Type Code Message", "koscom.mdcsrealtime.bonda.exture.v2.018.retailbondstypecodemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime BondA Exture 2.018 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime BondA Exture 2.018 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime BondA Exture 2.018 Show Options
omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_bonda_exture_v2_018.prefs.show_structs
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
-- Koscom MdcsRealtime BondA Exture 2.018 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code = {}

-- Size: Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.size = 14

-- Display: Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Accrued Interest Rate On Bank Holidays Type Code: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Accrued Interest Rate On Bank Holidays Type Code: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accrued_interest_rate_on_bank_holidays_type_code, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value = {}

-- Size: Accumulated Ask Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.size = 22

-- Display: Accumulated Ask Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Accumulated Ask Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Accumulated Ask Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Accumulated Ask Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume = {}

-- Size: Accumulated Ask Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.size = 15

-- Display: Accumulated Ask Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.display = function(value)
  return "Accumulated Ask Trading Volume: "..value
end

-- Dissect: Accumulated Ask Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value = {}

-- Size: Accumulated Bid Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.size = 22

-- Display: Accumulated Bid Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Accumulated Bid Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Accumulated Bid Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Accumulated Bid Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume = {}

-- Size: Accumulated Bid Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.size = 15

-- Display: Accumulated Bid Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.display = function(value)
  return "Accumulated Bid Trading Volume: "..value
end

-- Dissect: Accumulated Bid Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Accumulated Cash: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Accumulated Cash: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Accumulated Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Accumulated Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size = 15

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Additional Yield
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield = {}

-- Size: Additional Yield
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.size = 13

-- Display: Additional Yield
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Additional Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Additional Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Additional Yield
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.additional_yield, range, value, display)

  return offset + length, value
end

-- Additional Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date = {}

-- Size: Additional Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.size = 8

-- Display: Additional Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.display = function(value)
  return "Additional Yield Effective Date: "..value
end

-- Dissect: Additional Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.additional_yield_effective_date, range, value, display)

  return offset + length, value
end

-- Amortization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code = {}

-- Size: Amortization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.size = 1

-- Display: Amortization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.display = function(value)
  return "Amortization Type Code: "..value
end

-- Dissect: Amortization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.amortization_type_code, range, value, display)

  return offset + length, value
end

-- Applied Exchange Rate
koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate = {}

-- Size: Applied Exchange Rate
koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.size = 13

-- Display: Applied Exchange Rate
koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Applied Exchange Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Applied Exchange Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Applied Exchange Rate
koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.applied_exchange_rate, range, value, display)

  return offset + length, value
end

-- Ask Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo = {}

-- Size: Ask Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.size = 4

-- Display: Ask Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.display = function(value)
  return "Ask Duration Of Term Repo: "..value
end

-- Dissect: Ask Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_duration_of_term_repo, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price = {}

-- Size: Ask Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity = {}

-- Size: Ask Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size = 15

-- Display: Ask Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.display = function(value)
  return "Ask Level 1 Remaining Quantity: "..value
end

-- Dissect: Ask Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount = {}

-- Size: Ask Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.size = 22

-- Display: Ask Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 1 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Level 1 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield = {}

-- Size: Ask Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size = 13

-- Display: Ask Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 1 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Level 1 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_1_yield, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price = {}

-- Size: Ask Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity = {}

-- Size: Ask Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size = 15

-- Display: Ask Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.display = function(value)
  return "Ask Level 2 Remaining Quantity: "..value
end

-- Dissect: Ask Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount = {}

-- Size: Ask Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.size = 22

-- Display: Ask Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 2 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Level 2 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield = {}

-- Size: Ask Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size = 13

-- Display: Ask Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 2 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Level 2 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_2_yield, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price = {}

-- Size: Ask Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity = {}

-- Size: Ask Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size = 15

-- Display: Ask Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.display = function(value)
  return "Ask Level 3 Remaining Quantity: "..value
end

-- Dissect: Ask Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount = {}

-- Size: Ask Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.size = 22

-- Display: Ask Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 3 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Level 3 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield = {}

-- Size: Ask Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size = 13

-- Display: Ask Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 3 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Level 3 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_3_yield, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price = {}

-- Size: Ask Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size = 11

-- Display: Ask Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.display = function(value)
  return "Ask Level 4 Price: "..value
end

-- Dissect: Ask Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity = {}

-- Size: Ask Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size = 15

-- Display: Ask Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.display = function(value)
  return "Ask Level 4 Remaining Quantity: "..value
end

-- Dissect: Ask Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount = {}

-- Size: Ask Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.size = 22

-- Display: Ask Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 4 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Level 4 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield = {}

-- Size: Ask Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size = 13

-- Display: Ask Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 4 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Level 4 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_4_yield, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price = {}

-- Size: Ask Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size = 11

-- Display: Ask Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.display = function(value)
  return "Ask Level 5 Price: "..value
end

-- Dissect: Ask Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity = {}

-- Size: Ask Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size = 15

-- Display: Ask Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.display = function(value)
  return "Ask Level 5 Remaining Quantity: "..value
end

-- Dissect: Ask Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount = {}

-- Size: Ask Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.size = 22

-- Display: Ask Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 5 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Level 5 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield = {}

-- Size: Ask Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size = 13

-- Display: Ask Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Level 5 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Level 5 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_level_5_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price = {}

-- Size: Ask Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size = 11

-- Display: Ask Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.display = function(value)
  return "Ask Per Type Level 1 Price: "..value
end

-- Dissect: Ask Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity = {}

-- Size: Ask Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size = 15

-- Display: Ask Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.display = function(value)
  return "Ask Per Type Level 1 Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount = {}

-- Size: Ask Per Type Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.size = 22

-- Display: Ask Per Type Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 1 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Per Type Level 1 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Per Type Level 1 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield = {}

-- Size: Ask Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.size = 13

-- Display: Ask Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 1 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Per Type Level 1 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_1_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price = {}

-- Size: Ask Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size = 11

-- Display: Ask Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.display = function(value)
  return "Ask Per Type Level 2 Price: "..value
end

-- Dissect: Ask Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity = {}

-- Size: Ask Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size = 15

-- Display: Ask Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.display = function(value)
  return "Ask Per Type Level 2 Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount = {}

-- Size: Ask Per Type Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.size = 22

-- Display: Ask Per Type Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 2 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Per Type Level 2 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Per Type Level 2 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield = {}

-- Size: Ask Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.size = 13

-- Display: Ask Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 2 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Per Type Level 2 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_2_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price = {}

-- Size: Ask Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size = 11

-- Display: Ask Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.display = function(value)
  return "Ask Per Type Level 3 Price: "..value
end

-- Dissect: Ask Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity = {}

-- Size: Ask Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size = 15

-- Display: Ask Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.display = function(value)
  return "Ask Per Type Level 3 Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount = {}

-- Size: Ask Per Type Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.size = 22

-- Display: Ask Per Type Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 3 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Per Type Level 3 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Per Type Level 3 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield = {}

-- Size: Ask Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.size = 13

-- Display: Ask Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 3 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Per Type Level 3 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_3_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price = {}

-- Size: Ask Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size = 11

-- Display: Ask Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.display = function(value)
  return "Ask Per Type Level 4 Price: "..value
end

-- Dissect: Ask Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity = {}

-- Size: Ask Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size = 15

-- Display: Ask Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.display = function(value)
  return "Ask Per Type Level 4 Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount = {}

-- Size: Ask Per Type Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.size = 22

-- Display: Ask Per Type Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 4 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Per Type Level 4 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Per Type Level 4 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield = {}

-- Size: Ask Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.size = 13

-- Display: Ask Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 4 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Per Type Level 4 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_4_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price = {}

-- Size: Ask Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size = 11

-- Display: Ask Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.display = function(value)
  return "Ask Per Type Level 5 Price: "..value
end

-- Dissect: Ask Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity = {}

-- Size: Ask Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size = 15

-- Display: Ask Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.display = function(value)
  return "Ask Per Type Level 5 Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount = {}

-- Size: Ask Per Type Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.size = 22

-- Display: Ask Per Type Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 5 Trading Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Ask Per Type Level 5 Trading Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Ask Per Type Level 5 Trading Amount
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_trading_amount, range, value, display)

  return offset + length, value
end

-- Ask Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield = {}

-- Size: Ask Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.size = 13

-- Display: Ask Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Ask Per Type Level 5 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Ask Per Type Level 5 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Ask Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_level_5_yield, range, value, display)

  return offset + length, value
end

-- Ask Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity = {}

-- Size: Ask Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size = 15

-- Display: Ask Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.display = function(value)
  return "Ask Per Type Total Remaining Quantity: "..value
end

-- Dissect: Ask Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_per_type_total_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Ask Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code = {}

-- Size: Ask Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.size = 2

-- Display: Ask Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.display = function(value)
  return "Ask Repo Type Code: "..value
end

-- Dissect: Ask Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_repo_type_code, range, value, display)

  return offset + length, value
end

-- Ask Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity = {}

-- Size: Ask Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size = 15

-- Display: Ask Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.display = function(value)
  return "Ask Total Remaining Quantity: "..value
end

-- Dissect: Ask Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ask_total_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Convexity: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Convexity: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Coupon Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Coupon Price: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Current Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Current Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_bonda_exture_v2_018.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Duration: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Duration: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Duration
koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Forward Ytm: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Average Forward Ytm: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Remaining Maturity Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Remaining Maturity Price: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Spread: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Spread: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Spread
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.display = function(value)
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
koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_yield = {}

-- Size: Average Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.size = 13

-- Display: Average Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Yield
koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_yield, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_bonda_exture_v2_018.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Yld: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Average Yld: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Average Yld
koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Ytm: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Average Ytm: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Baby Bonds Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code = {}

-- Size: Baby Bonds Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.size = 3

-- Display: Baby Bonds Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.display = function(value)
  return "Baby Bonds Type Code: "..value
end

-- Dissect: Baby Bonds Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_type_code, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_bonda_exture_v2_018.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_bonda_exture_v2_018.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_bonda_exture_v2_018.base_date.display = function(value)
  if #value < 8 then
    return "Base Date: "..value
  end

  return "Base Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Base Date
koscom_mdcsrealtime_bonda_exture_v2_018.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.base_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding))
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code = {}

-- Size: Base Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.size = 1

-- Display: Base Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.display = function(value)
  return "Base Interest Rate On Bank Holidays Type Code: "..value
end

-- Dissect: Base Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_interest_rate_on_bank_holidays_type_code, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_bonda_exture_v2_018.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_bonda_exture_v2_018.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_bonda_exture_v2_018.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
koscom_mdcsrealtime_bonda_exture_v2_018.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_bonda_exture_v2_018.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_bonda_exture_v2_018.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_bonda_exture_v2_018.base_time.display = function(value)
  if #value < 6 then
    return "Base Time: "..value
  end

  return "Base Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Base Time
koscom_mdcsrealtime_bonda_exture_v2_018.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Basis Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Basis Price: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bid Closing Date
koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date = {}

-- Size: Bid Closing Date
koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.size = 8

-- Display: Bid Closing Date
koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.display = function(value)
  return "Bid Closing Date: "..value
end

-- Dissect: Bid Closing Date
koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_closing_date, range, value, display)

  return offset + length, value
end

-- Bid Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo = {}

-- Size: Bid Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.size = 4

-- Display: Bid Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.display = function(value)
  return "Bid Duration Of Term Repo: "..value
end

-- Dissect: Bid Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_duration_of_term_repo, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc = {}

-- Size: Bid Level 1 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.size = 1

-- Display: Bid Level 1 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.display = function(value)
  return "Bid Level 1 Including Gc: "..value
end

-- Dissect: Bid Level 1 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_including_gc, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price = {}

-- Size: Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity = {}

-- Size: Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size = 15

-- Display: Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.display = function(value)
  return "Bid Level 1 Remaining Quantity: "..value
end

-- Dissect: Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield = {}

-- Size: Bid Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size = 13

-- Display: Bid Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Level 1 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Level 1 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_1_yield, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc = {}

-- Size: Bid Level 2 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.size = 1

-- Display: Bid Level 2 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.display = function(value)
  return "Bid Level 2 Including Gc: "..value
end

-- Dissect: Bid Level 2 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_including_gc, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price = {}

-- Size: Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity = {}

-- Size: Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size = 15

-- Display: Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.display = function(value)
  return "Bid Level 2 Remaining Quantity: "..value
end

-- Dissect: Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield = {}

-- Size: Bid Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size = 13

-- Display: Bid Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Level 2 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Level 2 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_2_yield, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc = {}

-- Size: Bid Level 3 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.size = 1

-- Display: Bid Level 3 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.display = function(value)
  return "Bid Level 3 Including Gc: "..value
end

-- Dissect: Bid Level 3 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_including_gc, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price = {}

-- Size: Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity = {}

-- Size: Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size = 15

-- Display: Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.display = function(value)
  return "Bid Level 3 Remaining Quantity: "..value
end

-- Dissect: Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield = {}

-- Size: Bid Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size = 13

-- Display: Bid Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Level 3 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Level 3 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_3_yield, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc = {}

-- Size: Bid Level 4 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.size = 1

-- Display: Bid Level 4 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.display = function(value)
  return "Bid Level 4 Including Gc: "..value
end

-- Dissect: Bid Level 4 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_including_gc, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price = {}

-- Size: Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size = 11

-- Display: Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.display = function(value)
  return "Bid Level 4 Price: "..value
end

-- Dissect: Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity = {}

-- Size: Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size = 15

-- Display: Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.display = function(value)
  return "Bid Level 4 Remaining Quantity: "..value
end

-- Dissect: Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield = {}

-- Size: Bid Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size = 13

-- Display: Bid Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Level 4 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Level 4 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_4_yield, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc = {}

-- Size: Bid Level 5 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.size = 1

-- Display: Bid Level 5 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.display = function(value)
  return "Bid Level 5 Including Gc: "..value
end

-- Dissect: Bid Level 5 Including Gc
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_including_gc, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price = {}

-- Size: Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size = 11

-- Display: Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.display = function(value)
  return "Bid Level 5 Price: "..value
end

-- Dissect: Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity = {}

-- Size: Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size = 15

-- Display: Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.display = function(value)
  return "Bid Level 5 Remaining Quantity: "..value
end

-- Dissect: Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield = {}

-- Size: Bid Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size = 13

-- Display: Bid Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Level 5 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Level 5 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_level_5_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price = {}

-- Size: Bid Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size = 11

-- Display: Bid Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.display = function(value)
  return "Bid Per Type Level 1 Price: "..value
end

-- Dissect: Bid Per Type Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity = {}

-- Size: Bid Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size = 15

-- Display: Bid Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.display = function(value)
  return "Bid Per Type Level 1 Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield = {}

-- Size: Bid Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.size = 13

-- Display: Bid Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Per Type Level 1 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Per Type Level 1 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Per Type Level 1 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_1_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price = {}

-- Size: Bid Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size = 11

-- Display: Bid Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.display = function(value)
  return "Bid Per Type Level 2 Price: "..value
end

-- Dissect: Bid Per Type Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity = {}

-- Size: Bid Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size = 15

-- Display: Bid Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.display = function(value)
  return "Bid Per Type Level 2 Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield = {}

-- Size: Bid Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.size = 13

-- Display: Bid Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Per Type Level 2 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Per Type Level 2 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Per Type Level 2 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_2_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price = {}

-- Size: Bid Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size = 11

-- Display: Bid Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.display = function(value)
  return "Bid Per Type Level 3 Price: "..value
end

-- Dissect: Bid Per Type Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity = {}

-- Size: Bid Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size = 15

-- Display: Bid Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.display = function(value)
  return "Bid Per Type Level 3 Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield = {}

-- Size: Bid Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.size = 13

-- Display: Bid Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Per Type Level 3 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Per Type Level 3 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Per Type Level 3 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_3_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price = {}

-- Size: Bid Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size = 11

-- Display: Bid Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.display = function(value)
  return "Bid Per Type Level 4 Price: "..value
end

-- Dissect: Bid Per Type Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity = {}

-- Size: Bid Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size = 15

-- Display: Bid Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.display = function(value)
  return "Bid Per Type Level 4 Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield = {}

-- Size: Bid Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.size = 13

-- Display: Bid Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Per Type Level 4 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Per Type Level 4 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Per Type Level 4 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_4_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price = {}

-- Size: Bid Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size = 11

-- Display: Bid Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.display = function(value)
  return "Bid Per Type Level 5 Price: "..value
end

-- Dissect: Bid Per Type Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity = {}

-- Size: Bid Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size = 15

-- Display: Bid Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.display = function(value)
  return "Bid Per Type Level 5 Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield = {}

-- Size: Bid Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.size = 13

-- Display: Bid Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bid Per Type Level 5 Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bid Per Type Level 5 Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bid Per Type Level 5 Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_level_5_yield, range, value, display)

  return offset + length, value
end

-- Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity = {}

-- Size: Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size = 15

-- Display: Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.display = function(value)
  return "Bid Per Type Total Remaining Quantity: "..value
end

-- Dissect: Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_per_type_total_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Bid Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code = {}

-- Size: Bid Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.size = 2

-- Display: Bid Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.display = function(value)
  return "Bid Repo Type Code: "..value
end

-- Dissect: Bid Repo Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_repo_type_code, range, value, display)

  return offset + length, value
end

-- Bid Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity = {}

-- Size: Bid Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size = 15

-- Display: Bid Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.display = function(value)
  return "Bid Total Remaining Quantity: "..value
end

-- Dissect: Bid Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bid_total_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code = {}

-- Size: Board Event Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.size = 5

-- Display: Board Event Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id = {}

-- Size: Board Event Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.size = 3

-- Display: Board Event Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.board_id, range, value, display)

  return offset + length, value
end

-- Bond Category Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code = {}

-- Size: Bond Category Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.size = 6

-- Display: Bond Category Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.display = function(value)
  return "Bond Category Code: "..value
end

-- Dissect: Bond Category Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_category_code, range, value, display)

  return offset + length, value
end

-- Bond Delisted Date
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date = {}

-- Size: Bond Delisted Date
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.size = 8

-- Display: Bond Delisted Date
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.display = function(value)
  return "Bond Delisted Date: "..value
end

-- Dissect: Bond Delisted Date
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_delisted_date, range, value, display)

  return offset + length, value
end

-- Bond Delisting Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code = {}

-- Size: Bond Delisting Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.size = 2

-- Display: Bond Delisting Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.display = function(value)
  return "Bond Delisting Reason Code: "..value
end

-- Dissect: Bond Delisting Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_delisting_reason_code, range, value, display)

  return offset + length, value
end

-- Bond Guaranteed Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code = {}

-- Size: Bond Guaranteed Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.size = 1

-- Display: Bond Guaranteed Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.display = function(value)
  return "Bond Guaranteed Type Code: "..value
end

-- Dissect: Bond Guaranteed Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_guaranteed_type_code, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Bond Issuance Rate
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate = {}

-- Size: Bond Issuance Rate
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.size = 13

-- Display: Bond Issuance Rate
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bond Issuance Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bond Issuance Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bond Issuance Rate
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_issuance_rate, range, value, display)

  return offset + length, value
end

-- Bond Issuance Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code = {}

-- Size: Bond Issuance Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.size = 3

-- Display: Bond Issuance Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.display = function(value)
  return "Bond Issuance Type Code: "..value
end

-- Dissect: Bond Issuance Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_issuance_type_code, range, value, display)

  return offset + length, value
end

-- Bond Lead Manager Company Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code = {}

-- Size: Bond Lead Manager Company Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.size = 4

-- Display: Bond Lead Manager Company Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.display = function(value)
  return "Bond Lead Manager Company Code: "..value
end

-- Dissect: Bond Lead Manager Company Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_lead_manager_company_code, range, value, display)

  return offset + length, value
end

-- Bond Listing Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code = {}

-- Size: Bond Listing Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.size = 1

-- Display: Bond Listing Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.display = function(value)
  return "Bond Listing Type Code: "..value
end

-- Dissect: Bond Listing Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_listing_type_code, range, value, display)

  return offset + length, value
end

-- Bond Odd Lot Days Base Interest Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code = {}

-- Size: Bond Odd Lot Days Base Interest Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.size = 1

-- Display: Bond Odd Lot Days Base Interest Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.display = function(value)
  return "Bond Odd Lot Days Base Interest Type Code: "..value
end

-- Dissect: Bond Odd Lot Days Base Interest Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_odd_lot_days_base_interest_type_code, range, value, display)

  return offset + length, value
end

-- Bond Sale Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code = {}

-- Size: Bond Sale Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.size = 1

-- Display: Bond Sale Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.display = function(value)
  return "Bond Sale Type Code: "..value
end

-- Dissect: Bond Sale Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_sale_type_code, range, value, display)

  return offset + length, value
end

-- Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code = {}

-- Size: Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.size = 2

-- Display: Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.display = function(value)
  return "Bond Type Code: "..value
end

-- Dissect: Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_type_code, range, value, display)

  return offset + length, value
end

-- Bond Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield = {}

-- Size: Bond Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size = 13

-- Display: Bond Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Bond Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Bond Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Bond Yield
koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_yield, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_bonda_exture_v2_018.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_bonda_exture_v2_018.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.display = function(value)
  if #value < 8 then
    return "Calculating Date: "..value
  end

  return "Calculating Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding))
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.display = function(value)
  if #value < 6 then
    return "Calculating Time: "..value
  end

  return "Calculating Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding))
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size = 9

-- Display: Calculation Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.display = function(value)
  return "Calculation Time: "..value
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11 = {}

-- Size: Call Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.size = 11

-- Display: Call Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Call Re Investment Index Double 11: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Call Re Investment Index Double 11: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Call Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816 = {}

-- Size: Call Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.size = 16

-- Display: Call Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Call Re Investment Index Float 12816: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Call Re Investment Index Float 12816: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Call Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Call Re Investment Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Call Re Investment Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Cancellation
koscom_mdcsrealtime_bonda_exture_v2_018.cancellation = {}

-- Size: Cancellation
koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.size = 1

-- Display: Cancellation
koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.display = function(value)
  return "Cancellation: "..value
end

-- Dissect: Cancellation
koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.cancellation, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Cash Inflow: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Cash Inflow: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Category Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value = {}

-- Size: Category Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.size = 22

-- Display: Category Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Category Accumulated Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Category Accumulated Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Category Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Category Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume = {}

-- Size: Category Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.size = 15

-- Display: Category Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.display = function(value)
  return "Category Accumulated Trading Volume: "..value
end

-- Dissect: Category Accumulated Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Category Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price = {}

-- Size: Category Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.size = 11

-- Display: Category Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.display = function(value)
  return "Category Opening Price: "..value
end

-- Dissect: Category Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_opening_price, range, value, display)

  return offset + length, value
end

-- Category Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high = {}

-- Size: Category Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.size = 11

-- Display: Category Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.display = function(value)
  return "Category Todays High: "..value
end

-- Dissect: Category Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_todays_high, range, value, display)

  return offset + length, value
end

-- Category Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low = {}

-- Size: Category Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.size = 11

-- Display: Category Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.display = function(value)
  return "Category Todays Low: "..value
end

-- Dissect: Category Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.category_todays_low, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Clean Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Clean Price: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Clean Price
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11 = {}

-- Size: Clean Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.size = 11

-- Display: Clean Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Clean Price Index Double 11: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Clean Price Index Double 11: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Clean Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Clean Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816 = {}

-- Size: Clean Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.size = 16

-- Display: Clean Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Clean Price Index Float 12816: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Clean Price Index Float 12816: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Clean Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Clean Price Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Clean Price Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.size = 11

-- Display: Closing Price
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield = {}

-- Size: Closing Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.size = 11

-- Display: Closing Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Closing Price With Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Closing Price With Yield: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Closing Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_with_yield, range, value, display)

  return offset + length, value
end

-- Closing Price Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield = {}

-- Size: Closing Price Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.size = 13

-- Display: Closing Price Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Closing Price Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Closing Price Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Closing Price Yield
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_yield, range, value, display)

  return offset + length, value
end

-- Closing Price Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate = {}

-- Size: Closing Price Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.size = 13

-- Display: Closing Price Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Closing Price Yield Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Closing Price Yield Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Closing Price Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.closing_price_yield_rate, range, value, display)

  return offset + length, value
end

-- Co Cos Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code = {}

-- Size: Co Cos Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.size = 1

-- Display: Co Cos Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.display = function(value)
  return "Co Cos Type Code: "..value
end

-- Dissect: Co Cos Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.co_cos_type_code, range, value, display)

  return offset + length, value
end

-- Confirmation Of Lump Sum Payment
koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment = {}

-- Size: Confirmation Of Lump Sum Payment
koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.size = 1

-- Display: Confirmation Of Lump Sum Payment
koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.display = function(value)
  return "Confirmation Of Lump Sum Payment: "..value
end

-- Dissect: Confirmation Of Lump Sum Payment
koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.confirmation_of_lump_sum_payment, range, value, display)

  return offset + length, value
end

-- Contents Of Underlying Asset
koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset = {}

-- Size: Contents Of Underlying Asset
koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.size = 100

-- Display: Contents Of Underlying Asset
koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.display = function(value)
  return "Contents Of Underlying Asset: "..value
end

-- Dissect: Contents Of Underlying Asset
koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.contents_of_underlying_asset, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.convexity.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.convexity.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Convexity: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Convexity: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Convexity
koscom_mdcsrealtime_bonda_exture_v2_018.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.convexity, range, value, display)

  return offset + length, value
end

-- Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price = {}

-- Size: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size = 11

-- Display: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.display = function(value)
  return "Corporate Bonds Related To Securities Exercise Price: "..value
end

-- Dissect: Corporate Bonds Related To Securities Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.corporate_bonds_related_to_securities_exercise_price, range, value, display)

  return offset + length, value
end

-- Coupon Payment Date Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code = {}

-- Size: Coupon Payment Date Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.size = 1

-- Display: Coupon Payment Date Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.display = function(value)
  return "Coupon Payment Date Type Code: "..value
end

-- Dissect: Coupon Payment Date Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_date_type_code, range, value, display)

  return offset + length, value
end

-- Coupon Payment Decision Code For Bank Holidays
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays = {}

-- Size: Coupon Payment Decision Code For Bank Holidays
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.size = 1

-- Display: Coupon Payment Decision Code For Bank Holidays
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.display = function(value)
  return "Coupon Payment Decision Code For Bank Holidays: "..value
end

-- Dissect: Coupon Payment Decision Code For Bank Holidays
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_decision_code_for_bank_holidays, range, value, display)

  return offset + length, value
end

-- Coupon Payment Type Code String 1
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1 = {}

-- Size: Coupon Payment Type Code String 1
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.size = 1

-- Display: Coupon Payment Type Code String 1
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.display = function(value)
  return "Coupon Payment Type Code String 1: "..value
end

-- Dissect: Coupon Payment Type Code String 1
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_type_code_string_1, range, value, display)

  return offset + length, value
end

-- Coupon Payment Type Code String 2
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2 = {}

-- Size: Coupon Payment Type Code String 2
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.size = 2

-- Display: Coupon Payment Type Code String 2
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.display = function(value)
  return "Coupon Payment Type Code String 2: "..value
end

-- Dissect: Coupon Payment Type Code String 2
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_payment_type_code_string_2, range, value, display)

  return offset + length, value
end

-- Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate = {}

-- Size: Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size = 14

-- Display: Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Coupon Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Coupon Rate: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Coupon Rate Confirmation
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation = {}

-- Size: Coupon Rate Confirmation
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.size = 1

-- Display: Coupon Rate Confirmation
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.display = function(value)
  return "Coupon Rate Confirmation: "..value
end

-- Dissect: Coupon Rate Confirmation
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate_confirmation, range, value, display)

  return offset + length, value
end

-- Coupon Rate Decision Base Rate Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code = {}

-- Size: Coupon Rate Decision Base Rate Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.size = 2

-- Display: Coupon Rate Decision Base Rate Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.display = function(value)
  return "Coupon Rate Decision Base Rate Type Code: "..value
end

-- Dissect: Coupon Rate Decision Base Rate Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.coupon_rate_decision_base_rate_type_code, range, value, display)

  return offset + length, value
end

-- Credit Rating Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1 = {}

-- Size: Credit Rating Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.size = 4

-- Display: Credit Rating Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.display = function(value)
  return "Credit Rating Agency Code No 1: "..value
end

-- Dissect: Credit Rating Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_1, range, value, display)

  return offset + length, value
end

-- Credit Rating Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2 = {}

-- Size: Credit Rating Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.size = 4

-- Display: Credit Rating Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.display = function(value)
  return "Credit Rating Agency Code No 2: "..value
end

-- Dissect: Credit Rating Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_2, range, value, display)

  return offset + length, value
end

-- Credit Rating Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3 = {}

-- Size: Credit Rating Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.size = 4

-- Display: Credit Rating Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.display = function(value)
  return "Credit Rating Agency Code No 3: "..value
end

-- Dissect: Credit Rating Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_3, range, value, display)

  return offset + length, value
end

-- Credit Rating Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4 = {}

-- Size: Credit Rating Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.size = 4

-- Display: Credit Rating Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.display = function(value)
  return "Credit Rating Agency Code No 4: "..value
end

-- Dissect: Credit Rating Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_agency_code_no_4, range, value, display)

  return offset + length, value
end

-- Credit Rating Per Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1 = {}

-- Size: Credit Rating Per Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.size = 4

-- Display: Credit Rating Per Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.display = function(value)
  return "Credit Rating Per Agency Code No 1: "..value
end

-- Dissect: Credit Rating Per Agency Code No 1
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_1, range, value, display)

  return offset + length, value
end

-- Credit Rating Per Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2 = {}

-- Size: Credit Rating Per Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.size = 4

-- Display: Credit Rating Per Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.display = function(value)
  return "Credit Rating Per Agency Code No 2: "..value
end

-- Dissect: Credit Rating Per Agency Code No 2
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_2, range, value, display)

  return offset + length, value
end

-- Credit Rating Per Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3 = {}

-- Size: Credit Rating Per Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.size = 4

-- Display: Credit Rating Per Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.display = function(value)
  return "Credit Rating Per Agency Code No 3: "..value
end

-- Dissect: Credit Rating Per Agency Code No 3
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_3, range, value, display)

  return offset + length, value
end

-- Credit Rating Per Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4 = {}

-- Size: Credit Rating Per Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.size = 4

-- Display: Credit Rating Per Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.display = function(value)
  return "Credit Rating Per Agency Code No 4: "..value
end

-- Dissect: Credit Rating Per Agency Code No 4
koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.credit_rating_per_agency_code_no_4, range, value, display)

  return offset + length, value
end

-- Crowdfunding
koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding = {}

-- Size: Crowdfunding
koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.size = 1

-- Display: Crowdfunding
koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.display = function(value)
  return "Crowdfunding: "..value
end

-- Dissect: Crowdfunding
koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.crowdfunding, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.size = 3

-- Display: Currency Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.display = function(value)
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
koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Currency Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code = {}

-- Size: Currency Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.size = 1

-- Display: Currency Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.display = function(value)
  return "Currency Type Code: "..value
end

-- Dissect: Currency Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.currency_type_code, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_bonda_exture_v2_018.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_bonda_exture_v2_018.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_bonda_exture_v2_018.current_time.display = function(value)
  if #value < 4 then
    return "Current Time: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Current Time: "..hour
  end

  return "Current Time: "..hour..":"..minute
end

-- Dissect: Current Time
koscom_mdcsrealtime_bonda_exture_v2_018.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.current_time, range, value, display)

  return offset + length, value
end

-- Date To End Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising = {}

-- Size: Date To End Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.size = 8

-- Display: Date To End Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.display = function(value)
  return "Date To End Exercising: "..value
end

-- Dissect: Date To End Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.date_to_end_exercising, range, value, display)

  return offset + length, value
end

-- Date To Start Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising = {}

-- Size: Date To Start Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.size = 8

-- Display: Date To Start Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.display = function(value)
  return "Date To Start Exercising: "..value
end

-- Dissect: Date To Start Exercising
koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.date_to_start_exercising, range, value, display)

  return offset + length, value
end

-- Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code = {}

-- Size: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.size = 1

-- Display: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.display = function(value)
  return "Decimal Point Of Coupon Type Code: "..value
end

-- Dissect: Decimal Point Of Coupon Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.decimal_point_of_coupon_type_code, range, value, display)

  return offset + length, value
end

-- Designated Best Bid Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price = {}

-- Size: Designated Best Bid Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.size = 11

-- Display: Designated Best Bid Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.display = function(value)
  return "Designated Best Bid Price: "..value
end

-- Dissect: Designated Best Bid Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_best_bid_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 1 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin = {}

-- Size: Designated Bid Level 1 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.size = 12

-- Display: Designated Bid Level 1 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.display = function(value)
  return "Designated Bid Level 1 Isin: "..value
end

-- Dissect: Designated Bid Level 1 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price = {}

-- Size: Designated Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.size = 11

-- Display: Designated Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.display = function(value)
  return "Designated Bid Level 1 Price: "..value
end

-- Dissect: Designated Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 1 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity = {}

-- Size: Designated Bid Level 1 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 1 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 1 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 1 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_1_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 10 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin = {}

-- Size: Designated Bid Level 10 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.size = 12

-- Display: Designated Bid Level 10 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.display = function(value)
  return "Designated Bid Level 10 Isin: "..value
end

-- Dissect: Designated Bid Level 10 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 10 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price = {}

-- Size: Designated Bid Level 10 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.size = 11

-- Display: Designated Bid Level 10 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.display = function(value)
  return "Designated Bid Level 10 Price: "..value
end

-- Dissect: Designated Bid Level 10 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 10 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity = {}

-- Size: Designated Bid Level 10 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 10 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 10 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 10 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_10_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 2 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin = {}

-- Size: Designated Bid Level 2 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.size = 12

-- Display: Designated Bid Level 2 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.display = function(value)
  return "Designated Bid Level 2 Isin: "..value
end

-- Dissect: Designated Bid Level 2 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price = {}

-- Size: Designated Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.size = 11

-- Display: Designated Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.display = function(value)
  return "Designated Bid Level 2 Price: "..value
end

-- Dissect: Designated Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 2 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity = {}

-- Size: Designated Bid Level 2 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 2 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 2 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 2 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_2_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 3 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin = {}

-- Size: Designated Bid Level 3 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.size = 12

-- Display: Designated Bid Level 3 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.display = function(value)
  return "Designated Bid Level 3 Isin: "..value
end

-- Dissect: Designated Bid Level 3 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price = {}

-- Size: Designated Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.size = 11

-- Display: Designated Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.display = function(value)
  return "Designated Bid Level 3 Price: "..value
end

-- Dissect: Designated Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 3 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity = {}

-- Size: Designated Bid Level 3 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 3 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 3 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 3 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_3_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 4 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin = {}

-- Size: Designated Bid Level 4 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.size = 12

-- Display: Designated Bid Level 4 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.display = function(value)
  return "Designated Bid Level 4 Isin: "..value
end

-- Dissect: Designated Bid Level 4 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price = {}

-- Size: Designated Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.size = 11

-- Display: Designated Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.display = function(value)
  return "Designated Bid Level 4 Price: "..value
end

-- Dissect: Designated Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 4 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity = {}

-- Size: Designated Bid Level 4 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 4 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 4 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 4 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_4_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 5 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin = {}

-- Size: Designated Bid Level 5 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.size = 12

-- Display: Designated Bid Level 5 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.display = function(value)
  return "Designated Bid Level 5 Isin: "..value
end

-- Dissect: Designated Bid Level 5 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price = {}

-- Size: Designated Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.size = 11

-- Display: Designated Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.display = function(value)
  return "Designated Bid Level 5 Price: "..value
end

-- Dissect: Designated Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 5 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity = {}

-- Size: Designated Bid Level 5 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 5 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 5 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 5 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_5_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 6 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin = {}

-- Size: Designated Bid Level 6 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.size = 12

-- Display: Designated Bid Level 6 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.display = function(value)
  return "Designated Bid Level 6 Isin: "..value
end

-- Dissect: Designated Bid Level 6 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 6 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price = {}

-- Size: Designated Bid Level 6 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.size = 11

-- Display: Designated Bid Level 6 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.display = function(value)
  return "Designated Bid Level 6 Price: "..value
end

-- Dissect: Designated Bid Level 6 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 6 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity = {}

-- Size: Designated Bid Level 6 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 6 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 6 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 6 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_6_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 7 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin = {}

-- Size: Designated Bid Level 7 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.size = 12

-- Display: Designated Bid Level 7 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.display = function(value)
  return "Designated Bid Level 7 Isin: "..value
end

-- Dissect: Designated Bid Level 7 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 7 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price = {}

-- Size: Designated Bid Level 7 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.size = 11

-- Display: Designated Bid Level 7 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.display = function(value)
  return "Designated Bid Level 7 Price: "..value
end

-- Dissect: Designated Bid Level 7 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 7 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity = {}

-- Size: Designated Bid Level 7 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 7 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 7 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 7 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_7_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 8 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin = {}

-- Size: Designated Bid Level 8 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.size = 12

-- Display: Designated Bid Level 8 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.display = function(value)
  return "Designated Bid Level 8 Isin: "..value
end

-- Dissect: Designated Bid Level 8 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 8 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price = {}

-- Size: Designated Bid Level 8 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.size = 11

-- Display: Designated Bid Level 8 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.display = function(value)
  return "Designated Bid Level 8 Price: "..value
end

-- Dissect: Designated Bid Level 8 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 8 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity = {}

-- Size: Designated Bid Level 8 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 8 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 8 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 8 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_8_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 9 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin = {}

-- Size: Designated Bid Level 9 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.size = 12

-- Display: Designated Bid Level 9 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.display = function(value)
  return "Designated Bid Level 9 Isin: "..value
end

-- Dissect: Designated Bid Level 9 Isin
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_isin, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 9 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price = {}

-- Size: Designated Bid Level 9 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.size = 11

-- Display: Designated Bid Level 9 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.display = function(value)
  return "Designated Bid Level 9 Price: "..value
end

-- Dissect: Designated Bid Level 9 Price
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Designated Bid Level 9 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity = {}

-- Size: Designated Bid Level 9 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.size = 15

-- Display: Designated Bid Level 9 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.display = function(value)
  return "Designated Bid Level 9 Repo Remaining Quantity: "..value
end

-- Dissect: Designated Bid Level 9 Repo Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.designated_bid_level_9_repo_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Disclosing Data Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code = {}

-- Size: Disclosing Data Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.size = 3

-- Display: Disclosing Data Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.display = function(value)
  return "Disclosing Data Type Code: "..value
end

-- Dissect: Disclosing Data Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.disclosing_data_type_code, range, value, display)

  return offset + length, value
end

-- Disclosure Time
koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time = {}

-- Size: Disclosure Time
koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.size = 9

-- Display: Disclosure Time
koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.display = function(value)
  return "Disclosure Time: "..value
end

-- Dissect: Disclosure Time
koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.disclosure_time, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_bonda_exture_v2_018.duration = {}

-- Size: Duration
koscom_mdcsrealtime_bonda_exture_v2_018.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_bonda_exture_v2_018.duration.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.duration.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Duration: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Duration: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Duration
koscom_mdcsrealtime_bonda_exture_v2_018.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.duration, range, value, display)

  return offset + length, value
end

-- Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo = {}

-- Size: Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.size = 4

-- Display: Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.display = function(value)
  return "Duration Of Term Repo: "..value
end

-- Dissect: Duration Of Term Repo
koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.duration_of_term_repo, range, value, display)

  return offset + length, value
end

-- Els Condition 1
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1 = {}

-- Size: Els Condition 1
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.size = 100

-- Display: Els Condition 1
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.display = function(value)
  return "Els Condition 1: "..value
end

-- Dissect: Els Condition 1
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.els_condition_1, range, value, display)

  return offset + length, value
end

-- Els Condition 2
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2 = {}

-- Size: Els Condition 2
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.size = 100

-- Display: Els Condition 2
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.display = function(value)
  return "Els Condition 2: "..value
end

-- Dissect: Els Condition 2
koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.els_condition_2, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- English Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name = {}

-- Size: English Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.size = 80

-- Display: English Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.display = function(value)
  return "English Issue Name: "..value
end

-- Dissect: English Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.english_issue_name, range, value, display)

  return offset + length, value
end

-- Equitylinked Bond Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price = {}

-- Size: Equitylinked Bond Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.size = 11

-- Display: Equitylinked Bond Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Equitylinked Bond Exercise Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Equitylinked Bond Exercise Price: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Equitylinked Bond Exercise Price
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.equitylinked_bond_exercise_price, range, value, display)

  return offset + length, value
end

-- Equitylinked Bond Rights Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code = {}

-- Size: Equitylinked Bond Rights Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.size = 2

-- Display: Equitylinked Bond Rights Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.display = function(value)
  return "Equitylinked Bond Rights Type Code: "..value
end

-- Dissect: Equitylinked Bond Rights Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.equitylinked_bond_rights_type_code, range, value, display)

  return offset + length, value
end

-- Event End Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date = {}

-- Size: Event End Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.size = 8

-- Display: Event End Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.display = function(value)
  return "Event End Date: "..value
end

-- Dissect: Event End Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_end_date, range, value, display)

  return offset + length, value
end

-- Event Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code = {}

-- Size: Event Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.size = 4

-- Display: Event Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.display = function(value)
  return "Event Reason Code: "..value
end

-- Dissect: Event Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_reason_code, range, value, display)

  return offset + length, value
end

-- Event Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date = {}

-- Size: Event Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.size = 8

-- Display: Event Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.display = function(value)
  return "Event Start Date: "..value
end

-- Dissect: Event Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_start_date, range, value, display)

  return offset + length, value
end

-- Event Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code = {}

-- Size: Event Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.size = 2

-- Display: Event Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.display = function(value)
  return "Event Type Code: "..value
end

-- Dissect: Event Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.event_type_code, range, value, display)

  return offset + length, value
end

-- Exercise Ratio
koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio = {}

-- Size: Exercise Ratio
koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.size = 7

-- Display: Exercise Ratio
koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Exercise Ratio: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Exercise Ratio: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Exercise Ratio
koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.exercise_ratio, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Facility Fund
koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund = {}

-- Size: Facility Fund
koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.size = 22

-- Display: Facility Fund
koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Facility Fund: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Facility Fund: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Facility Fund
koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.facility_fund, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_bonda_exture_v2_018.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.filler_4, range, value, display)

  return offset + length, value
end

-- First Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date = {}

-- Size: First Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.size = 8

-- Display: First Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.display = function(value)
  return "First Call Exercise End Date: "..value
end

-- Dissect: First Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_call_exercise_end_date, range, value, display)

  return offset + length, value
end

-- First Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date = {}

-- Size: First Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.size = 8

-- Display: First Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.display = function(value)
  return "First Call Exercise Start Date: "..value
end

-- Dissect: First Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_call_exercise_start_date, range, value, display)

  return offset + length, value
end

-- First Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date = {}

-- Size: First Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.size = 8

-- Display: First Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.display = function(value)
  return "First Put Exercise End Date: "..value
end

-- Dissect: First Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_put_exercise_end_date, range, value, display)

  return offset + length, value
end

-- First Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date = {}

-- Size: First Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.size = 8

-- Display: First Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.display = function(value)
  return "First Put Exercise Start Date: "..value
end

-- Dissect: First Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.first_put_exercise_start_date, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Futures Basis Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Futures Basis Price: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_bonda_exture_v2_018.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.group_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.group_code, range, value, display)

  return offset + length, value
end

-- Guaranteed Rate For Payment
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment = {}

-- Size: Guaranteed Rate For Payment
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.size = 13

-- Display: Guaranteed Rate For Payment
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Guaranteed Rate For Payment: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Guaranteed Rate For Payment: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Guaranteed Rate For Payment
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.guaranteed_rate_for_payment, range, value, display)

  return offset + length, value
end

-- Guaranteed Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date = {}

-- Size: Guaranteed Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.size = 8

-- Display: Guaranteed Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.display = function(value)
  return "Guaranteed Yield Effective Date: "..value
end

-- Dissect: Guaranteed Yield Effective Date
koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.guaranteed_yield_effective_date, range, value, display)

  return offset + length, value
end

-- Hybrid Bond
koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond = {}

-- Size: Hybrid Bond
koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.size = 1

-- Display: Hybrid Bond
koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.display = function(value)
  return "Hybrid Bond: "..value
end

-- Dissect: Hybrid Bond
koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.hybrid_bond, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_bonda_exture_v2_018.index = {}

-- Size: Index
koscom_mdcsrealtime_bonda_exture_v2_018.index.size = 9

-- Display: Index
koscom_mdcsrealtime_bonda_exture_v2_018.index.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.index.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Index: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Index: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Index
koscom_mdcsrealtime_bonda_exture_v2_018.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Index Change Against The Previous Day: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Index Change Against The Previous Day: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.display = function(value)
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
koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.display = function(value)
  if value == "0" then
    return "Index Constituent: Included In Etf Not In Index (0)"
  end
  if value == "1" then
    return "Index Constituent: Included In Index (1)"
  end

  return "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_bonda_exture_v2_018.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Inflation Indexed Category
koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category = {}

-- Size: Inflation Indexed Category
koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.size = 1

-- Display: Inflation Indexed Category
koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.display = function(value)
  return "Inflation Indexed Category: "..value
end

-- Dissect: Inflation Indexed Category
koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.inflation_indexed_category, range, value, display)

  return offset + length, value
end

-- Inscription Type Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond = {}

-- Size: Inscription Type Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.size = 1

-- Display: Inscription Type Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.display = function(value)
  return "Inscription Type Of Bond: "..value
end

-- Dissect: Inscription Type Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.inscription_type_of_bond, range, value, display)

  return offset + length, value
end

-- Installment Repayment Date
koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date = {}

-- Size: Installment Repayment Date
koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.size = 8

-- Display: Installment Repayment Date
koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.display = function(value)
  return "Installment Repayment Date: "..value
end

-- Dissect: Installment Repayment Date
koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.installment_repayment_date, range, value, display)

  return offset + length, value
end

-- Institution Code
koscom_mdcsrealtime_bonda_exture_v2_018.institution_code = {}

-- Size: Institution Code
koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.size = 4

-- Display: Institution Code
koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.display = function(value)
  return "Institution Code: "..value
end

-- Dissect: Institution Code
koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.institution_code, range, value, display)

  return offset + length, value
end

-- Interest Payment
koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment = {}

-- Size: Interest Payment
koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.size = 1

-- Display: Interest Payment
koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.display = function(value)
  return "Interest Payment: "..value
end

-- Dissect: Interest Payment
koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_payment, range, value, display)

  return offset + length, value
end

-- Interest Rate Decision Other Base Rate Name
koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name = {}

-- Size: Interest Rate Decision Other Base Rate Name
koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.size = 20

-- Display: Interest Rate Decision Other Base Rate Name
koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.display = function(value)
  return "Interest Rate Decision Other Base Rate Name: "..value
end

-- Dissect: Interest Rate Decision Other Base Rate Name
koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_rate_decision_other_base_rate_name, range, value, display)

  return offset + length, value
end

-- Interest Type Code During Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization = {}

-- Size: Interest Type Code During Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.size = 1

-- Display: Interest Type Code During Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.display = function(value)
  return "Interest Type Code During Amortization: "..value
end

-- Dissect: Interest Type Code During Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.interest_type_code_during_amortization, range, value, display)

  return offset + length, value
end

-- Investment Caution Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code = {}

-- Size: Investment Caution Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.size = 1

-- Display: Investment Caution Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.display = function(value)
  return "Investment Caution Bond Type Code: "..value
end

-- Dissect: Investment Caution Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investment_caution_bond_type_code, range, value, display)

  return offset + length, value
end

-- Investor Code
koscom_mdcsrealtime_bonda_exture_v2_018.investor_code = {}

-- Size: Investor Code
koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.size = 4

-- Display: Investor Code
koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Isin
koscom_mdcsrealtime_bonda_exture_v2_018.isin = {}

-- Size: Isin
koscom_mdcsrealtime_bonda_exture_v2_018.isin.size = 12

-- Display: Isin
koscom_mdcsrealtime_bonda_exture_v2_018.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
koscom_mdcsrealtime_bonda_exture_v2_018.isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Issue Code Of Postexercise
koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise = {}

-- Size: Issue Code Of Postexercise
koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.size = 12

-- Display: Issue Code Of Postexercise
koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.display = function(value)
  return "Issue Code Of Postexercise: "..value
end

-- Dissect: Issue Code Of Postexercise
koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_code_of_postexercise, range, value, display)

  return offset + length, value
end

-- Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.issue_date = {}

-- Size: Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.size = 8

-- Display: Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.display = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.issue_name = {}

-- Size: Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.size = 80

-- Display: Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Issued Amount Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Issued Amount Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Issuer Code
koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code = {}

-- Size: Issuer Code
koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.size = 5

-- Display: Issuer Code
koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.display = function(value)
  return "Issuer Code: "..value
end

-- Dissect: Issuer Code
koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issuer_code, range, value, display)

  return offset + length, value
end

-- Issuing Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount = {}

-- Size: Issuing Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size = 22

-- Display: Issuing Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Issuing Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Issuing Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Issuing Amount
koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issuing_amount, range, value, display)

  return offset + length, value
end

-- Level Payment Amount
koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount = {}

-- Size: Level Payment Amount
koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.size = 22

-- Display: Level Payment Amount
koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Level Payment Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Level Payment Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Level Payment Amount
koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.level_payment_amount, range, value, display)

  return offset + length, value
end

-- Liquidation Trade
koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade = {}

-- Size: Liquidation Trade
koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.size = 1

-- Display: Liquidation Trade
koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.display = function(value)
  return "Liquidation Trade: "..value
end

-- Dissect: Liquidation Trade
koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.liquidation_trade, range, value, display)

  return offset + length, value
end

-- Listed Amount
koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount = {}

-- Size: Listed Amount
koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size = 22

-- Display: Listed Amount
koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Listed Amount: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Listed Amount: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Listed Amount
koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.listed_amount, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_bonda_exture_v2_018.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Loan Fund
koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund = {}

-- Size: Loan Fund
koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.size = 22

-- Display: Loan Fund
koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Loan Fund: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Loan Fund: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Loan Fund
koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.loan_fund, range, value, display)

  return offset + length, value
end

-- Lower Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate = {}

-- Size: Lower Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.size = 14

-- Display: Lower Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Lower Limit Coupon Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Lower Limit Coupon Rate: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Lower Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.lower_limit_coupon_rate, range, value, display)

  return offset + length, value
end

-- Maintenance Fund
koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund = {}

-- Size: Maintenance Fund
koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.size = 22

-- Display: Maintenance Fund
koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Maintenance Fund: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Maintenance Fund: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Maintenance Fund
koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maintenance_fund, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Market Capitalization Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Market Capitalization Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11 = {}

-- Size: Market Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.size = 11

-- Display: Market Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Market Price Index Double 11: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Market Price Index Double 11: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Market Price Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Market Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816 = {}

-- Size: Market Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.size = 16

-- Display: Market Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Market Price Index Float 12816: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Market Price Index Float 12816: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Market Price Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Market Price Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Market Price Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Market Value
koscom_mdcsrealtime_bonda_exture_v2_018.market_value = {}

-- Size: Market Value
koscom_mdcsrealtime_bonda_exture_v2_018.market_value.size = 11

-- Display: Market Value
koscom_mdcsrealtime_bonda_exture_v2_018.market_value.display = function(value)
  return "Market Value: "..value
end

-- Dissect: Market Value
koscom_mdcsrealtime_bonda_exture_v2_018.market_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.market_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_value, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Maximum Yield
koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield = {}

-- Size: Maximum Yield
koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.size = 11

-- Display: Maximum Yield
koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Maximum Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Maximum Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Maximum Yield
koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.maximum_yield, range, value, display)

  return offset + length, value
end

-- Mb Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code = {}

-- Size: Mb Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.size = 1

-- Display: Mb Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.display = function(value)
  return "Mb Type Code: "..value
end

-- Dissect: Mb Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.mb_type_code, range, value, display)

  return offset + length, value
end

-- Member Firm Trust Principal Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code = {}

-- Size: Member Firm Trust Principal Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.size = 5

-- Display: Member Firm Trust Principal Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.display = function(value)
  return "Member Firm Trust Principal Type Code: "..value
end

-- Dissect: Member Firm Trust Principal Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_firm_trust_principal_type_code, range, value, display)

  return offset + length, value
end

-- Member Number
koscom_mdcsrealtime_bonda_exture_v2_018.member_number = {}

-- Size: Member Number
koscom_mdcsrealtime_bonda_exture_v2_018.member_number.size = 5

-- Display: Member Number
koscom_mdcsrealtime_bonda_exture_v2_018.member_number.display = function(value)
  return "Member Number: "..value
end

-- Dissect: Member Number
koscom_mdcsrealtime_bonda_exture_v2_018.member_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.member_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_number, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_bonda_exture_v2_018.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_bonda_exture_v2_018.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_bonda_exture_v2_018.message_code.display = function(value)
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
  if value == "A701S" then
    return "Message Code: Market Operation Ts Message (A701S)"
  end
  if value == "A702S" then
    return "Message Code: Market Operation Ts Message (A702S)"
  end
  if value == "A703S" then
    return "Message Code: Market Operation Ts Message (A703S)"
  end
  if value == "A704S" then
    return "Message Code: Market Operation Ts Message (A704S)"
  end
  if value == "A705S" then
    return "Message Code: Market Operation Ts Message (A705S)"
  end
  if value == "A701Q" then
    return "Message Code: Market Operation Ts Message (A701Q)"
  end
  if value == "A701X" then
    return "Message Code: Market Operation Ts Message (A701X)"
  end
  if value == "A701B" then
    return "Message Code: Market Operation Ts Message (A701B)"
  end
  if value == "A701M" then
    return "Message Code: Market Operation Ts Message (A701M)"
  end
  if value == "A701K" then
    return "Message Code: Market Operation Ts Message (A701K)"
  end
  if value == "A701R" then
    return "Message Code: Market Operation Ts Message (A701R)"
  end
  if value == "A701F" then
    return "Message Code: Market Operation Ts Message (A701F)"
  end
  if value == "A702F" then
    return "Message Code: Market Operation Ts Message (A702F)"
  end
  if value == "A703F" then
    return "Message Code: Market Operation Ts Message (A703F)"
  end
  if value == "A704F" then
    return "Message Code: Market Operation Ts Message (A704F)"
  end
  if value == "A705F" then
    return "Message Code: Market Operation Ts Message (A705F)"
  end
  if value == "A706F" then
    return "Message Code: Market Operation Ts Message (A706F)"
  end
  if value == "A707F" then
    return "Message Code: Market Operation Ts Message (A707F)"
  end
  if value == "A708F" then
    return "Message Code: Market Operation Ts Message (A708F)"
  end
  if value == "A709F" then
    return "Message Code: Market Operation Ts Message (A709F)"
  end
  if value == "A710F" then
    return "Message Code: Market Operation Ts Message (A710F)"
  end
  if value == "A711F" then
    return "Message Code: Market Operation Ts Message (A711F)"
  end
  if value == "A712F" then
    return "Message Code: Market Operation Ts Message (A712F)"
  end
  if value == "A713F" then
    return "Message Code: Market Operation Ts Message (A713F)"
  end
  if value == "A715F" then
    return "Message Code: Market Operation Ts Message (A715F)"
  end
  if value == "A716F" then
    return "Message Code: Market Operation Ts Message (A716F)"
  end
  if value == "A717F" then
    return "Message Code: Market Operation Ts Message (A717F)"
  end
  if value == "A718F" then
    return "Message Code: Market Operation Ts Message (A718F)"
  end
  if value == "A701G" then
    return "Message Code: Market Operation Ts Message (A701G)"
  end
  if value == "A701E" then
    return "Message Code: Market Operation Ts Message (A701E)"
  end
  if value == "M401S" then
    return "Message Code: Market Operation Schedule Message (M401S)"
  end
  if value == "M402S" then
    return "Message Code: Market Operation Schedule Message (M402S)"
  end
  if value == "M403S" then
    return "Message Code: Market Operation Schedule Message (M403S)"
  end
  if value == "M404S" then
    return "Message Code: Market Operation Schedule Message (M404S)"
  end
  if value == "M405S" then
    return "Message Code: Market Operation Schedule Message (M405S)"
  end
  if value == "M401Q" then
    return "Message Code: Market Operation Schedule Message (M401Q)"
  end
  if value == "M401X" then
    return "Message Code: Market Operation Schedule Message (M401X)"
  end
  if value == "M401B" then
    return "Message Code: Market Operation Schedule Message (M401B)"
  end
  if value == "M401M" then
    return "Message Code: Market Operation Schedule Message (M401M)"
  end
  if value == "M401K" then
    return "Message Code: Market Operation Schedule Message (M401K)"
  end
  if value == "M401R" then
    return "Message Code: Market Operation Schedule Message (M401R)"
  end
  if value == "M401F" then
    return "Message Code: Market Operation Schedule Message (M401F)"
  end
  if value == "M402F" then
    return "Message Code: Market Operation Schedule Message (M402F)"
  end
  if value == "M403F" then
    return "Message Code: Market Operation Schedule Message (M403F)"
  end
  if value == "M404F" then
    return "Message Code: Market Operation Schedule Message (M404F)"
  end
  if value == "M405F" then
    return "Message Code: Market Operation Schedule Message (M405F)"
  end
  if value == "M406F" then
    return "Message Code: Market Operation Schedule Message (M406F)"
  end
  if value == "M407F" then
    return "Message Code: Market Operation Schedule Message (M407F)"
  end
  if value == "M408F" then
    return "Message Code: Market Operation Schedule Message (M408F)"
  end
  if value == "M409F" then
    return "Message Code: Market Operation Schedule Message (M409F)"
  end
  if value == "M410F" then
    return "Message Code: Market Operation Schedule Message (M410F)"
  end
  if value == "M411F" then
    return "Message Code: Market Operation Schedule Message (M411F)"
  end
  if value == "M412F" then
    return "Message Code: Market Operation Schedule Message (M412F)"
  end
  if value == "M413F" then
    return "Message Code: Market Operation Schedule Message (M413F)"
  end
  if value == "M415F" then
    return "Message Code: Market Operation Schedule Message (M415F)"
  end
  if value == "M416F" then
    return "Message Code: Market Operation Schedule Message (M416F)"
  end
  if value == "M417F" then
    return "Message Code: Market Operation Schedule Message (M417F)"
  end
  if value == "M418F" then
    return "Message Code: Market Operation Schedule Message (M418F)"
  end
  if value == "M401G" then
    return "Message Code: Market Operation Schedule Message (M401G)"
  end
  if value == "M401E" then
    return "Message Code: Market Operation Schedule Message (M401E)"
  end
  if value == "A601B" then
    return "Message Code: Issue Closing Message (A601B)"
  end
  if value == "A601M" then
    return "Message Code: Issue Closing Message (A601M)"
  end
  if value == "A601K" then
    return "Message Code: Issue Closing Message (A601K)"
  end
  if value == "A601R" then
    return "Message Code: Issue Closing Message (A601R)"
  end
  if value == "R301S" then
    return "Message Code: Member Firm Sanctions Message (R301S)"
  end
  if value == "R302S" then
    return "Message Code: Member Firm Sanctions Message (R302S)"
  end
  if value == "R303S" then
    return "Message Code: Member Firm Sanctions Message (R303S)"
  end
  if value == "R304S" then
    return "Message Code: Member Firm Sanctions Message (R304S)"
  end
  if value == "R305S" then
    return "Message Code: Member Firm Sanctions Message (R305S)"
  end
  if value == "R301Q" then
    return "Message Code: Member Firm Sanctions Message (R301Q)"
  end
  if value == "R301X" then
    return "Message Code: Member Firm Sanctions Message (R301X)"
  end
  if value == "R301B" then
    return "Message Code: Member Firm Sanctions Message (R301B)"
  end
  if value == "R301M" then
    return "Message Code: Member Firm Sanctions Message (R301M)"
  end
  if value == "R301K" then
    return "Message Code: Member Firm Sanctions Message (R301K)"
  end
  if value == "R301R" then
    return "Message Code: Member Firm Sanctions Message (R301R)"
  end
  if value == "B601B" then
    return "Message Code: Regular Bonds Ktb Quote Message (B601B)"
  end
  if value == "B601K" then
    return "Message Code: Regular Bonds Ktb Quote Message (B601K)"
  end
  if value == "A301B" then
    return "Message Code: Bonds Order Filled Message (A301B)"
  end
  if value == "A301M" then
    return "Message Code: Bonds Order Filled Message (A301M)"
  end
  if value == "A301K" then
    return "Message Code: Bonds Order Filled Message (A301K)"
  end
  if value == "G701B" then
    return "Message Code: General Bonds Ktb Order Filled Plus Quote Message (G701B)"
  end
  if value == "G701K" then
    return "Message Code: General Bonds Ktb Order Filled Plus Quote Message (G701K)"
  end
  if value == "C401B" then
    return "Message Code: Bonds Negotiated Trade Data Message (C401B)"
  end
  if value == "C401K" then
    return "Message Code: Bonds Negotiated Trade Data Message (C401K)"
  end
  if value == "C401R" then
    return "Message Code: Repo Negotiated Trade Data Message (C401R)"
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
  if value == "G001M" then
    return "Message Code: Baby Bonds Reporting Market Yield Message (G001M)"
  end
  if value == "PA01K" then
    return "Message Code: Ktb Confirmed Info For Wit Message (PA01K)"
  end
  if value == "PB01K" then
    return "Message Code: Ktb Short Term Yield Message (PB01K)"
  end
  if value == "PC01K" then
    return "Message Code: Ktb Average Yield Message (PC01K)"
  end
  if value == "JA077" then
    return "Message Code: Bonds Credit Rating Information Message (JA077)"
  end
  if value == "R401B" then
    return "Message Code: Regular Bonds Disclosure Basic Exchange Rate Message (R401B)"
  end
  if value == "P401B" then
    return "Message Code: Investor Activities Per Bond Types Message (P401B)"
  end
  if value == "P401M" then
    return "Message Code: Investor Activities Per Bond Types Message (P401M)"
  end
  if value == "P401K" then
    return "Message Code: Investor Activities Per Bond Types Message (P401K)"
  end
  if value == "J9077" then
    return "Message Code: Bonds Isin Issue Information Message (J9077)"
  end
  if value == "JB077" then
    return "Message Code: Bonds Isin Information Text Message (JB077)"
  end
  if value == "B601M" then
    return "Message Code: Baby Bonds Quote Message (B601M)"
  end
  if value == "B601R" then
    return "Message Code: Repo Quote Message (B601R)"
  end
  if value == "OA01B" then
    return "Message Code: Bonds Total Remaining Volume On Quotes Message (OA01B)"
  end
  if value == "OA01M" then
    return "Message Code: Bonds Total Remaining Volume On Quotes Message (OA01M)"
  end
  if value == "G701M" then
    return "Message Code: Baby Bonds Order Filled Plus Quote Message (G701M)"
  end
  if value == "G701R" then
    return "Message Code: Repo Order Filled Plus Quote Message (G701R)"
  end

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_bonda_exture_v2_018.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment = {}

-- Size: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.size = 4

-- Display: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.display = function(value)
  return "Monthly Cycle Of Coupon Payment: "..value
end

-- Dissect: Monthly Cycle Of Coupon Payment
koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.monthly_cycle_of_coupon_payment, range, value, display)

  return offset + length, value
end

-- Net Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity = {}

-- Size: Net Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.size = 15

-- Display: Net Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.display = function(value)
  return "Net Bid Per Type Total Remaining Quantity: "..value
end

-- Dissect: Net Bid Per Type Total Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.net_bid_per_type_total_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Next Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date = {}

-- Size: Next Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.size = 8

-- Display: Next Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.display = function(value)
  return "Next Coupon Payment Date: "..value
end

-- Dissect: Next Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.next_coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Number Of Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization = {}

-- Size: Number Of Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.size = 5

-- Display: Number Of Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.display = function(value)
  return "Number Of Amortization: "..value
end

-- Dissect: Number Of Amortization
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_amortization, range, value, display)

  return offset + length, value
end

-- Number Of Months For Grace
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace = {}

-- Size: Number Of Months For Grace
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.size = 4

-- Display: Number Of Months For Grace
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.display = function(value)
  return "Number Of Months For Grace: "..value
end

-- Dissect: Number Of Months For Grace
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_months_for_grace, range, value, display)

  return offset + length, value
end

-- Number Of Months To Pay Interest
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest = {}

-- Size: Number Of Months To Pay Interest
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.size = 4

-- Display: Number Of Months To Pay Interest
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.display = function(value)
  return "Number Of Months To Pay Interest: "..value
end

-- Dissect: Number Of Months To Pay Interest
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_months_to_pay_interest, range, value, display)

  return offset + length, value
end

-- Number Of Repo Trade Periods
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods = {}

-- Size: Number Of Repo Trade Periods
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.size = 3

-- Display: Number Of Repo Trade Periods
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.display = function(value)
  return "Number Of Repo Trade Periods: "..value
end

-- Dissect: Number Of Repo Trade Periods
koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.number_of_repo_trade_periods, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size = 11

-- Display: Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Optionembedded Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code = {}

-- Size: Optionembedded Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.size = 1

-- Display: Optionembedded Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.display = function(value)
  return "Optionembedded Type Code: "..value
end

-- Dissect: Optionembedded Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.optionembedded_type_code, range, value, display)

  return offset + length, value
end

-- Original Bond Type Code Subjec To Strip
koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip = {}

-- Size: Original Bond Type Code Subjec To Strip
koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.size = 12

-- Display: Original Bond Type Code Subjec To Strip
koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.display = function(value)
  return "Original Bond Type Code Subjec To Strip: "..value
end

-- Dissect: Original Bond Type Code Subjec To Strip
koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.original_bond_type_code_subjec_to_strip, range, value, display)

  return offset + length, value
end

-- Other Funds
koscom_mdcsrealtime_bonda_exture_v2_018.other_funds = {}

-- Size: Other Funds
koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.size = 22

-- Display: Other Funds
koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Other Funds: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Other Funds: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Other Funds
koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.other_funds, range, value, display)

  return offset + length, value
end

-- Other Types Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond = {}

-- Size: Other Types Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.size = 1

-- Display: Other Types Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.display = function(value)
  return "Other Types Of Bond: "..value
end

-- Dissect: Other Types Of Bond
koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.other_types_of_bond, range, value, display)

  return offset + length, value
end

-- Participating Rate
koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate = {}

-- Size: Participating Rate
koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.size = 11

-- Display: Participating Rate
koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Participating Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Participating Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Participating Rate
koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.participating_rate, range, value, display)

  return offset + length, value
end

-- Payment Agent Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code = {}

-- Size: Payment Agent Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.size = 4

-- Display: Payment Agent Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.display = function(value)
  return "Payment Agent Code: "..value
end

-- Dissect: Payment Agent Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.payment_agent_code, range, value, display)

  return offset + length, value
end

-- Payment Guarantor Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code = {}

-- Size: Payment Guarantor Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.size = 4

-- Display: Payment Guarantor Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.display = function(value)
  return "Payment Guarantor Code: "..value
end

-- Dissect: Payment Guarantor Code
koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.payment_guarantor_code, range, value, display)

  return offset + length, value
end

-- Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status = {}

-- Size: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.size = 1

-- Display: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.display = function(value)
  return "Perpetual Bond Maturity Structure Status: "..value
end

-- Dissect: Perpetual Bond Maturity Structure Status
koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.perpetual_bond_maturity_structure_status, range, value, display)

  return offset + length, value
end

-- Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code = {}

-- Size: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size = 1

-- Display: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.display = function(value)
  return "Pre Issue Sale Coupon Payment Type Code: "..value
end

-- Dissect: Pre Issue Sale Coupon Payment Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.pre_issue_sale_coupon_payment_type_code, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Principal Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code = {}

-- Size: Principal Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.size = 14

-- Display: Principal Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Principal Accrued Interest Rate On Bank Holidays Type Code: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Principal Accrued Interest Rate On Bank Holidays Type Code: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Principal Accrued Interest Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_accrued_interest_rate_on_bank_holidays_type_code, range, value, display)

  return offset + length, value
end

-- Principal Base Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code = {}

-- Size: Principal Base Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.size = 1

-- Display: Principal Base Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.display = function(value)
  return "Principal Base Rate On Bank Holidays Type Code: "..value
end

-- Dissect: Principal Base Rate On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_base_rate_on_bank_holidays_type_code, range, value, display)

  return offset + length, value
end

-- Principal Guranteed Rate
koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate = {}

-- Size: Principal Guranteed Rate
koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.size = 13

-- Display: Principal Guranteed Rate
koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Principal Guranteed Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Principal Guranteed Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Principal Guranteed Rate
koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_guranteed_rate, range, value, display)

  return offset + length, value
end

-- Principal Payment Methods On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code = {}

-- Size: Principal Payment Methods On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.size = 1

-- Display: Principal Payment Methods On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.display = function(value)
  return "Principal Payment Methods On Bank Holidays Type Code: "..value
end

-- Dissect: Principal Payment Methods On Bank Holidays Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.principal_payment_methods_on_bank_holidays_type_code, range, value, display)

  return offset + length, value
end

-- Prior Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date = {}

-- Size: Prior Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.size = 8

-- Display: Prior Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.display = function(value)
  return "Prior Coupon Payment Date: "..value
end

-- Dissect: Prior Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.prior_coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.product_id = {}

-- Size: Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.product_id.size = 11

-- Display: Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
koscom_mdcsrealtime_bonda_exture_v2_018.product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.product_id, range, value, display)

  return offset + length, value
end

-- Profit Participating Accum Status
koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status = {}

-- Size: Profit Participating Accum Status
koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.size = 1

-- Display: Profit Participating Accum Status
koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.display = function(value)
  return "Profit Participating Accum Status: "..value
end

-- Dissect: Profit Participating Accum Status
koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.profit_participating_accum_status, range, value, display)

  return offset + length, value
end

-- Reason For Exercising A Call
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call = {}

-- Size: Reason For Exercising A Call
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.size = 50

-- Display: Reason For Exercising A Call
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.display = function(value)
  return "Reason For Exercising A Call: "..value
end

-- Dissect: Reason For Exercising A Call
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reason_for_exercising_a_call, range, value, display)

  return offset + length, value
end

-- Reason For Exercising A Put
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put = {}

-- Size: Reason For Exercising A Put
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.size = 50

-- Display: Reason For Exercising A Put
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.display = function(value)
  return "Reason For Exercising A Put: "..value
end

-- Dissect: Reason For Exercising A Put
koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reason_for_exercising_a_put, range, value, display)

  return offset + length, value
end

-- Record Date Of Dividend Payout
koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout = {}

-- Size: Record Date Of Dividend Payout
koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.size = 1

-- Display: Record Date Of Dividend Payout
koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.display = function(value)
  return "Record Date Of Dividend Payout: "..value
end

-- Dissect: Record Date Of Dividend Payout
koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.record_date_of_dividend_payout, range, value, display)

  return offset + length, value
end

-- Record Process Category
koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category = {}

-- Size: Record Process Category
koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.size = 1

-- Display: Record Process Category
koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.display = function(value)
  return "Record Process Category: "..value
end

-- Dissect: Record Process Category
koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.record_process_category, range, value, display)

  return offset + length, value
end

-- Redemption Date
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date = {}

-- Size: Redemption Date
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.size = 8

-- Display: Redemption Date
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.display = function(value)
  return "Redemption Date: "..value
end

-- Dissect: Redemption Date
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_date, range, value, display)

  return offset + length, value
end

-- Redemption Priority Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code = {}

-- Size: Redemption Priority Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.size = 1

-- Display: Redemption Priority Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.display = function(value)
  return "Redemption Priority Type Code: "..value
end

-- Dissect: Redemption Priority Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_priority_type_code, range, value, display)

  return offset + length, value
end

-- Redemption Ratio At Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity = {}

-- Size: Redemption Ratio At Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.size = 13

-- Display: Redemption Ratio At Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Redemption Ratio At Maturity: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Redemption Ratio At Maturity: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Redemption Ratio At Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.redemption_ratio_at_maturity, range, value, display)

  return offset + length, value
end

-- Reference Index For Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date = {}

-- Size: Reference Index For Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.size = 11

-- Display: Reference Index For Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Reference Index For Issue Date: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Reference Index For Issue Date: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Reference Index For Issue Date
koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reference_index_for_issue_date, range, value, display)

  return offset + length, value
end

-- Register Institute Code
koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code = {}

-- Size: Register Institute Code
koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.size = 4

-- Display: Register Institute Code
koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.display = function(value)
  return "Register Institute Code: "..value
end

-- Dissect: Register Institute Code
koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.register_institute_code, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Reinvest Call Cash: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Reinvest Call Cash: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Repo Classification Code
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code = {}

-- Size: Repo Classification Code
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.size = 2

-- Display: Repo Classification Code
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.display = function(value)
  return "Repo Classification Code: "..value
end

-- Dissect: Repo Classification Code
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_code, range, value, display)

  return offset + length, value
end

-- Repo Classification Name
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name = {}

-- Size: Repo Classification Name
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.size = 20

-- Display: Repo Classification Name
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.display = function(value)
  return "Repo Classification Name: "..value
end

-- Dissect: Repo Classification Name
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_name, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 1
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1 = {}

-- Size: Repo Trade Period 1
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.size = 3

-- Display: Repo Trade Period 1
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.display = function(value)
  return "Repo Trade Period 1: "..value
end

-- Dissect: Repo Trade Period 1
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_1, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 10
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10 = {}

-- Size: Repo Trade Period 10
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.size = 3

-- Display: Repo Trade Period 10
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.display = function(value)
  return "Repo Trade Period 10: "..value
end

-- Dissect: Repo Trade Period 10
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_10, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 2
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2 = {}

-- Size: Repo Trade Period 2
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.size = 3

-- Display: Repo Trade Period 2
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.display = function(value)
  return "Repo Trade Period 2: "..value
end

-- Dissect: Repo Trade Period 2
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_2, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 3
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3 = {}

-- Size: Repo Trade Period 3
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.size = 3

-- Display: Repo Trade Period 3
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.display = function(value)
  return "Repo Trade Period 3: "..value
end

-- Dissect: Repo Trade Period 3
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_3, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 4
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4 = {}

-- Size: Repo Trade Period 4
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.size = 3

-- Display: Repo Trade Period 4
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.display = function(value)
  return "Repo Trade Period 4: "..value
end

-- Dissect: Repo Trade Period 4
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_4, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 5
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5 = {}

-- Size: Repo Trade Period 5
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.size = 3

-- Display: Repo Trade Period 5
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.display = function(value)
  return "Repo Trade Period 5: "..value
end

-- Dissect: Repo Trade Period 5
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_5, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 6
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6 = {}

-- Size: Repo Trade Period 6
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.size = 3

-- Display: Repo Trade Period 6
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.display = function(value)
  return "Repo Trade Period 6: "..value
end

-- Dissect: Repo Trade Period 6
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_6, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 7
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7 = {}

-- Size: Repo Trade Period 7
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.size = 3

-- Display: Repo Trade Period 7
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.display = function(value)
  return "Repo Trade Period 7: "..value
end

-- Dissect: Repo Trade Period 7
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_7, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 8
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8 = {}

-- Size: Repo Trade Period 8
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.size = 3

-- Display: Repo Trade Period 8
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.display = function(value)
  return "Repo Trade Period 8: "..value
end

-- Dissect: Repo Trade Period 8
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_8, range, value, display)

  return offset + length, value
end

-- Repo Trade Period 9
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9 = {}

-- Size: Repo Trade Period 9
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.size = 3

-- Display: Repo Trade Period 9
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.display = function(value)
  return "Repo Trade Period 9: "..value
end

-- Dissect: Repo Trade Period 9
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_period_9, range, value, display)

  return offset + length, value
end

-- Report Market A Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield = {}

-- Size: Report Market A Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.size = 11

-- Display: Report Market A Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Report Market A Price With Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Report Market A Price With Yield: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Report Market A Price With Yield
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_market_a_price_with_yield, range, value, display)

  return offset + length, value
end

-- Report Market Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate = {}

-- Size: Report Market Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.size = 13

-- Display: Report Market Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Report Market Yield Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Report Market Yield Rate: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Report Market Yield Rate
koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_market_yield_rate, range, value, display)

  return offset + length, value
end

-- Report Trading Total Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume = {}

-- Size: Report Trading Total Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.size = 15

-- Display: Report Trading Total Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.display = function(value)
  return "Report Trading Total Trading Volume: "..value
end

-- Dissect: Report Trading Total Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.report_trading_total_trading_volume, range, value, display)

  return offset + length, value
end

-- Retail Bond Category Name
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name = {}

-- Size: Retail Bond Category Name
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.size = 20

-- Display: Retail Bond Category Name
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.display = function(value)
  return "Retail Bond Category Name: "..value
end

-- Dissect: Retail Bond Category Name
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_category_name, range, value, display)

  return offset + length, value
end

-- Retail Bond Category Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en = {}

-- Size: Retail Bond Category Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.size = 20

-- Display: Retail Bond Category Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.display = function(value)
  return "Retail Bond Category Name In En: "..value
end

-- Dissect: Retail Bond Category Name In En
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_category_name_in_en, range, value, display)

  return offset + length, value
end

-- Retail Bond Generated Quotes
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes = {}

-- Size: Retail Bond Generated Quotes
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.size = 1

-- Display: Retail Bond Generated Quotes
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.display = function(value)
  return "Retail Bond Generated Quotes: "..value
end

-- Dissect: Retail Bond Generated Quotes
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_generated_quotes, range, value, display)

  return offset + length, value
end

-- Retail Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code = {}

-- Size: Retail Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.size = 2

-- Display: Retail Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.display = function(value)
  return "Retail Bond Type Code: "..value
end

-- Dissect: Retail Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bond_type_code, range, value, display)

  return offset + length, value
end

-- Rfq Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value = {}

-- Size: Rfq Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.size = 22

-- Display: Rfq Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Rfq Accumulated Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Rfq Accumulated Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Rfq Accumulated Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.rfq_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Risk Bond Redemption Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code = {}

-- Size: Risk Bond Redemption Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.size = 1

-- Display: Risk Bond Redemption Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.display = function(value)
  return "Risk Bond Redemption Type Code: "..value
end

-- Dissect: Risk Bond Redemption Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.risk_bond_redemption_type_code, range, value, display)

  return offset + length, value
end

-- Sale Date
koscom_mdcsrealtime_bonda_exture_v2_018.sale_date = {}

-- Size: Sale Date
koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.size = 8

-- Display: Sale Date
koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.display = function(value)
  return "Sale Date: "..value
end

-- Dissect: Sale Date
koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sale_date, range, value, display)

  return offset + length, value
end

-- Second Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date = {}

-- Size: Second Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.size = 8

-- Display: Second Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.display = function(value)
  return "Second Call Exercise End Date: "..value
end

-- Dissect: Second Call Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_call_exercise_end_date, range, value, display)

  return offset + length, value
end

-- Second Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date = {}

-- Size: Second Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.size = 8

-- Display: Second Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.display = function(value)
  return "Second Call Exercise Start Date: "..value
end

-- Dissect: Second Call Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_call_exercise_start_date, range, value, display)

  return offset + length, value
end

-- Second Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date = {}

-- Size: Second Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.size = 8

-- Display: Second Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.display = function(value)
  return "Second Put Exercise End Date: "..value
end

-- Dissect: Second Put Exercise End Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_put_exercise_end_date, range, value, display)

  return offset + length, value
end

-- Second Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date = {}

-- Size: Second Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.size = 8

-- Display: Second Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.display = function(value)
  return "Second Put Exercise Start Date: "..value
end

-- Dissect: Second Put Exercise Start Date
koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.second_put_exercise_start_date, range, value, display)

  return offset + length, value
end

-- Securitization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code = {}

-- Size: Securitization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.size = 2

-- Display: Securitization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.display = function(value)
  return "Securitization Type Code: "..value
end

-- Dissect: Securitization Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.securitization_type_code, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_bonda_exture_v2_018.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_bonda_exture_v2_018.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code = {}

-- Size: Session Start End Code
koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.size = 2

-- Display: Session Start End Code
koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Settlement Date
koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date = {}

-- Size: Settlement Date
koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.size = 8

-- Display: Settlement Date
koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Sf Ratings 1
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1 = {}

-- Size: Sf Ratings 1
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.size = 1

-- Display: Sf Ratings 1
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.display = function(value)
  return "Sf Ratings 1: "..value
end

-- Dissect: Sf Ratings 1
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_1, range, value, display)

  return offset + length, value
end

-- Sf Ratings 2
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2 = {}

-- Size: Sf Ratings 2
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.size = 1

-- Display: Sf Ratings 2
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.display = function(value)
  return "Sf Ratings 2: "..value
end

-- Dissect: Sf Ratings 2
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_2, range, value, display)

  return offset + length, value
end

-- Sf Ratings 3
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3 = {}

-- Size: Sf Ratings 3
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.size = 1

-- Display: Sf Ratings 3
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.display = function(value)
  return "Sf Ratings 3: "..value
end

-- Dissect: Sf Ratings 3
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_3, range, value, display)

  return offset + length, value
end

-- Sf Ratings 4
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4 = {}

-- Size: Sf Ratings 4
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.size = 1

-- Display: Sf Ratings 4
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.display = function(value)
  return "Sf Ratings 4: "..value
end

-- Dissect: Sf Ratings 4
koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.sf_ratings_4, range, value, display)

  return offset + length, value
end

-- Shortterm Interest Rates Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code = {}

-- Size: Shortterm Interest Rates Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.size = 1

-- Display: Shortterm Interest Rates Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.display = function(value)
  return "Shortterm Interest Rates Type Code: "..value
end

-- Dissect: Shortterm Interest Rates Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.shortterm_interest_rates_type_code, range, value, display)

  return offset + length, value
end

-- Shortterm Yield
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield = {}

-- Size: Shortterm Yield
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.size = 13

-- Display: Shortterm Yield
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Shortterm Yield: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Shortterm Yield: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Shortterm Yield
koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.shortterm_yield, range, value, display)

  return offset + length, value
end

-- Special Bond Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code = {}

-- Size: Special Bond Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.size = 3

-- Display: Special Bond Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.display = function(value)
  return "Special Bond Issue Code: "..value
end

-- Dissect: Special Bond Issue Code
koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.special_bond_issue_code, range, value, display)

  return offset + length, value
end

-- Spread
koscom_mdcsrealtime_bonda_exture_v2_018.spread = {}

-- Size: Spread
koscom_mdcsrealtime_bonda_exture_v2_018.spread.size = 10

-- Display: Spread
koscom_mdcsrealtime_bonda_exture_v2_018.spread.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.spread.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Spread: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Spread: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Spread
koscom_mdcsrealtime_bonda_exture_v2_018.spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.spread, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
koscom_mdcsrealtime_bonda_exture_v2_018.step_applied = {}

-- Size: Step Applied
koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.size = 2

-- Display: Step Applied
koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Stopout Rate
koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate = {}

-- Size: Stopout Rate
koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.size = 14

-- Display: Stopout Rate
koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Stopout Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Stopout Rate: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Stopout Rate
koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.stopout_rate, range, value, display)

  return offset + length, value
end

-- Strip Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code = {}

-- Size: Strip Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.size = 1

-- Display: Strip Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.display = function(value)
  return "Strip Bond Type Code: "..value
end

-- Dissect: Strip Bond Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.strip_bond_type_code, range, value, display)

  return offset + length, value
end

-- Substitute Price Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities = {}

-- Size: Substitute Price Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.size = 11

-- Display: Substitute Price Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.display = function(value)
  return "Substitute Price Of Securities: "..value
end

-- Dissect: Substitute Price Of Securities
koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.substitute_price_of_securities, range, value, display)

  return offset + length, value
end

-- Taxation
koscom_mdcsrealtime_bonda_exture_v2_018.taxation = {}

-- Size: Taxation
koscom_mdcsrealtime_bonda_exture_v2_018.taxation.size = 1

-- Display: Taxation
koscom_mdcsrealtime_bonda_exture_v2_018.taxation.display = function(value)
  return "Taxation: "..value
end

-- Dissect: Taxation
koscom_mdcsrealtime_bonda_exture_v2_018.taxation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.taxation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.taxation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.taxation, range, value, display)

  return offset + length, value
end

-- The 1 St Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date = {}

-- Size: The 1 St Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.size = 8

-- Display: The 1 St Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.display = function(value)
  return "The 1 St Coupon Payment Date: "..value
end

-- Dissect: The 1 St Coupon Payment Date
koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.the_1_st_coupon_payment_date, range, value, display)

  return offset + length, value
end

-- The Date To Decide Interest Rate
koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate = {}

-- Size: The Date To Decide Interest Rate
koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.size = 8

-- Display: The Date To Decide Interest Rate
koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.display = function(value)
  return "The Date To Decide Interest Rate: "..value
end

-- Dissect: The Date To Decide Interest Rate
koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.the_date_to_decide_interest_rate, range, value, display)

  return offset + length, value
end

-- Timing Of Interest Rate Decision Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code = {}

-- Size: Timing Of Interest Rate Decision Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.size = 1

-- Display: Timing Of Interest Rate Decision Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.display = function(value)
  return "Timing Of Interest Rate Decision Type Code: "..value
end

-- Dissect: Timing Of Interest Rate Decision Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.timing_of_interest_rate_decision_type_code, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size = 11

-- Display: Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size = 11

-- Display: Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price = {}

-- Size: Total Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.size = 11

-- Display: Total Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.display = function(value)
  return "Total Bid Level 1 Price: "..value
end

-- Dissect: Total Bid Level 1 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Total Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity = {}

-- Size: Total Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.size = 15

-- Display: Total Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.display = function(value)
  return "Total Bid Level 1 Remaining Quantity: "..value
end

-- Dissect: Total Bid Level 1 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_1_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Total Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price = {}

-- Size: Total Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.size = 11

-- Display: Total Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.display = function(value)
  return "Total Bid Level 2 Price: "..value
end

-- Dissect: Total Bid Level 2 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Total Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity = {}

-- Size: Total Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.size = 15

-- Display: Total Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.display = function(value)
  return "Total Bid Level 2 Remaining Quantity: "..value
end

-- Dissect: Total Bid Level 2 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_2_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Total Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price = {}

-- Size: Total Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.size = 11

-- Display: Total Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.display = function(value)
  return "Total Bid Level 3 Price: "..value
end

-- Dissect: Total Bid Level 3 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Total Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity = {}

-- Size: Total Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.size = 15

-- Display: Total Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.display = function(value)
  return "Total Bid Level 3 Remaining Quantity: "..value
end

-- Dissect: Total Bid Level 3 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_3_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Total Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price = {}

-- Size: Total Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.size = 11

-- Display: Total Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.display = function(value)
  return "Total Bid Level 4 Price: "..value
end

-- Dissect: Total Bid Level 4 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Total Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity = {}

-- Size: Total Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.size = 15

-- Display: Total Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.display = function(value)
  return "Total Bid Level 4 Remaining Quantity: "..value
end

-- Dissect: Total Bid Level 4 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_4_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Total Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price = {}

-- Size: Total Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.size = 11

-- Display: Total Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.display = function(value)
  return "Total Bid Level 5 Price: "..value
end

-- Dissect: Total Bid Level 5 Price
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Total Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity = {}

-- Size: Total Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.size = 15

-- Display: Total Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.display = function(value)
  return "Total Bid Level 5 Remaining Quantity: "..value
end

-- Dissect: Total Bid Level 5 Remaining Quantity
koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_bid_level_5_remaining_quantity, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Total Earnings Index: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Total Earnings Index: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Total Earnings Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Total Earnings Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Total Profit Index: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Total Profit Index: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_bonda_exture_v2_018.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.display = function(value)
  return "Trading Date: "..value
end

-- Dissect: Trading Date
koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_bonda_exture_v2_018.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.trading_value = {}

-- Size: Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size = 22

-- Display: Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Trading Value: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Trading Value: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Trading Value
koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_value, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size = 10

-- Display: Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transmission Date
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date = {}

-- Size: Transmission Date
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size = 8

-- Display: Transmission Date
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.display = function(value)
  return "Transmission Date: "..value
end

-- Dissect: Transmission Date
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.transmission_date, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.size = 9

-- Display: Transmission Time
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.display = function(value)
  return "Transmission Time: "..value
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Trustee Code
koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code = {}

-- Size: Trustee Code
koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.size = 4

-- Display: Trustee Code
koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.display = function(value)
  return "Trustee Code: "..value
end

-- Dissect: Trustee Code
koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.trustee_code, range, value, display)

  return offset + length, value
end

-- Unstripped Balance
koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance = {}

-- Size: Unstripped Balance
koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.size = 22

-- Display: Unstripped Balance
koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Unstripped Balance: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Unstripped Balance: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Unstripped Balance
koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.unstripped_balance, range, value, display)

  return offset + length, value
end

-- Unusual Issuance Condition
koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition = {}

-- Size: Unusual Issuance Condition
koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.size = 60

-- Display: Unusual Issuance Condition
koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.display = function(value)
  return "Unusual Issuance Condition: "..value
end

-- Dissect: Unusual Issuance Condition
koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_bonda_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.unusual_issuance_condition, range, value, display)

  return offset + length, value
end

-- Upper Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate = {}

-- Size: Upper Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.size = 14

-- Display: Upper Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Upper Limit Coupon Rate: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 5 then
    digits = string.rep("0", 5 - #digits + 1)..digits
  end

  return "Upper Limit Coupon Rate: "..sign..digits:sub(1, #digits - 5)..".".. digits:sub(-5)
end

-- Dissect: Upper Limit Coupon Rate
koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.upper_limit_coupon_rate, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Weight Of Clean Index Value For Integrity Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Weight Of Clean Index Value For Integrity Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Weight Of Sum Index Value For Integrity Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Weight Of Sum Index Value For Integrity Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Yield Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price = {}

-- Size: Yield Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size = 13

-- Display: Yield Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Yield Opening Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Yield Opening Price: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Yield Opening Price
koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_opening_price, range, value, display)

  return offset + length, value
end

-- Yield To Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity = {}

-- Size: Yield To Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.size = 13

-- Display: Yield To Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Yield To Maturity: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Yield To Maturity: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Yield To Maturity
koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_to_maturity, range, value, display)

  return offset + length, value
end

-- Yield Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high = {}

-- Size: Yield Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size = 13

-- Display: Yield Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Yield Todays High: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Yield Todays High: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Yield Todays High
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_todays_high, range, value, display)

  return offset + length, value
end

-- Yield Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low = {}

-- Size: Yield Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size = 13

-- Display: Yield Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Yield Todays Low: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Yield Todays Low: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Yield Todays Low
koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.yield_todays_low, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11 = {}

-- Size: Zero Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.size = 11

-- Display: Zero Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Zero Re Investment Index Double 11: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Zero Re Investment Index Double 11: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Zero Re Investment Index Double 11
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816 = {}

-- Size: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.size = 16

-- Display: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Zero Re Investment Index Float 12816: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Zero Re Investment Index Float 12816: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Zero Re Investment Index Weight: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 6 then
    digits = string.rep("0", 6 - #digits + 1)..digits
  end

  return "Zero Re Investment Index Weight: "..sign..digits:sub(1, #digits - 6)..".".. digits:sub(-6)
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime BondA Exture 2.018
-----------------------------------------------------------------------

-- Repo Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message = {}

-- Size: Repo Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Value: FLOAT128
  index, trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.dissect(buffer, index, packet, parent)

  -- Ask Repo Type Code: String
  index, ask_repo_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.ask_repo_type_code.dissect(buffer, index, packet, parent)

  -- Ask Duration Of Term Repo: Int
  index, ask_duration_of_term_repo = koscom_mdcsrealtime_bonda_exture_v2_018.ask_duration_of_term_repo.dissect(buffer, index, packet, parent)

  -- Bid Repo Type Code: String
  index, bid_repo_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bid_repo_type_code.dissect(buffer, index, packet, parent)

  -- Bid Duration Of Term Repo: Int
  index, bid_duration_of_term_repo = koscom_mdcsrealtime_bonda_exture_v2_018.bid_duration_of_term_repo.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Category Opening Price: Double
  index, category_opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.category_opening_price.dissect(buffer, index, packet, parent)

  -- Category Todays High: Double
  index, category_todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_high.dissect(buffer, index, packet, parent)

  -- Category Todays Low: Double
  index, category_todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.category_todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Category Accumulated Trading Volume: Long
  index, category_accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Category Accumulated Trading Value: FLOAT128
  index, category_accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.category_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Trading Amount: FLOAT128
  index, ask_level_1_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 1 Price: Double
  index, total_bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 1 Remaining Quantity: Long
  index, total_bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Including Gc: String
  index, bid_level_1_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Price: Double
  index, ask_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Price: Double
  index, bid_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Remaining Quantity: Long
  index, ask_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Remaining Quantity: Long
  index, bid_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Trading Amount: FLOAT128
  index, ask_per_type_level_1_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Trading Amount: FLOAT128
  index, ask_level_2_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 2 Price: Double
  index, total_bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 2 Remaining Quantity: Long
  index, total_bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Including Gc: String
  index, bid_level_2_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Price: Double
  index, ask_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Price: Double
  index, bid_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Remaining Quantity: Long
  index, ask_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Remaining Quantity: Long
  index, bid_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Trading Amount: FLOAT128
  index, ask_per_type_level_2_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Trading Amount: FLOAT128
  index, ask_level_3_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 3 Price: Double
  index, total_bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 3 Remaining Quantity: Long
  index, total_bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Including Gc: String
  index, bid_level_3_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Price: Double
  index, ask_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Price: Double
  index, bid_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Remaining Quantity: Long
  index, ask_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Remaining Quantity: Long
  index, bid_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Trading Amount: FLOAT128
  index, ask_per_type_level_3_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Trading Amount: FLOAT128
  index, ask_level_4_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 4 Price: Double
  index, total_bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 4 Remaining Quantity: Long
  index, total_bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Including Gc: String
  index, bid_level_4_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Price: Double
  index, ask_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Price: Double
  index, bid_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Remaining Quantity: Long
  index, ask_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Remaining Quantity: Long
  index, bid_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Trading Amount: FLOAT128
  index, ask_per_type_level_4_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Trading Amount: FLOAT128
  index, ask_level_5_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 5 Price: Double
  index, total_bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 5 Remaining Quantity: Long
  index, total_bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Including Gc: String
  index, bid_level_5_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Price: Double
  index, ask_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Price: Double
  index, bid_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Remaining Quantity: Long
  index, ask_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Remaining Quantity: Long
  index, bid_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Trading Amount: FLOAT128
  index, ask_per_type_level_5_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Total Remaining Quantity: Long
  index, ask_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Total Remaining Quantity: Long
  index, bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Price: Double
  index, designated_bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Repo Remaining Quantity: Long
  index, designated_bid_level_1_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Isin: String
  index, designated_bid_level_1_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Price: Double
  index, designated_bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Repo Remaining Quantity: Long
  index, designated_bid_level_2_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Isin: String
  index, designated_bid_level_2_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Price: Double
  index, designated_bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Repo Remaining Quantity: Long
  index, designated_bid_level_3_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Isin: String
  index, designated_bid_level_3_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Price: Double
  index, designated_bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Repo Remaining Quantity: Long
  index, designated_bid_level_4_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Isin: String
  index, designated_bid_level_4_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Price: Double
  index, designated_bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Repo Remaining Quantity: Long
  index, designated_bid_level_5_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Isin: String
  index, designated_bid_level_5_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Price: Double
  index, designated_bid_level_6_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Repo Remaining Quantity: Long
  index, designated_bid_level_6_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Isin: String
  index, designated_bid_level_6_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Price: Double
  index, designated_bid_level_7_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Repo Remaining Quantity: Long
  index, designated_bid_level_7_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Isin: String
  index, designated_bid_level_7_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Price: Double
  index, designated_bid_level_8_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Repo Remaining Quantity: Long
  index, designated_bid_level_8_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Isin: String
  index, designated_bid_level_8_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Price: Double
  index, designated_bid_level_9_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Repo Remaining Quantity: Long
  index, designated_bid_level_9_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Isin: String
  index, designated_bid_level_9_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Price: Double
  index, designated_bid_level_10_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Repo Remaining Quantity: Long
  index, designated_bid_level_10_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Isin: String
  index, designated_bid_level_10_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.dissect(buffer, index, packet, parent)

  -- Designated Best Bid Price: Double
  index, designated_best_bid_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.dissect(buffer, index, packet, parent)

  -- Net Bid Per Type Total Remaining Quantity: Long
  index, net_bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Baby Bonds Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message = {}

-- Size: Baby Bonds Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Baby Bonds Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Baby Bonds Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Value: FLOAT128
  index, trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.dissect(buffer, index, packet, parent)

  -- Bond Yield: Double
  index, bond_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Yield Opening Price: Double
  index, yield_opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.dissect(buffer, index, packet, parent)

  -- Yield Todays High: Double
  index, yield_todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.dissect(buffer, index, packet, parent)

  -- Yield Todays Low: Double
  index, yield_todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Settlement Date: String
  index, settlement_date = koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Yield: Double
  index, ask_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Yield: Double
  index, bid_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Price: Double
  index, ask_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Price: Double
  index, bid_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Remaining Quantity: Long
  index, ask_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Remaining Quantity: Long
  index, bid_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Yield: Double
  index, ask_per_type_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Yield: Double
  index, bid_per_type_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Yield: Double
  index, ask_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Yield: Double
  index, bid_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Price: Double
  index, ask_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Price: Double
  index, bid_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Remaining Quantity: Long
  index, ask_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Remaining Quantity: Long
  index, bid_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Yield: Double
  index, ask_per_type_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Yield: Double
  index, bid_per_type_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Yield: Double
  index, ask_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Yield: Double
  index, bid_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Price: Double
  index, ask_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Price: Double
  index, bid_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Remaining Quantity: Long
  index, ask_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Remaining Quantity: Long
  index, bid_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Yield: Double
  index, ask_per_type_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Yield: Double
  index, bid_per_type_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Yield: Double
  index, ask_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Yield: Double
  index, bid_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Price: Double
  index, ask_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Price: Double
  index, bid_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Remaining Quantity: Long
  index, ask_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Remaining Quantity: Long
  index, bid_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Yield: Double
  index, ask_per_type_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Yield: Double
  index, bid_per_type_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Yield: Double
  index, ask_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Yield: Double
  index, bid_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Price: Double
  index, ask_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Price: Double
  index, bid_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Remaining Quantity: Long
  index, ask_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Remaining Quantity: Long
  index, bid_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Yield: Double
  index, ask_per_type_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Yield: Double
  index, bid_per_type_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Total Remaining Quantity: Long
  index, ask_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Total Remaining Quantity: Long
  index, bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Baby Bonds Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Total Remaining Volume On Quotes Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message = {}

-- Size: Bonds Total Remaining Volume On Quotes Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Total Remaining Volume On Quotes Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Total Remaining Volume On Quotes Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Total Remaining Quantity: Long
  index, ask_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Total Remaining Quantity: Long
  index, bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Total Remaining Volume On Quotes Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_total_remaining_volume_on_quotes_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message = {}

-- Size: Repo Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Duration Of Term Repo: Int
  index, duration_of_term_repo = koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Trading Amount: FLOAT128
  index, ask_level_1_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 1 Price: Double
  index, total_bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 1 Remaining Quantity: Long
  index, total_bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Including Gc: String
  index, bid_level_1_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Price: Double
  index, ask_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Price: Double
  index, bid_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Remaining Quantity: Long
  index, ask_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Remaining Quantity: Long
  index, bid_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Trading Amount: FLOAT128
  index, ask_per_type_level_1_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Trading Amount: FLOAT128
  index, ask_level_2_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 2 Price: Double
  index, total_bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 2 Remaining Quantity: Long
  index, total_bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Including Gc: String
  index, bid_level_2_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Price: Double
  index, ask_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Price: Double
  index, bid_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Remaining Quantity: Long
  index, ask_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Remaining Quantity: Long
  index, bid_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Trading Amount: FLOAT128
  index, ask_per_type_level_2_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Trading Amount: FLOAT128
  index, ask_level_3_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 3 Price: Double
  index, total_bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 3 Remaining Quantity: Long
  index, total_bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Including Gc: String
  index, bid_level_3_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Price: Double
  index, ask_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Price: Double
  index, bid_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Remaining Quantity: Long
  index, ask_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Remaining Quantity: Long
  index, bid_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Trading Amount: FLOAT128
  index, ask_per_type_level_3_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Trading Amount: FLOAT128
  index, ask_level_4_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 4 Price: Double
  index, total_bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 4 Remaining Quantity: Long
  index, total_bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Including Gc: String
  index, bid_level_4_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Price: Double
  index, ask_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Price: Double
  index, bid_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Remaining Quantity: Long
  index, ask_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Remaining Quantity: Long
  index, bid_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Trading Amount: FLOAT128
  index, ask_per_type_level_4_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Trading Amount: FLOAT128
  index, ask_level_5_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_trading_amount.dissect(buffer, index, packet, parent)

  -- Total Bid Level 5 Price: Double
  index, total_bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Total Bid Level 5 Remaining Quantity: Long
  index, total_bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.total_bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Including Gc: String
  index, bid_level_5_including_gc = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_including_gc.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Price: Double
  index, ask_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Price: Double
  index, bid_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Remaining Quantity: Long
  index, ask_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Remaining Quantity: Long
  index, bid_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Trading Amount: FLOAT128
  index, ask_per_type_level_5_trading_amount = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_trading_amount.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Total Remaining Quantity: Long
  index, ask_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Total Remaining Quantity: Long
  index, bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Price: Double
  index, designated_bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Repo Remaining Quantity: Long
  index, designated_bid_level_1_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 1 Isin: String
  index, designated_bid_level_1_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_1_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Price: Double
  index, designated_bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Repo Remaining Quantity: Long
  index, designated_bid_level_2_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 2 Isin: String
  index, designated_bid_level_2_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_2_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Price: Double
  index, designated_bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Repo Remaining Quantity: Long
  index, designated_bid_level_3_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 3 Isin: String
  index, designated_bid_level_3_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_3_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Price: Double
  index, designated_bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Repo Remaining Quantity: Long
  index, designated_bid_level_4_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 4 Isin: String
  index, designated_bid_level_4_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_4_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Price: Double
  index, designated_bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Repo Remaining Quantity: Long
  index, designated_bid_level_5_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 5 Isin: String
  index, designated_bid_level_5_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_5_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Price: Double
  index, designated_bid_level_6_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Repo Remaining Quantity: Long
  index, designated_bid_level_6_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 6 Isin: String
  index, designated_bid_level_6_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_6_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Price: Double
  index, designated_bid_level_7_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Repo Remaining Quantity: Long
  index, designated_bid_level_7_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 7 Isin: String
  index, designated_bid_level_7_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_7_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Price: Double
  index, designated_bid_level_8_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Repo Remaining Quantity: Long
  index, designated_bid_level_8_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 8 Isin: String
  index, designated_bid_level_8_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_8_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Price: Double
  index, designated_bid_level_9_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Repo Remaining Quantity: Long
  index, designated_bid_level_9_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 9 Isin: String
  index, designated_bid_level_9_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_9_isin.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Price: Double
  index, designated_bid_level_10_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Repo Remaining Quantity: Long
  index, designated_bid_level_10_repo_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_repo_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Designated Bid Level 10 Isin: String
  index, designated_bid_level_10_isin = koscom_mdcsrealtime_bonda_exture_v2_018.designated_bid_level_10_isin.dissect(buffer, index, packet, parent)

  -- Designated Best Bid Price: Double
  index, designated_best_bid_price = koscom_mdcsrealtime_bonda_exture_v2_018.designated_best_bid_price.dissect(buffer, index, packet, parent)

  -- Net Bid Per Type Total Remaining Quantity: Long
  index, net_bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.net_bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Baby Bonds Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message = {}

-- Size: Baby Bonds Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Baby Bonds Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Baby Bonds Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Yield: Double
  index, ask_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Yield: Double
  index, bid_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Price: Double
  index, ask_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Price: Double
  index, bid_per_type_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Remaining Quantity: Long
  index, ask_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Remaining Quantity: Long
  index, bid_per_type_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 1 Yield: Double
  index, ask_per_type_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 1 Yield: Double
  index, bid_per_type_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Yield: Double
  index, ask_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Yield: Double
  index, bid_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Price: Double
  index, ask_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Price: Double
  index, bid_per_type_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Remaining Quantity: Long
  index, ask_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Remaining Quantity: Long
  index, bid_per_type_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 2 Yield: Double
  index, ask_per_type_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 2 Yield: Double
  index, bid_per_type_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Yield: Double
  index, ask_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Yield: Double
  index, bid_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Price: Double
  index, ask_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Price: Double
  index, bid_per_type_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Remaining Quantity: Long
  index, ask_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Remaining Quantity: Long
  index, bid_per_type_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 3 Yield: Double
  index, ask_per_type_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 3 Yield: Double
  index, bid_per_type_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Yield: Double
  index, ask_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Yield: Double
  index, bid_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Price: Double
  index, ask_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Price: Double
  index, bid_per_type_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Remaining Quantity: Long
  index, ask_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Remaining Quantity: Long
  index, bid_per_type_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 4 Yield: Double
  index, ask_per_type_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 4 Yield: Double
  index, bid_per_type_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Yield: Double
  index, ask_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Yield: Double
  index, bid_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Price: Double
  index, ask_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Price: Double
  index, bid_per_type_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Remaining Quantity: Long
  index, ask_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Remaining Quantity: Long
  index, bid_per_type_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Level 5 Yield: Double
  index, ask_per_type_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Per Type Level 5 Yield: Double
  index, bid_per_type_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Per Type Total Remaining Quantity: Long
  index, ask_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Per Type Total Remaining Quantity: Long
  index, bid_per_type_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_per_type_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Baby Bonds Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Isin Information Text Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message = {}

-- Size: Bonds Isin Information Text Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Isin Information Text Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Isin Information Text Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.english_issue_name.dissect(buffer, index, packet, parent)

  -- Unusual Issuance Condition: String
  index, unusual_issuance_condition = koscom_mdcsrealtime_bonda_exture_v2_018.unusual_issuance_condition.dissect(buffer, index, packet, parent)

  -- Reason For Exercising A Call: String
  index, reason_for_exercising_a_call = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_call.dissect(buffer, index, packet, parent)

  -- Reason For Exercising A Put: String
  index, reason_for_exercising_a_put = koscom_mdcsrealtime_bonda_exture_v2_018.reason_for_exercising_a_put.dissect(buffer, index, packet, parent)

  -- Contents Of Underlying Asset: String
  index, contents_of_underlying_asset = koscom_mdcsrealtime_bonda_exture_v2_018.contents_of_underlying_asset.dissect(buffer, index, packet, parent)

  -- Els Condition 1: String
  index, els_condition_1 = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_1.dissect(buffer, index, packet, parent)

  -- Els Condition 2: String
  index, els_condition_2 = koscom_mdcsrealtime_bonda_exture_v2_018.els_condition_2.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Isin Information Text Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_isin_information_text_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Isin Issue Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message = {}

-- Size: Bonds Isin Issue Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.taxation.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.spread.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Isin Issue Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Isin Issue Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.dissect(buffer, index, packet, parent)

  -- Record Process Category: String
  index, record_process_category = koscom_mdcsrealtime_bonda_exture_v2_018.record_process_category.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Issuer Code: String
  index, issuer_code = koscom_mdcsrealtime_bonda_exture_v2_018.issuer_code.dissect(buffer, index, packet, parent)

  -- Bond Listing Type Code: String
  index, bond_listing_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.dissect(buffer, index, packet, parent)

  -- Bond Category Code: String
  index, bond_category_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.dissect(buffer, index, packet, parent)

  -- Bond Type Code: String
  index, bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_type_code.dissect(buffer, index, packet, parent)

  -- Special Bond Issue Code: String
  index, special_bond_issue_code = koscom_mdcsrealtime_bonda_exture_v2_018.special_bond_issue_code.dissect(buffer, index, packet, parent)

  -- Mb Type Code: String
  index, mb_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.mb_type_code.dissect(buffer, index, packet, parent)

  -- Bond Guaranteed Type Code: String
  index, bond_guaranteed_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.dissect(buffer, index, packet, parent)

  -- Guaranteed Rate For Payment: Double
  index, guaranteed_rate_for_payment = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_rate_for_payment.dissect(buffer, index, packet, parent)

  -- Other Types Of Bond: String
  index, other_types_of_bond = koscom_mdcsrealtime_bonda_exture_v2_018.other_types_of_bond.dissect(buffer, index, packet, parent)

  -- Optionembedded Type Code: String
  index, optionembedded_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.optionembedded_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 2: String
  index, coupon_payment_type_code_string_2 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.dissect(buffer, index, packet, parent)

  -- Risk Bond Redemption Type Code: String
  index, risk_bond_redemption_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.risk_bond_redemption_type_code.dissect(buffer, index, packet, parent)

  -- Bond Issuance Type Code: String
  index, bond_issuance_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_type_code.dissect(buffer, index, packet, parent)

  -- Securitization Type Code: String
  index, securitization_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.securitization_type_code.dissect(buffer, index, packet, parent)

  -- Redemption Priority Type Code: String
  index, redemption_priority_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_priority_type_code.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Issue Date: String
  index, issue_date = koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.dissect(buffer, index, packet, parent)

  -- Redemption Date: String
  index, redemption_date = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.dissect(buffer, index, packet, parent)

  -- Sale Date: String
  index, sale_date = koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.dissect(buffer, index, packet, parent)

  -- The 1 St Coupon Payment Date: String
  index, the_1_st_coupon_payment_date = koscom_mdcsrealtime_bonda_exture_v2_018.the_1_st_coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Bond Issuance Rate: Double
  index, bond_issuance_rate = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Double
  index, coupon_rate = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.dissect(buffer, index, packet, parent)

  -- Monthly Cycle Of Coupon Payment: Int
  index, monthly_cycle_of_coupon_payment = koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 1: String
  index, coupon_payment_type_code_string_1 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.dissect(buffer, index, packet, parent)

  -- Interest Payment: String
  index, interest_payment = koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date Type Code: String
  index, coupon_payment_date_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.dissect(buffer, index, packet, parent)

  -- Decimal Point Of Coupon Type Code: String
  index, decimal_point_of_coupon_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.dissect(buffer, index, packet, parent)

  -- Number Of Months To Pay Interest: Int
  index, number_of_months_to_pay_interest = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_to_pay_interest.dissect(buffer, index, packet, parent)

  -- Bond Sale Type Code: String
  index, bond_sale_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_sale_type_code.dissect(buffer, index, packet, parent)

  -- Pre Issue Sale Coupon Payment Type Code: String
  index, pre_issue_sale_coupon_payment_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.dissect(buffer, index, packet, parent)

  -- Issuing Amount: FLOAT128
  index, issuing_amount = koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.dissect(buffer, index, packet, parent)

  -- Listed Amount: FLOAT128
  index, listed_amount = koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.dissect(buffer, index, packet, parent)

  -- Confirmation Of Lump Sum Payment: String
  index, confirmation_of_lump_sum_payment = koscom_mdcsrealtime_bonda_exture_v2_018.confirmation_of_lump_sum_payment.dissect(buffer, index, packet, parent)

  -- Currency Type Code: String
  index, currency_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.dissect(buffer, index, packet, parent)

  -- Redemption Ratio At Maturity: Double
  index, redemption_ratio_at_maturity = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.dissect(buffer, index, packet, parent)

  -- Yield To Maturity: Double
  index, yield_to_maturity = koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.dissect(buffer, index, packet, parent)

  -- Guaranteed Yield Effective Date: String
  index, guaranteed_yield_effective_date = koscom_mdcsrealtime_bonda_exture_v2_018.guaranteed_yield_effective_date.dissect(buffer, index, packet, parent)

  -- Additional Yield: Double
  index, additional_yield = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield.dissect(buffer, index, packet, parent)

  -- Additional Yield Effective Date: String
  index, additional_yield_effective_date = koscom_mdcsrealtime_bonda_exture_v2_018.additional_yield_effective_date.dissect(buffer, index, packet, parent)

  -- Facility Fund: FLOAT128
  index, facility_fund = koscom_mdcsrealtime_bonda_exture_v2_018.facility_fund.dissect(buffer, index, packet, parent)

  -- Maintenance Fund: FLOAT128
  index, maintenance_fund = koscom_mdcsrealtime_bonda_exture_v2_018.maintenance_fund.dissect(buffer, index, packet, parent)

  -- Loan Fund: FLOAT128
  index, loan_fund = koscom_mdcsrealtime_bonda_exture_v2_018.loan_fund.dissect(buffer, index, packet, parent)

  -- Other Funds: FLOAT128
  index, other_funds = koscom_mdcsrealtime_bonda_exture_v2_018.other_funds.dissect(buffer, index, packet, parent)

  -- Inscription Type Of Bond: String
  index, inscription_type_of_bond = koscom_mdcsrealtime_bonda_exture_v2_018.inscription_type_of_bond.dissect(buffer, index, packet, parent)

  -- Taxation: String
  index, taxation = koscom_mdcsrealtime_bonda_exture_v2_018.taxation.dissect(buffer, index, packet, parent)

  -- Bond Lead Manager Company Code: String
  index, bond_lead_manager_company_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_lead_manager_company_code.dissect(buffer, index, packet, parent)

  -- Payment Guarantor Code: String
  index, payment_guarantor_code = koscom_mdcsrealtime_bonda_exture_v2_018.payment_guarantor_code.dissect(buffer, index, packet, parent)

  -- Trustee Code: String
  index, trustee_code = koscom_mdcsrealtime_bonda_exture_v2_018.trustee_code.dissect(buffer, index, packet, parent)

  -- Register Institute Code: String
  index, register_institute_code = koscom_mdcsrealtime_bonda_exture_v2_018.register_institute_code.dissect(buffer, index, packet, parent)

  -- Payment Agent Code: String
  index, payment_agent_code = koscom_mdcsrealtime_bonda_exture_v2_018.payment_agent_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Bond Delisting Reason Code: String
  index, bond_delisting_reason_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisting_reason_code.dissect(buffer, index, packet, parent)

  -- Bond Delisted Date: String
  index, bond_delisted_date = koscom_mdcsrealtime_bonda_exture_v2_018.bond_delisted_date.dissect(buffer, index, packet, parent)

  -- Equitylinked Bond Rights Type Code: String
  index, equitylinked_bond_rights_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_rights_type_code.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_bonda_exture_v2_018.isin.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.issue_name.dissect(buffer, index, packet, parent)

  -- Equitylinked Bond Exercise Price: Double
  index, equitylinked_bond_exercise_price = koscom_mdcsrealtime_bonda_exture_v2_018.equitylinked_bond_exercise_price.dissect(buffer, index, packet, parent)

  -- Exercise Ratio: Double
  index, exercise_ratio = koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.dissect(buffer, index, packet, parent)

  -- Date To Start Exercising: String
  index, date_to_start_exercising = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.dissect(buffer, index, packet, parent)

  -- Date To End Exercising: String
  index, date_to_end_exercising = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.dissect(buffer, index, packet, parent)

  -- Institution Code: String
  index, institution_code = koscom_mdcsrealtime_bonda_exture_v2_018.institution_code.dissect(buffer, index, packet, parent)

  -- Record Date Of Dividend Payout: String
  index, record_date_of_dividend_payout = koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.dissect(buffer, index, packet, parent)

  -- Profit Participating Accum Status: String
  index, profit_participating_accum_status = koscom_mdcsrealtime_bonda_exture_v2_018.profit_participating_accum_status.dissect(buffer, index, packet, parent)

  -- Issue Code Of Postexercise: String
  index, issue_code_of_postexercise = koscom_mdcsrealtime_bonda_exture_v2_018.issue_code_of_postexercise.dissect(buffer, index, packet, parent)

  -- Amortization Type Code: String
  index, amortization_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.dissect(buffer, index, packet, parent)

  -- Level Payment Amount: FLOAT128
  index, level_payment_amount = koscom_mdcsrealtime_bonda_exture_v2_018.level_payment_amount.dissect(buffer, index, packet, parent)

  -- Number Of Months For Grace: Int
  index, number_of_months_for_grace = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.dissect(buffer, index, packet, parent)

  -- Interest Type Code During Amortization: String
  index, interest_type_code_during_amortization = koscom_mdcsrealtime_bonda_exture_v2_018.interest_type_code_during_amortization.dissect(buffer, index, packet, parent)

  -- Number Of Amortization: Int
  index, number_of_amortization = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.dissect(buffer, index, packet, parent)

  -- Interest Rate Decision Other Base Rate Name: String
  index, interest_rate_decision_other_base_rate_name = koscom_mdcsrealtime_bonda_exture_v2_018.interest_rate_decision_other_base_rate_name.dissect(buffer, index, packet, parent)

  -- Spread: Double
  index, spread = koscom_mdcsrealtime_bonda_exture_v2_018.spread.dissect(buffer, index, packet, parent)

  -- Timing Of Interest Rate Decision Type Code: String
  index, timing_of_interest_rate_decision_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.timing_of_interest_rate_decision_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Coupon Rate: Double
  index, upper_limit_coupon_rate = koscom_mdcsrealtime_bonda_exture_v2_018.upper_limit_coupon_rate.dissect(buffer, index, packet, parent)

  -- Lower Limit Coupon Rate: Double
  index, lower_limit_coupon_rate = koscom_mdcsrealtime_bonda_exture_v2_018.lower_limit_coupon_rate.dissect(buffer, index, packet, parent)

  -- The Date To Decide Interest Rate: String
  index, the_date_to_decide_interest_rate = koscom_mdcsrealtime_bonda_exture_v2_018.the_date_to_decide_interest_rate.dissect(buffer, index, packet, parent)

  -- First Call Exercise Start Date: String
  index, first_call_exercise_start_date = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_start_date.dissect(buffer, index, packet, parent)

  -- First Call Exercise End Date: String
  index, first_call_exercise_end_date = koscom_mdcsrealtime_bonda_exture_v2_018.first_call_exercise_end_date.dissect(buffer, index, packet, parent)

  -- Second Call Exercise Start Date: String
  index, second_call_exercise_start_date = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_start_date.dissect(buffer, index, packet, parent)

  -- Second Call Exercise End Date: String
  index, second_call_exercise_end_date = koscom_mdcsrealtime_bonda_exture_v2_018.second_call_exercise_end_date.dissect(buffer, index, packet, parent)

  -- First Put Exercise Start Date: String
  index, first_put_exercise_start_date = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_start_date.dissect(buffer, index, packet, parent)

  -- First Put Exercise End Date: String
  index, first_put_exercise_end_date = koscom_mdcsrealtime_bonda_exture_v2_018.first_put_exercise_end_date.dissect(buffer, index, packet, parent)

  -- Second Put Exercise Start Date: String
  index, second_put_exercise_start_date = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_start_date.dissect(buffer, index, packet, parent)

  -- Second Put Exercise End Date: String
  index, second_put_exercise_end_date = koscom_mdcsrealtime_bonda_exture_v2_018.second_put_exercise_end_date.dissect(buffer, index, packet, parent)

  -- Coupon Payment Decision Code For Bank Holidays: String
  index, coupon_payment_decision_code_for_bank_holidays = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_decision_code_for_bank_holidays.dissect(buffer, index, packet, parent)

  -- Hybrid Bond: String
  index, hybrid_bond = koscom_mdcsrealtime_bonda_exture_v2_018.hybrid_bond.dissect(buffer, index, packet, parent)

  -- Co Cos Type Code: String
  index, co_cos_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.co_cos_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Rate Confirmation: String
  index, coupon_rate_confirmation = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_confirmation.dissect(buffer, index, packet, parent)

  -- Principal Guranteed Rate: Double
  index, principal_guranteed_rate = koscom_mdcsrealtime_bonda_exture_v2_018.principal_guranteed_rate.dissect(buffer, index, packet, parent)

  -- Participating Rate: Double
  index, participating_rate = koscom_mdcsrealtime_bonda_exture_v2_018.participating_rate.dissect(buffer, index, packet, parent)

  -- Maximum Yield: Double
  index, maximum_yield = koscom_mdcsrealtime_bonda_exture_v2_018.maximum_yield.dissect(buffer, index, packet, parent)

  -- Strip Bond Type Code: String
  index, strip_bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.dissect(buffer, index, packet, parent)

  -- Original Bond Type Code Subjec To Strip: String
  index, original_bond_type_code_subjec_to_strip = koscom_mdcsrealtime_bonda_exture_v2_018.original_bond_type_code_subjec_to_strip.dissect(buffer, index, packet, parent)

  -- Unstripped Balance: FLOAT128
  index, unstripped_balance = koscom_mdcsrealtime_bonda_exture_v2_018.unstripped_balance.dissect(buffer, index, packet, parent)

  -- Inflation Indexed Category: String
  index, inflation_indexed_category = koscom_mdcsrealtime_bonda_exture_v2_018.inflation_indexed_category.dissect(buffer, index, packet, parent)

  -- Reference Index For Issue Date: Double
  index, reference_index_for_issue_date = koscom_mdcsrealtime_bonda_exture_v2_018.reference_index_for_issue_date.dissect(buffer, index, packet, parent)

  -- Coupon Rate Decision Base Rate Type Code: String
  index, coupon_rate_decision_base_rate_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate_decision_base_rate_type_code.dissect(buffer, index, packet, parent)

  -- Bond Odd Lot Days Base Interest Type Code: String
  index, bond_odd_lot_days_base_interest_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_odd_lot_days_base_interest_type_code.dissect(buffer, index, packet, parent)

  -- Base Interest Rate On Bank Holidays Type Code: String
  index, base_interest_rate_on_bank_holidays_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.base_interest_rate_on_bank_holidays_type_code.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate On Bank Holidays Type Code: Double
  index, accrued_interest_rate_on_bank_holidays_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.accrued_interest_rate_on_bank_holidays_type_code.dissect(buffer, index, packet, parent)

  -- Principal Payment Methods On Bank Holidays Type Code: String
  index, principal_payment_methods_on_bank_holidays_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.principal_payment_methods_on_bank_holidays_type_code.dissect(buffer, index, packet, parent)

  -- Principal Base Rate On Bank Holidays Type Code: String
  index, principal_base_rate_on_bank_holidays_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.principal_base_rate_on_bank_holidays_type_code.dissect(buffer, index, packet, parent)

  -- Principal Accrued Interest Rate On Bank Holidays Type Code: Double
  index, principal_accrued_interest_rate_on_bank_holidays_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.principal_accrued_interest_rate_on_bank_holidays_type_code.dissect(buffer, index, packet, parent)

  -- Stopout Rate: Double
  index, stopout_rate = koscom_mdcsrealtime_bonda_exture_v2_018.stopout_rate.dissect(buffer, index, packet, parent)

  -- Crowdfunding: String
  index, crowdfunding = koscom_mdcsrealtime_bonda_exture_v2_018.crowdfunding.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Isin Issue Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_isin_issue_information_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Investor Activities Per Bond Types Message
koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message = {}

-- Size: Investor Activities Per Bond Types Message
koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Investor Activities Per Bond Types Message
koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investor Activities Per Bond Types Message
koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_bonda_exture_v2_018.investor_code.dissect(buffer, index, packet, parent)

  -- Bond Category Code: String
  index, bond_category_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investor Activities Per Bond Types Message
koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.investor_activities_per_bond_types_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bonds Disclosure Basic Exchange Rate Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message = {}

-- Size: Regular Bonds Disclosure Basic Exchange Rate Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Regular Bonds Disclosure Basic Exchange Rate Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Bonds Disclosure Basic Exchange Rate Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Disclosing Data Type Code: String
  index, disclosing_data_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.dissect(buffer, index, packet, parent)

  -- Disclosure Time: String
  index, disclosure_time = koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.dissect(buffer, index, packet, parent)

  -- Applied Exchange Rate: Double
  index, applied_exchange_rate = koscom_mdcsrealtime_bonda_exture_v2_018.applied_exchange_rate.dissect(buffer, index, packet, parent)

  -- Currency Type Code: String
  index, currency_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.currency_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Bonds Disclosure Basic Exchange Rate Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_disclosure_basic_exchange_rate_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Credit Rating Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message = {}

-- Size: Bonds Credit Rating Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Credit Rating Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Credit Rating Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Credit Rating Agency Code No 1: String
  index, credit_rating_agency_code_no_1 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_1.dissect(buffer, index, packet, parent)

  -- Credit Rating Per Agency Code No 1: String
  index, credit_rating_per_agency_code_no_1 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_1.dissect(buffer, index, packet, parent)

  -- Sf Ratings 1: String
  index, sf_ratings_1 = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_1.dissect(buffer, index, packet, parent)

  -- Credit Rating Agency Code No 2: String
  index, credit_rating_agency_code_no_2 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_2.dissect(buffer, index, packet, parent)

  -- Credit Rating Per Agency Code No 2: String
  index, credit_rating_per_agency_code_no_2 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_2.dissect(buffer, index, packet, parent)

  -- Sf Ratings 2: String
  index, sf_ratings_2 = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_2.dissect(buffer, index, packet, parent)

  -- Credit Rating Agency Code No 3: String
  index, credit_rating_agency_code_no_3 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_3.dissect(buffer, index, packet, parent)

  -- Credit Rating Per Agency Code No 3: String
  index, credit_rating_per_agency_code_no_3 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_3.dissect(buffer, index, packet, parent)

  -- Sf Ratings 3: String
  index, sf_ratings_3 = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_3.dissect(buffer, index, packet, parent)

  -- Credit Rating Agency Code No 4: String
  index, credit_rating_agency_code_no_4 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_agency_code_no_4.dissect(buffer, index, packet, parent)

  -- Credit Rating Per Agency Code No 4: String
  index, credit_rating_per_agency_code_no_4 = koscom_mdcsrealtime_bonda_exture_v2_018.credit_rating_per_agency_code_no_4.dissect(buffer, index, packet, parent)

  -- Sf Ratings 4: String
  index, sf_ratings_4 = koscom_mdcsrealtime_bonda_exture_v2_018.sf_ratings_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Credit Rating Information Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_credit_rating_information_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Ktb Average Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message = {}

-- Size: Ktb Average Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Ktb Average Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ktb Average Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Shortterm Interest Rates Type Code: String
  index, shortterm_interest_rates_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.dissect(buffer, index, packet, parent)

  -- Average Yield: Double
  index, average_yield = koscom_mdcsrealtime_bonda_exture_v2_018.average_yield.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ktb Average Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_average_yield_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Ktb Short Term Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message = {}

-- Size: Ktb Short Term Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Ktb Short Term Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ktb Short Term Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Shortterm Interest Rates Type Code: String
  index, shortterm_interest_rates_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_interest_rates_type_code.dissect(buffer, index, packet, parent)

  -- Shortterm Yield: Double
  index, shortterm_yield = koscom_mdcsrealtime_bonda_exture_v2_018.shortterm_yield.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ktb Short Term Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_short_term_yield_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Ktb Confirmed Info For Wit Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message = {}

-- Size: Ktb Confirmed Info For Wit Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Ktb Confirmed Info For Wit Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ktb Confirmed Info For Wit Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Bid Closing Date: String
  index, bid_closing_date = koscom_mdcsrealtime_bonda_exture_v2_018.bid_closing_date.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Cancellation: String
  index, cancellation = koscom_mdcsrealtime_bonda_exture_v2_018.cancellation.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ktb Confirmed Info For Wit Message
koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.ktb_confirmed_info_for_wit_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.fields(buffer, offset, packet, parent)
  end
end

-- Baby Bonds Reporting Market Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message = {}

-- Size: Baby Bonds Reporting Market Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Baby Bonds Reporting Market Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Baby Bonds Reporting Market Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Baby Bonds Type Code: String
  index, baby_bonds_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.dissect(buffer, index, packet, parent)

  -- Report Market Yield Rate: Double
  index, report_market_yield_rate = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_yield_rate.dissect(buffer, index, packet, parent)

  -- Report Market A Price With Yield: Double
  index, report_market_a_price_with_yield = koscom_mdcsrealtime_bonda_exture_v2_018.report_market_a_price_with_yield.dissect(buffer, index, packet, parent)

  -- Closing Price Yield Rate: Double
  index, closing_price_yield_rate = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield_rate.dissect(buffer, index, packet, parent)

  -- Closing Price With Yield: Double
  index, closing_price_with_yield = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_with_yield.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Baby Bonds Reporting Market Yield Message
koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.baby_bonds_reporting_market_yield_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Bonds Type Code Message
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message = {}

-- Size: Retail Bonds Type Code Message
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Retail Bonds Type Code Message
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Bonds Type Code Message
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Retail Bond Type Code: String
  index, retail_bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.dissect(buffer, index, packet, parent)

  -- Retail Bond Category Name: String
  index, retail_bond_category_name = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name.dissect(buffer, index, packet, parent)

  -- Retail Bond Category Name In En: String
  index, retail_bond_category_name_in_en = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_category_name_in_en.dissect(buffer, index, packet, parent)

  -- Retail Bond Generated Quotes: String
  index, retail_bond_generated_quotes = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_generated_quotes.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Bonds Type Code Message
koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.retail_bonds_type_code_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Trade Availability Per Term Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message = {}

-- Size: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Number Of Repo Trade Periods: Int
  index, number_of_repo_trade_periods = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_repo_trade_periods.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 1: Int
  index, repo_trade_period_1 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_1.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 2: Int
  index, repo_trade_period_2 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_2.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 3: Int
  index, repo_trade_period_3 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_3.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 4: Int
  index, repo_trade_period_4 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_4.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 5: Int
  index, repo_trade_period_5 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_5.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 6: Int
  index, repo_trade_period_6 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_6.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 7: Int
  index, repo_trade_period_7 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_7.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 8: Int
  index, repo_trade_period_8 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_8.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 9: Int
  index, repo_trade_period_9 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_9.dissect(buffer, index, packet, parent)

  -- Repo Trade Period 10: Int
  index, repo_trade_period_10 = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_period_10.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Trade Availability Per Term Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_trade_availability_per_term_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Classification Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message = {}

-- Size: Repo Classification Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Classification Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Classification Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Repo Classification Code: String
  index, repo_classification_code = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_code.dissect(buffer, index, packet, parent)

  -- Repo Classification Name: String
  index, repo_classification_name = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_name.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Classification Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_classification_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message = {}

-- Size: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Installment Repayment Date: String
  index, installment_repayment_date = koscom_mdcsrealtime_bonda_exture_v2_018.installment_repayment_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Bonds Installment Repayment Date Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_installment_repayment_date_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Corporate Bonds Reference Message
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message = {}

-- Size: Corporate Bonds Reference Message
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Corporate Bonds Reference Message
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corporate Bonds Reference Message
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Issue Date: String
  index, issue_date = koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.dissect(buffer, index, packet, parent)

  -- Redemption Date: String
  index, redemption_date = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 2: String
  index, coupon_payment_type_code_string_2 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.dissect(buffer, index, packet, parent)

  -- Issuing Amount: FLOAT128
  index, issuing_amount = koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.dissect(buffer, index, packet, parent)

  -- Listed Amount: FLOAT128
  index, listed_amount = koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 1: String
  index, coupon_payment_type_code_string_1 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.dissect(buffer, index, packet, parent)

  -- Number Of Months For Grace: Int
  index, number_of_months_for_grace = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.dissect(buffer, index, packet, parent)

  -- Number Of Amortization: Int
  index, number_of_amortization = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.dissect(buffer, index, packet, parent)

  -- Interest Payment: String
  index, interest_payment = koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date Type Code: String
  index, coupon_payment_date_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Double
  index, coupon_rate = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_bonda_exture_v2_018.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_bonda_exture_v2_018.isin.dissect(buffer, index, packet, parent)

  -- Date To Start Exercising: String
  index, date_to_start_exercising = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_start_exercising.dissect(buffer, index, packet, parent)

  -- Date To End Exercising: String
  index, date_to_end_exercising = koscom_mdcsrealtime_bonda_exture_v2_018.date_to_end_exercising.dissect(buffer, index, packet, parent)

  -- Record Date Of Dividend Payout: String
  index, record_date_of_dividend_payout = koscom_mdcsrealtime_bonda_exture_v2_018.record_date_of_dividend_payout.dissect(buffer, index, packet, parent)

  -- Exercise Ratio: Double
  index, exercise_ratio = koscom_mdcsrealtime_bonda_exture_v2_018.exercise_ratio.dissect(buffer, index, packet, parent)

  -- Yield To Maturity: Double
  index, yield_to_maturity = koscom_mdcsrealtime_bonda_exture_v2_018.yield_to_maturity.dissect(buffer, index, packet, parent)

  -- Corporate Bonds Related To Securities Exercise Price: Double
  index, corporate_bonds_related_to_securities_exercise_price = koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_related_to_securities_exercise_price.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Baby Bonds Type Code: String
  index, baby_bonds_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corporate Bonds Reference Message
koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.corporate_bonds_reference_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Event Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message = {}

-- Size: Issue Event Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Issue Event Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Event Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Event Type Code: String
  index, event_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.event_type_code.dissect(buffer, index, packet, parent)

  -- Event Reason Code: String
  index, event_reason_code = koscom_mdcsrealtime_bonda_exture_v2_018.event_reason_code.dissect(buffer, index, packet, parent)

  -- Event Start Date: String
  index, event_start_date = koscom_mdcsrealtime_bonda_exture_v2_018.event_start_date.dissect(buffer, index, packet, parent)

  -- Event End Date: String
  index, event_end_date = koscom_mdcsrealtime_bonda_exture_v2_018.event_end_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Event Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_event_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message = {}

-- Size: Repo Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Market Value: Double
  index, market_value = koscom_mdcsrealtime_bonda_exture_v2_018.market_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message = {}

-- Size: Bonds Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_bonda_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Retail Bond Type Code: String
  index, retail_bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.retail_bond_type_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_bonda_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Bond Listing Type Code: String
  index, bond_listing_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_listing_type_code.dissect(buffer, index, packet, parent)

  -- Bond Category Code: String
  index, bond_category_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_category_code.dissect(buffer, index, packet, parent)

  -- Bond Guaranteed Type Code: String
  index, bond_guaranteed_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.bond_guaranteed_type_code.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 2: String
  index, coupon_payment_type_code_string_2 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_2.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_bonda_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Issue Date: String
  index, issue_date = koscom_mdcsrealtime_bonda_exture_v2_018.issue_date.dissect(buffer, index, packet, parent)

  -- Redemption Date: String
  index, redemption_date = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_date.dissect(buffer, index, packet, parent)

  -- Sale Date: String
  index, sale_date = koscom_mdcsrealtime_bonda_exture_v2_018.sale_date.dissect(buffer, index, packet, parent)

  -- Bond Issuance Rate: Double
  index, bond_issuance_rate = koscom_mdcsrealtime_bonda_exture_v2_018.bond_issuance_rate.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Double
  index, coupon_rate = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_rate.dissect(buffer, index, packet, parent)

  -- Monthly Cycle Of Coupon Payment: Int
  index, monthly_cycle_of_coupon_payment = koscom_mdcsrealtime_bonda_exture_v2_018.monthly_cycle_of_coupon_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Type Code String 1: String
  index, coupon_payment_type_code_string_1 = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_type_code_string_1.dissect(buffer, index, packet, parent)

  -- Interest Payment: String
  index, interest_payment = koscom_mdcsrealtime_bonda_exture_v2_018.interest_payment.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date Type Code: String
  index, coupon_payment_date_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.coupon_payment_date_type_code.dissect(buffer, index, packet, parent)

  -- Decimal Point Of Coupon Type Code: String
  index, decimal_point_of_coupon_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.decimal_point_of_coupon_type_code.dissect(buffer, index, packet, parent)

  -- Pre Issue Sale Coupon Payment Type Code: String
  index, pre_issue_sale_coupon_payment_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.pre_issue_sale_coupon_payment_type_code.dissect(buffer, index, packet, parent)

  -- Issuing Amount: FLOAT128
  index, issuing_amount = koscom_mdcsrealtime_bonda_exture_v2_018.issuing_amount.dissect(buffer, index, packet, parent)

  -- Listed Amount: FLOAT128
  index, listed_amount = koscom_mdcsrealtime_bonda_exture_v2_018.listed_amount.dissect(buffer, index, packet, parent)

  -- Redemption Ratio At Maturity: Double
  index, redemption_ratio_at_maturity = koscom_mdcsrealtime_bonda_exture_v2_018.redemption_ratio_at_maturity.dissect(buffer, index, packet, parent)

  -- Amortization Type Code: String
  index, amortization_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.amortization_type_code.dissect(buffer, index, packet, parent)

  -- Number Of Months For Grace: Int
  index, number_of_months_for_grace = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_months_for_grace.dissect(buffer, index, packet, parent)

  -- Number Of Amortization: Int
  index, number_of_amortization = koscom_mdcsrealtime_bonda_exture_v2_018.number_of_amortization.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Prior Coupon Payment Date: String
  index, prior_coupon_payment_date = koscom_mdcsrealtime_bonda_exture_v2_018.prior_coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Next Coupon Payment Date: String
  index, next_coupon_payment_date = koscom_mdcsrealtime_bonda_exture_v2_018.next_coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Perpetual Bond Maturity Structure Status: String
  index, perpetual_bond_maturity_structure_status = koscom_mdcsrealtime_bonda_exture_v2_018.perpetual_bond_maturity_structure_status.dissect(buffer, index, packet, parent)

  -- Strip Bond Type Code: String
  index, strip_bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.strip_bond_type_code.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_bonda_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Liquidation Trade: String
  index, liquidation_trade = koscom_mdcsrealtime_bonda_exture_v2_018.liquidation_trade.dissect(buffer, index, packet, parent)

  -- Investment Caution Bond Type Code: String
  index, investment_caution_bond_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.investment_caution_bond_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Batch Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Repo Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message = {}

-- Size: Repo Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Repo Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repo Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Rfq Accumulated Trading Value: FLOAT128
  index, rfq_accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.rfq_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Report Trading Total Trading Volume: Long
  index, report_trading_total_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.report_trading_total_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repo Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.repo_negotiated_trade_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message = {}

-- Size: Bonds Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Negotiated Trade Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_negotiated_trade_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.fields(buffer, offset, packet, parent)
  end
end

-- General Bonds Ktb Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message = {}

-- Size: General Bonds Ktb Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: General Bonds Ktb Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Bonds Ktb Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Value: FLOAT128
  index, trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.dissect(buffer, index, packet, parent)

  -- Bond Yield: Double
  index, bond_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Yield Opening Price: Double
  index, yield_opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.dissect(buffer, index, packet, parent)

  -- Yield Todays High: Double
  index, yield_todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.dissect(buffer, index, packet, parent)

  -- Yield Todays Low: Double
  index, yield_todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Settlement Date: String
  index, settlement_date = koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Yield: Double
  index, ask_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Yield: Double
  index, bid_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Yield: Double
  index, ask_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Yield: Double
  index, bid_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Yield: Double
  index, ask_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Yield: Double
  index, bid_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Yield: Double
  index, ask_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Yield: Double
  index, bid_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Yield: Double
  index, ask_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Yield: Double
  index, bid_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Bonds Ktb Order Filled Plus Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.general_bonds_ktb_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bonds Order Filled Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message = {}

-- Size: Bonds Order Filled Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bonds Order Filled Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bonds Order Filled Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_bonda_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_bonda_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Value: FLOAT128
  index, trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.trading_value.dissect(buffer, index, packet, parent)

  -- Bond Yield: Double
  index, bond_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bond_yield.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Yield Opening Price: Double
  index, yield_opening_price = koscom_mdcsrealtime_bonda_exture_v2_018.yield_opening_price.dissect(buffer, index, packet, parent)

  -- Yield Todays High: Double
  index, yield_todays_high = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_high.dissect(buffer, index, packet, parent)

  -- Yield Todays Low: Double
  index, yield_todays_low = koscom_mdcsrealtime_bonda_exture_v2_018.yield_todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Settlement Date: String
  index, settlement_date = koscom_mdcsrealtime_bonda_exture_v2_018.settlement_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bonds Order Filled Message
koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bonds_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bonds Ktb Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message = {}

-- Size: Regular Bonds Ktb Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Regular Bonds Ktb Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Bonds Ktb Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Remaining Quantity: Long
  index, ask_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Remaining Quantity: Long
  index, bid_level_1_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Yield: Double
  index, ask_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_1_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Yield: Double
  index, bid_level_1_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_1_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Remaining Quantity: Long
  index, ask_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Remaining Quantity: Long
  index, bid_level_2_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Yield: Double
  index, ask_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_2_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Yield: Double
  index, bid_level_2_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_2_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Remaining Quantity: Long
  index, ask_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Remaining Quantity: Long
  index, bid_level_3_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Yield: Double
  index, ask_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_3_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Yield: Double
  index, bid_level_3_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_3_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Remaining Quantity: Long
  index, ask_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Remaining Quantity: Long
  index, bid_level_4_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Yield: Double
  index, ask_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_4_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Yield: Double
  index, bid_level_4_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_4_yield.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Remaining Quantity: Long
  index, ask_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Remaining Quantity: Long
  index, bid_level_5_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Yield: Double
  index, ask_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.ask_level_5_yield.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Yield: Double
  index, bid_level_5_yield = koscom_mdcsrealtime_bonda_exture_v2_018.bid_level_5_yield.dissect(buffer, index, packet, parent)

  -- Ask Total Remaining Quantity: Long
  index, ask_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.ask_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- Bid Total Remaining Quantity: Long
  index, bid_total_remaining_quantity = koscom_mdcsrealtime_bonda_exture_v2_018.bid_total_remaining_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Bonds Ktb Quote Message
koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.regular_bonds_ktb_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Member Firm Sanctions Message
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message = {}

-- Size: Member Firm Sanctions Message
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.member_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Member Firm Sanctions Message
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Firm Sanctions Message
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Disclosing Data Type Code: String
  index, disclosing_data_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.disclosing_data_type_code.dissect(buffer, index, packet, parent)

  -- Disclosure Time: String
  index, disclosure_time = koscom_mdcsrealtime_bonda_exture_v2_018.disclosure_time.dissect(buffer, index, packet, parent)

  -- Member Number: String
  index, member_number = koscom_mdcsrealtime_bonda_exture_v2_018.member_number.dissect(buffer, index, packet, parent)

  -- Member Firm Trust Principal Type Code: Int
  index, member_firm_trust_principal_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_trust_principal_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Firm Sanctions Message
koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.member_firm_sanctions_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Closing Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message = {}

-- Size: Issue Closing Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Issue Closing Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Closing Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Duration Of Term Repo: Int
  index, duration_of_term_repo = koscom_mdcsrealtime_bonda_exture_v2_018.duration_of_term_repo.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Yield: Double
  index, closing_price_yield = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_yield.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Closing Message
koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Schedule Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message = {}

-- Size: Market Operation Schedule Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Market Operation Schedule Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Schedule Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_bonda_exture_v2_018.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_bonda_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_bonda_exture_v2_018.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_bonda_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_bonda_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Schedule Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Ts Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message = {}

-- Size: Market Operation Ts Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Market Operation Ts Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Ts Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_bonda_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_bonda_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_bonda_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_bonda_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_bonda_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_bonda_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Ts Message
koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_bonda_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Float 12816: FLOAT128
  index, market_price_index_float_12816 = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Float 12816: FLOAT128
  index, zero_re_investment_index_float_12816 = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Float 12816: FLOAT128
  index, call_re_investment_index_float_12816 = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_bonda_exture_v2_018.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_bonda_exture_v2_018.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_bonda_exture_v2_018.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_bonda_exture_v2_018.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_bonda_exture_v2_018.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_bonda_exture_v2_018.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_bonda_exture_v2_018.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_bonda_exture_v2_018.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_bonda_exture_v2_018.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_bonda_exture_v2_018.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_bonda_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_bonda_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_bonda_exture_v2_018.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_bonda_exture_v2_018.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.base_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.duration.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.convexity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_bonda_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_bonda_exture_v2_018.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_bonda_exture_v2_018.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Double 11: Double
  index, clean_price_index_double_11 = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Market Price Index Double 11: Double
  index, market_price_index_double_11 = koscom_mdcsrealtime_bonda_exture_v2_018.market_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Double 11: Double
  index, call_re_investment_index_double_11 = koscom_mdcsrealtime_bonda_exture_v2_018.call_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Double 11: Double
  index, zero_re_investment_index_double_11 = koscom_mdcsrealtime_bonda_exture_v2_018.zero_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_bonda_exture_v2_018.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_bonda_exture_v2_018.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_bonda_exture_v2_018.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_bonda_exture_v2_018.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_bonda_exture_v2_018.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.group_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_bonda_exture_v2_018.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_bonda_exture_v2_018.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_bonda_exture_v2_018.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_bonda_exture_v2_018.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_bonda_exture_v2_018.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_bonda_exture_v2_018.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_bonda_exture_v2_018.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_bonda_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_bonda_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_bonda_exture_v2_018.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_bonda_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.index_id.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_bonda_exture_v2_018.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_bonda_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_bonda_exture_v2_018.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_bonda_exture_v2_018.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_bonda_exture_v2_018.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_bonda_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_bonda_exture_v2_018.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.size =
  koscom_mdcsrealtime_bonda_exture_v2_018.current_time.size + 
  koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_bonda_exture_v2_018.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_bonda_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_bonda_exture_v2_018.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_bonda_exture_v2_018.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Polling Data Message
  if message_code == "I2000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Index Message
  if message_code == "IA000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.krx_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Estimated Index Message
  if message_code == "IB000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.krx_estimated_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Index Message
  if message_code == "J2000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.global_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Prime Index Message
  if message_code == "J4000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_prime_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Message
  if message_code == "K1000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Term Structure Message
  if message_code == "K8000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_ktb_index_term_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Index Krx Message
  if message_code == "IG000" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bond_index_krx_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A702S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A703S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A704S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A705S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701Q" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701X" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A702F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A703F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A704F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A705F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A706F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A707F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A708F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A709F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A710F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A711F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A712F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A713F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A715F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A716F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A717F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A718F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701G" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if message_code == "A701E" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M402S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M403S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M404S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M405S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401Q" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401X" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M402F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M403F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M404F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M405F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M406F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M407F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M408F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M409F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M410F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M411F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M412F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M413F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M415F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M416F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M417F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M418F" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401G" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Schedule Message
  if message_code == "M401E" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if message_code == "A601B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if message_code == "A601M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if message_code == "A601K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if message_code == "A601R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R302S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R303S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R304S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R305S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301Q" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301X" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Firm Sanctions Message
  if message_code == "R301R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.member_firm_sanctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regular Bonds Ktb Quote Message
  if message_code == "B601B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regular Bonds Ktb Quote Message
  if message_code == "B601K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_ktb_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Order Filled Message
  if message_code == "A301B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Order Filled Message
  if message_code == "A301M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Order Filled Message
  if message_code == "A301K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Bonds Ktb Order Filled Plus Quote Message
  if message_code == "G701B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Bonds Ktb Order Filled Plus Quote Message
  if message_code == "G701K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.general_bonds_ktb_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Negotiated Trade Data Message
  if message_code == "C401B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Negotiated Trade Data Message
  if message_code == "C401K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_negotiated_trade_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Negotiated Trade Data Message
  if message_code == "C401R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_negotiated_trade_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Batch Data Message
  if message_code == "A001B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Batch Data Message
  if message_code == "A001R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I602S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I603S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I604S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I605S" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601Q" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601X" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Event Message
  if message_code == "I601R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.issue_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corporate Bonds Reference Message
  if message_code == "F901B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corporate Bonds Reference Message
  if message_code == "F901M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.corporate_bonds_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regular Bonds Installment Repayment Date Message
  if message_code == "BN01B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_installment_repayment_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Classification Data Message
  if message_code == "CB01R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_classification_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Trade Availability Per Term Message
  if message_code == "S001R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_trade_availability_per_term_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Bonds Type Code Message
  if message_code == "G300B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.retail_bonds_type_code_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Baby Bonds Reporting Market Yield Message
  if message_code == "G001M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_reporting_market_yield_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ktb Confirmed Info For Wit Message
  if message_code == "PA01K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_confirmed_info_for_wit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ktb Short Term Yield Message
  if message_code == "PB01K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_short_term_yield_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ktb Average Yield Message
  if message_code == "PC01K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.ktb_average_yield_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Credit Rating Information Message
  if message_code == "JA077" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_credit_rating_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regular Bonds Disclosure Basic Exchange Rate Message
  if message_code == "R401B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.regular_bonds_disclosure_basic_exchange_rate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Investor Activities Per Bond Types Message
  if message_code == "P401B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Investor Activities Per Bond Types Message
  if message_code == "P401M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Investor Activities Per Bond Types Message
  if message_code == "P401K" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.investor_activities_per_bond_types_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Isin Issue Information Message
  if message_code == "J9077" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_issue_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Isin Information Text Message
  if message_code == "JB077" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_isin_information_text_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Baby Bonds Quote Message
  if message_code == "B601M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Quote Message
  if message_code == "B601R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Total Remaining Volume On Quotes Message
  if message_code == "OA01B" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bonds Total Remaining Volume On Quotes Message
  if message_code == "OA01M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.bonds_total_remaining_volume_on_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Baby Bonds Order Filled Plus Quote Message
  if message_code == "G701M" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.baby_bonds_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Repo Order Filled Plus Quote Message
  if message_code == "G701R" then
    return koscom_mdcsrealtime_bonda_exture_v2_018.repo_order_filled_plus_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_bonda_exture_v2_018.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_bonda_exture_v2_018.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_bonda_exture_v2_018.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_bonda_exture_v2_018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_bonda_exture_v2_018.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 39 branches
    index = koscom_mdcsrealtime_bonda_exture_v2_018.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_bonda_exture_v2_018.init()
end

-- Dissector for Koscom MdcsRealtime BondA Exture 2.018
function omi_koscom_mdcsrealtime_bonda_exture_v2_018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_bonda_exture_v2_018.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_bonda_exture_v2_018, buffer(), omi_koscom_mdcsrealtime_bonda_exture_v2_018.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_bonda_exture_v2_018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime BondA Exture 2.018 (Udp)
local function omi_koscom_mdcsrealtime_bonda_exture_v2_018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_bonda_exture_v2_018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_bonda_exture_v2_018
  omi_koscom_mdcsrealtime_bonda_exture_v2_018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime BondA Exture 2.018
omi_koscom_mdcsrealtime_bonda_exture_v2_018:register_heuristic("udp", omi_koscom_mdcsrealtime_bonda_exture_v2_018_udp_heuristic)

-- Register Koscom MdcsRealtime BondA Exture 2.018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_bonda_exture_v2_018)

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
