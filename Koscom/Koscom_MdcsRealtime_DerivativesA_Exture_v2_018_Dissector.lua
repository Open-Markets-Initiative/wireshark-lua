-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime DerivativesA Exture 2.018 Protocol
local omi_koscom_mdcsrealtime_derivativesa_exture_v2_018 = Proto("Omi.Koscom.MdcsRealtime.DerivativesA.Exture.v2.018", "Koscom MdcsRealtime DerivativesA Exture 2.018")

-- Protocol table
local koscom_mdcsrealtime_derivativesa_exture_v2_018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime DerivativesA Exture 2.018 Fields
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.derivativesa.exture.v2.018.adesignatednumberforanissue", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.abbreviatedissuecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.derivativesa.exture.v2.018.abbreviatedissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.derivativesa.exture.v2.018.abbreviatedissuenameinen", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.accumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjusted_base_price = ProtoField.new("Adjusted Base Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.adjustedbaseprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = ProtoField.new("Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted", "koscom.mdcsrealtime.derivativesa.exture.v2.018.adjustmentcoefficientofopenintetestvolumesthathavebeenadjusted", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjustment_reason_code = ProtoField.new("Adjustment Reason Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.adjustmentreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.allocation_type_code = ProtoField.new("Allocation Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.allocationtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.application_date = ProtoField.new("Application Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.applicationdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_order_counts = ProtoField.new("Ask Level 1 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel1ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_order_counts = ProtoField.new("Ask Level 10 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel10ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel10price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_order_counts = ProtoField.new("Ask Level 2 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel2ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_order_counts = ProtoField.new("Ask Level 3 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel3ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_order_counts = ProtoField.new("Ask Level 4 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel4ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_order_counts = ProtoField.new("Ask Level 5 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel5ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_order_counts = ProtoField.new("Ask Level 6 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel6ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel6price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_order_counts = ProtoField.new("Ask Level 7 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel7ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel7price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_order_counts = ProtoField.new("Ask Level 8 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel8ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel8price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_order_counts = ProtoField.new("Ask Level 9 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel9ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel9price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asklevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_price_valid_counts = ProtoField.new("Ask Price Valid Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.askpricevalidcounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_total_volume = ProtoField.new("Ask Total Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asktotalvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_trading_value = ProtoField.new("Ask Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asktradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_trading_volume = ProtoField.new("Ask Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.asktradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.atm = ProtoField.new("Atm", "koscom.mdcsrealtime.derivativesa.exture.v2.018.atm", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.atm_type_code = ProtoField.new("Atm Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.atmtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.baseprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_adjustment_type_code = ProtoField.new("Base Price Adjustment Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basepriceadjustmenttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_for_trading_type_code = ProtoField.new("Base Price For Trading Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basepricefortradingtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_of_clearing_margins = ProtoField.new("Base Price Of Clearing Margins", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basepriceofclearingmargins", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_of_clearing_margins_type_code = ProtoField.new("Base Price Of Clearing Margins Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basepriceofclearingmarginstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_type_code = ProtoField.new("Base Price Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basepricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_product_id = ProtoField.new("Base Product Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.baseproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_theoretical_price = ProtoField.new("Base Theoretical Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.basetheoreticalprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.best_favorable_order_permission_type_code = ProtoField.new("Best Favorable Order Permission Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bestfavorableorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_order_counts = ProtoField.new("Bid Level 1 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel1ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel1price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel1volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_order_counts = ProtoField.new("Bid Level 10 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel10ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel10price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel10volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_order_counts = ProtoField.new("Bid Level 2 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel2ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel2price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel2volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_order_counts = ProtoField.new("Bid Level 3 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel3ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel3price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel3volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_order_counts = ProtoField.new("Bid Level 4 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel4ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel4price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel4volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_order_counts = ProtoField.new("Bid Level 5 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel5ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel5price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel5volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_order_counts = ProtoField.new("Bid Level 6 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel6ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel6price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel6volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_order_counts = ProtoField.new("Bid Level 7 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel7ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel7price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel7volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_order_counts = ProtoField.new("Bid Level 8 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel8ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel8price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel8volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_order_counts = ProtoField.new("Bid Level 9 Order Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel9ordercounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel9price", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidlevel9volume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_price_valid_counts = ProtoField.new("Bid Price Valid Counts", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidpricevalidcounts", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_total_volume = ProtoField.new("Bid Total Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidtotalvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_trading_value = ProtoField.new("Bid Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_trading_volume = ProtoField.new("Bid Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bidtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_announcement_date = ProtoField.new("Bis Announcement Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bisannouncementdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_announcement_time = ProtoField.new("Bis Announcement Time", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bisannouncementtime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_time_of_inputting_yield_rate = ProtoField.new("Bis Time Of Inputting Yield Rate", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bistimeofinputtingyieldrate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_yield_ratio = ProtoField.new("Bis Yield Ratio", "koscom.mdcsrealtime.derivativesa.exture.v2.018.bisyieldratio", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.block_trading_type_code = ProtoField.new("Block Trading Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.blocktradingtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.boardeventgroupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_id = ProtoField.new("Board Event Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.boardeventid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_processing_time = ProtoField.new("Board Event Processing Time", "koscom.mdcsrealtime.derivativesa.exture.v2.018.boardeventprocessingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.boardid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculation_time_string_6 = ProtoField.new("Calculation Time String 6", "koscom.mdcsrealtime.derivativesa.exture.v2.018.calculationtimestring6", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculation_time_string_9 = ProtoField.new("Calculation Time String 9", "koscom.mdcsrealtime.derivativesa.exture.v2.018.calculationtimestring9", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.call_averaged_implied_volatility = ProtoField.new("Call Averaged Implied Volatility", "koscom.mdcsrealtime.derivativesa.exture.v2.018.callaveragedimpliedvolatility", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.closingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price_of_underlying_asset = ProtoField.new("Closing Price Of Underlying Asset", "koscom.mdcsrealtime.derivativesa.exture.v2.018.closingpriceofunderlyingasset", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.closingpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.conditioned_order_permission_type_code = ProtoField.new("Conditioned Order Permission Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.conditionedorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.conversion_factor = ProtoField.new("Conversion Factor", "koscom.mdcsrealtime.derivativesa.exture.v2.018.conversionfactor", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.date = ProtoField.new("Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.date", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.delisting_date = ProtoField.new("Delisting Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.delistingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.denominator_coefficient_of_adjustment = ProtoField.new("Denominator Coefficient Of Adjustment", "koscom.mdcsrealtime.derivativesa.exture.v2.018.denominatorcoefficientofadjustment", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.designation_date_for_suspended_stocks = ProtoField.new("Designation Date For Suspended Stocks", "koscom.mdcsrealtime.derivativesa.exture.v2.018.designationdateforsuspendedstocks", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.direction_of_price_limit_expansion_type_code = ProtoField.new("Direction Of Price Limit Expansion Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.directionofpricelimitexpansiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disclosure_date = ProtoField.new("Disclosure Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.disclosuredate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disclosure_type = ProtoField.new("Disclosure Type", "koscom.mdcsrealtime.derivativesa.exture.v2.018.disclosuretype", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disparate_ratio = ProtoField.new("Disparate Ratio", "koscom.mdcsrealtime.derivativesa.exture.v2.018.disparateratio", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.distant_month_contract_trading_price = ProtoField.new("Distant Month Contract Trading Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.distantmonthcontracttradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.dividend_value_for_settlement_price = ProtoField.new("Dividend Value For Settlement Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.dividendvalueforsettlementprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.dynamic_price_limit_type_code = ProtoField.new("Dynamic Price Limit Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.dynamicpricelimittypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_item = ProtoField.new("Efp Trading Item", "koscom.mdcsrealtime.derivativesa.exture.v2.018.efptradingitem", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_value = ProtoField.new("Efp Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.efptradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_volume = ProtoField.new("Efp Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.efptradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.derivativesa.exture.v2.018.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.english_issue_name = ProtoField.new("English Issue Name", "koscom.mdcsrealtime.derivativesa.exture.v2.018.englishissuename", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.estimatedtradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.estimatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price = ProtoField.new("Exercise Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.exerciseprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_after_adjustment = ProtoField.new("Exercise Price After Adjustment", "koscom.mdcsrealtime.derivativesa.exture.v2.018.exercisepriceafteradjustment", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_before_adjustment = ProtoField.new("Exercise Price Before Adjustment", "koscom.mdcsrealtime.derivativesa.exture.v2.018.exercisepricebeforeadjustment", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_for_displaying_not_for_trading = ProtoField.new("Exercise Price For Displaying Not For Trading", "koscom.mdcsrealtime.derivativesa.exture.v2.018.exercisepricefordisplayingnotfortrading", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "koscom.mdcsrealtime.derivativesa.exture.v2.018.expectedtimeofexpandingpricelimitrange", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.expiration_date = ProtoField.new("Expiration Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.expirationdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.finalaskbidtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.final_stage_of_price_limit_expansion = ProtoField.new("Final Stage Of Price Limit Expansion", "koscom.mdcsrealtime.derivativesa.exture.v2.018.finalstageofpricelimitexpansion", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.flex_trading_item = ProtoField.new("Flex Trading Item", "koscom.mdcsrealtime.derivativesa.exture.v2.018.flextradingitem", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_circuit_breakers_lower_limit_price = ProtoField.new("Futures Circuit Breakers Lower Limit Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.futurescircuitbreakerslowerlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_circuit_breakers_upper_limit_price = ProtoField.new("Futures Circuit Breakers Upper Limit Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.futurescircuitbreakersupperlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_options_type_code = ProtoField.new("Futures Options Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.futuresoptionstypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.gap_between_lower_limit_price_of_dynamic_price_and_trading_value = ProtoField.new("Gap Between Lower Limit Price Of Dynamic Price And Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.gapbetweenlowerlimitpriceofdynamicpriceandtradingvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.gap_between_upper_limit_price_of_dynamic_price_and_trading_value = ProtoField.new("Gap Between Upper Limit Price Of Dynamic Price And Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.gapbetweenupperlimitpriceofdynamicpriceandtradingvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.historical_volatility_90_days = ProtoField.new("Historical Volatility 90 Days", "koscom.mdcsrealtime.derivativesa.exture.v2.018.historicalvolatility90days", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.implied_volatility = ProtoField.new("Implied Volatility", "koscom.mdcsrealtime.derivativesa.exture.v2.018.impliedvolatility", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.implied_volatility_type_code = ProtoField.new("Implied Volatility Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.impliedvolatilitytypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.indexed_interest_rate = ProtoField.new("Indexed Interest Rate", "koscom.mdcsrealtime.derivativesa.exture.v2.018.indexedinterestrate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate = ProtoField.new("Interest Rate", "koscom.mdcsrealtime.derivativesa.exture.v2.018.interestrate", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_180_day = ProtoField.new("Interest Rate 180 Day", "koscom.mdcsrealtime.derivativesa.exture.v2.018.interestrate180day", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_30_day = ProtoField.new("Interest Rate 30 Day", "koscom.mdcsrealtime.derivativesa.exture.v2.018.interestrate30day", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_90_day = ProtoField.new("Interest Rate 90 Day", "koscom.mdcsrealtime.derivativesa.exture.v2.018.interestrate90day", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.investor_code = ProtoField.new("Investor Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.investorcode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "koscom.mdcsrealtime.derivativesa.exture.v2.018.isincodeofacommonstock", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_of_base_issue_for_payment = ProtoField.new("Isin Of Base Issue For Payment", "koscom.mdcsrealtime.derivativesa.exture.v2.018.isinofbaseissueforpayment", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_of_underlying_asset = ProtoField.new("Isin Of Underlying Asset", "koscom.mdcsrealtime.derivativesa.exture.v2.018.isinofunderlyingasset", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.issue_name = ProtoField.new("Issue Name", "koscom.mdcsrealtime.derivativesa.exture.v2.018.issuename", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ktb_isin = ProtoField.new("Ktb Isin", "koscom.mdcsrealtime.derivativesa.exture.v2.018.ktbisin", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_payment_date = ProtoField.new("Last Payment Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lastpaymentdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_settlement_price_type_code = ProtoField.new("Last Settlement Price Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lastsettlementpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_trading_date = ProtoField.new("Last Trading Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lasttradingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_trading_day = ProtoField.new("Last Trading Day", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lasttradingday", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.limit_order_permission_type_code = ProtoField.new("Limit Order Permission Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.limitorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.limitation_of_dynamic_price = ProtoField.new("Limitation Of Dynamic Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.limitationofdynamicprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.listingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.listing_type_code = ProtoField.new("Listing Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.listingtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_of_dynamic_price_range = ProtoField.new("Lower Limit Of Dynamic Price Range", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerlimitofdynamicpricerange", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_quantity = ProtoField.new("Lower Limit Quantity", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerlimitquantity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_quantity_for_block_trade = ProtoField.new("Lower Limit Quantity For Block Trade", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerlimitquantityforblocktrade", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_1_st_stage = ProtoField.new("Lower Price Limit 1 St Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerpricelimit1ststage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_2_nd_stage = ProtoField.new("Lower Price Limit 2 Nd Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerpricelimit2ndstage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_3_rd_stage = ProtoField.new("Lower Price Limit 3 Rd Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.lowerpricelimit3rdstage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_holidays = ProtoField.new("Market Holidays", "koscom.mdcsrealtime.derivativesa.exture.v2.018.marketholidays", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_id = ProtoField.new("Market Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.marketid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.marketoperationproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_price_order_permission_type_code = ProtoField.new("Market Price Order Permission Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.marketpriceorderpermissiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.me_group_number = ProtoField.new("Me Group Number", "koscom.mdcsrealtime.derivativesa.exture.v2.018.megroupnumber", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.derivativesa.exture.v2.018.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.nearby_month_contract_trading_price = ProtoField.new("Nearby Month Contract Trading Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.nearbymonthcontracttradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_issues_for_base_product = ProtoField.new("Number Of Issues For Base Product", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberofissuesforbaseproduct", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_issues_for_subsidiary_product = ProtoField.new("Number Of Issues For Subsidiary Product", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberofissuesforsubsidiaryproduct", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_listing_days_per_year = ProtoField.new("Number Of Listing Days Per Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberoflistingdaysperyear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_previous_days_trading = ProtoField.new("Number Of Previous Days Trading", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberofpreviousdaystrading", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_trading_days_per_month = ProtoField.new("Number Of Trading Days Per Month", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberoftradingdayspermonth", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_trading_days_per_year = ProtoField.new("Number Of Trading Days Per Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numberoftradingdaysperyear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.numerator_adjustment_of_coefficient = ProtoField.new("Numerator Adjustment Of Coefficient", "koscom.mdcsrealtime.derivativesa.exture.v2.018.numeratoradjustmentofcoefficient", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.offset_rate_of_asset_group = ProtoField.new("Offset Rate Of Asset Group", "koscom.mdcsrealtime.derivativesa.exture.v2.018.offsetrateofassetgroup", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest = ProtoField.new("Open Interest", "koscom.mdcsrealtime.derivativesa.exture.v2.018.openinterest", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest_limit_quantity = ProtoField.new("Open Interest Limit Quantity", "koscom.mdcsrealtime.derivativesa.exture.v2.018.openinterestlimitquantity", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest_type_code = ProtoField.new("Open Interest Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.openinteresttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.openingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.derivativesa.exture.v2.018.packet", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.payment_methods = ProtoField.new("Payment Methods", "koscom.mdcsrealtime.derivativesa.exture.v2.018.paymentmethods", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_adjusted_closing_price = ProtoField.new("Previous Days Adjusted Closing Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysadjustedclosingprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_best_ask = ProtoField.new("Previous Days Best Ask", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysbestask", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_best_bid = ProtoField.new("Previous Days Best Bid", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysbestbid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_bpmm = ProtoField.new("Previous Days Bpmm", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysbpmm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_high_price = ProtoField.new("Previous Days High Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdayshighprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_low_price = ProtoField.new("Previous Days Low Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdayslowprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_open_interest = ProtoField.new("Previous Days Open Interest", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysopeninterest", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_opening_price = ProtoField.new("Previous Days Opening Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaysopeningprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_settlement_price = ProtoField.new("Previous Days Settlement Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdayssettlementprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_total_accumulated_trading_value = ProtoField.new("Previous Days Total Accumulated Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaystotalaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_total_accumulated_trading_volume = ProtoField.new("Previous Days Total Accumulated Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousdaystotalaccumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_price = ProtoField.new("Previous Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.previousprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_expansion_lower_limit = ProtoField.new("Price Limit Expansion Lower Limit", "koscom.mdcsrealtime.derivativesa.exture.v2.018.pricelimitexpansionlowerlimit", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_expansion_upper_limit = ProtoField.new("Price Limit Expansion Upper Limit", "koscom.mdcsrealtime.derivativesa.exture.v2.018.pricelimitexpansionupperlimit", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "koscom.mdcsrealtime.derivativesa.exture.v2.018.processingtimeoftradingsystem", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.product_id = ProtoField.new("Product Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.productid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.put_averaged_implied_volatility = ProtoField.new("Put Averaged Implied Volatility", "koscom.mdcsrealtime.derivativesa.exture.v2.018.putaveragedimpliedvolatility", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.remaining_days = ProtoField.new("Remaining Days", "koscom.mdcsrealtime.derivativesa.exture.v2.018.remainingdays", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.representative_implied_volatility = ProtoField.new("Representative Implied Volatility", "koscom.mdcsrealtime.derivativesa.exture.v2.018.representativeimpliedvolatility", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.rfr = ProtoField.new("Rfr", "koscom.mdcsrealtime.derivativesa.exture.v2.018.rfr", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.rights_execution_type_code = ProtoField.new("Rights Execution Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.rightsexecutiontypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_delta = ProtoField.new("Sensitivity Delta", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sensitivitydelta", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_gamma = ProtoField.new("Sensitivity Gamma", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sensitivitygamma", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_rho = ProtoField.new("Sensitivity Rho", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sensitivityrho", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_theta = ProtoField.new("Sensitivity Theta", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sensitivitytheta", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_vega = ProtoField.new("Sensitivity Vega", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sensitivityvega", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sequence_number_for_delivery_month = ProtoField.new("Sequence Number For Delivery Month", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sequencenumberfordeliverymonth", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sessionid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.session_start_end_code = ProtoField.new("Session Start End Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.sessionstartendcode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price = ProtoField.new("Settlement Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.settlementprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price_after_exercising_an_option = ProtoField.new("Settlement Price After Exercising An Option", "koscom.mdcsrealtime.derivativesa.exture.v2.018.settlementpriceafterexercisinganoption", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price_type_code = ProtoField.new("Settlement Price Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.settlementpricetypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_week = ProtoField.new("Settlement Week", "koscom.mdcsrealtime.derivativesa.exture.v2.018.settlementweek", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_ask_trading_value = ProtoField.new("Spread Ask Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadasktradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_ask_trading_volume = ProtoField.new("Spread Ask Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadasktradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_bid_trading_value = ProtoField.new("Spread Bid Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadbidtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_bid_trading_volume = ProtoField.new("Spread Bid Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadbidtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_composition_code = ProtoField.new("Spread Composition Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadcompositioncode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_issue_isin_1 = ProtoField.new("Spread Issue Isin 1", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadissueisin1", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_issue_isin_2 = ProtoField.new("Spread Issue Isin 2", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadissueisin2", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_type_code = ProtoField.new("Spread Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.spreadtypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.start_end_of_allocation = ProtoField.new("Start End Of Allocation", "koscom.mdcsrealtime.derivativesa.exture.v2.018.startendofallocation", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "koscom.mdcsrealtime.derivativesa.exture.v2.018.starttimeofaboardevent", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.step_applied = ProtoField.new("Step Applied", "koscom.mdcsrealtime.derivativesa.exture.v2.018.stepapplied", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.subsidiary_product_id = ProtoField.new("Subsidiary Product Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.subsidiaryproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.suspended_stocks = ProtoField.new("Suspended Stocks", "koscom.mdcsrealtime.derivativesa.exture.v2.018.suspendedstocks", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_highest_premium_in_a_year = ProtoField.new("The Date Of The Highest Premium In A Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thedateofthehighestpremiuminayear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_highest_premium_of_the_lifetime = ProtoField.new("The Date Of The Highest Premium Of The Lifetime", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thedateofthehighestpremiumofthelifetime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_lowest_premium_in_a_year = ProtoField.new("The Date Of The Lowest Premium In A Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thedateofthelowestpremiuminayear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_lowest_premium_of_the_lifetime = ProtoField.new("The Date Of The Lowest Premium Of The Lifetime", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thedateofthelowestpremiumofthelifetime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_first_trading_date = ProtoField.new("The First Trading Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thefirsttradingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_highest_premium_in_a_year = ProtoField.new("The Highest Premium In A Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thehighestpremiuminayear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_highest_premium_of_the_lifetime = ProtoField.new("The Highest Premium Of The Lifetime", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thehighestpremiumofthelifetime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_last_settlement_price = ProtoField.new("The Last Settlement Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thelastsettlementprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_last_trading_time = ProtoField.new("The Last Trading Time", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thelasttradingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_lowest_premium_in_a_year = ProtoField.new("The Lowest Premium In A Year", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thelowestpremiuminayear", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_lowest_premium_of_the_lifetime = ProtoField.new("The Lowest Premium Of The Lifetime", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thelowestpremiumofthelifetime", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_time_imposing_a_price_limit = ProtoField.new("The Time Imposing A Price Limit", "koscom.mdcsrealtime.derivativesa.exture.v2.018.thetimeimposingapricelimit", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.theoretical_settlement_price = ProtoField.new("Theoretical Settlement Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.theoreticalsettlementprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.time_when_allocation_ended = ProtoField.new("Time When Allocation Ended", "koscom.mdcsrealtime.derivativesa.exture.v2.018.timewhenallocationended", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.derivativesa.exture.v2.018.todayshigh", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.derivativesa.exture.v2.018.todayslow", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_accumulated_trading_value = ProtoField.new("Total Accumulated Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.totalaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_accumulated_trading_volume = ProtoField.new("Total Accumulated Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.totalaccumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.derivativesa.exture.v2.018.totalnumberofinstrumentsofthecontract", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradinghalt", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradinghaltreasoncode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradinghalttypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier = ProtoField.new("Trading Multiplier", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingmultiplier", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier_after_adjustment_equity_options_10 = ProtoField.new("Trading Multiplier After Adjustment Equity Options 10", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingmultiplierafteradjustmentequityoptions10", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier_before_adjustment = ProtoField.new("Trading Multiplier Before Adjustment", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingmultiplierbeforeadjustment", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_unit = ProtoField.new("Trading Unit", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingunit", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.derivativesa.exture.v2.018.tradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.transaction_status_type_code = ProtoField.new("Transaction Status Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.transactionstatustypecode", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.type_code_of_settlement_price_after_exercising_an_option = ProtoField.new("Type Code Of Settlement Price After Exercising An Option", "koscom.mdcsrealtime.derivativesa.exture.v2.018.typecodeofsettlementpriceafterexercisinganoption", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.type_of_liquidityproviding_lp = ProtoField.new("Type Of Liquidityproviding Lp", "koscom.mdcsrealtime.derivativesa.exture.v2.018.typeofliquidityprovidinglp", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_id = ProtoField.new("Underlying Asset Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.underlyingassetid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_market_id = ProtoField.new("Underlying Asset Market Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.underlyingassetmarketid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_product_id = ProtoField.new("Underlying Asset Product Id", "koscom.mdcsrealtime.derivativesa.exture.v2.018.underlyingassetproductid", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_of_dynamic_price_range = ProtoField.new("Upper Limit Of Dynamic Price Range", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperlimitofdynamicpricerange", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperlimitprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_quantity = ProtoField.new("Upper Limit Quantity", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperlimitquantity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_quantity_for_block_trade = ProtoField.new("Upper Limit Quantity For Block Trade", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperlimitquantityforblocktrade", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_1_st_stage = ProtoField.new("Upper Price Limit 1 St Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperpricelimit1ststage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_2_nd_stage = ProtoField.new("Upper Price Limit 2 Nd Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperpricelimit2ndstage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_3_rd_stage = ProtoField.new("Upper Price Limit 3 Rd Stage", "koscom.mdcsrealtime.derivativesa.exture.v2.018.upperpricelimit3rdstage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_accumulated_trading_amount = ProtoField.new("Yesterdays Accumulated Trading Amount", "koscom.mdcsrealtime.derivativesa.exture.v2.018.yesterdaysaccumulatedtradingamount", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_accumulated_trading_value = ProtoField.new("Yesterdays Accumulated Trading Value", "koscom.mdcsrealtime.derivativesa.exture.v2.018.yesterdaysaccumulatedtradingvalue", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_closing_price = ProtoField.new("Yesterdays Closing Price", "koscom.mdcsrealtime.derivativesa.exture.v2.018.yesterdaysclosingprice", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_closing_price_type_code = ProtoField.new("Yesterdays Closing Price Type Code", "koscom.mdcsrealtime.derivativesa.exture.v2.018.yesterdaysclosingpricetypecode", ftypes.STRING)

-- Koscom MdcsRealtime Exture DerivativesA 2.018 Application Messages
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.commodity_futures_settlement_reference_ktb_message = ProtoField.new("Commodity Futures Settlement Reference Ktb Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.commodityfuturessettlementreferencektbmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.commodity_futures_spot_settlement_reference_message = ProtoField.new("Commodity Futures Spot Settlement Reference Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.commodityfuturesspotsettlementreferencemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.daily_disclosed_rfr_message = ProtoField.new("Daily Disclosed Rfr Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.dailydisclosedrfrmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_batch_data_message = ProtoField.new("Derivatives Batch Data Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesbatchdatamessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_dynamic_upper_lower_limit_message = ProtoField.new("Derivatives Dynamic Upper Lower Limit Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesdynamicupperlowerlimitmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_group_order_acceptance_halt_message = ProtoField.new("Derivatives Group Order Acceptance Halt Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesgrouporderacceptancehaltmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_investor_activities_message = ProtoField.new("Derivatives Investor Activities Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesinvestoractivitiesmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_issue_closing_message = ProtoField.new("Derivatives Issue Closing Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesissueclosingmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_schedule_message = ProtoField.new("Derivatives Market Operation Schedule Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesmarketoperationschedulemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_message = ProtoField.new("Derivatives Market Operation Ts Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesmarketoperationtsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_plus_quote_five_levels_message = ProtoField.new("Derivatives Market Operation Ts Plus Quote Five Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesmarketoperationtsplusquotefivelevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_plus_quote_ten_levels_message = ProtoField.new("Derivatives Market Operation Ts Plus Quote Ten Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesmarketoperationtsplusquotetenlevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_negotiated_trade_message = ProtoField.new("Derivatives Negotiated Trade Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesnegotiatedtrademessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_open_interest_message = ProtoField.new("Derivatives Open Interest Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesopeninterestmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_message = ProtoField.new("Derivatives Order Filled Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesorderfilledmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_plus_quote_five_levels_message = ProtoField.new("Derivatives Order Filled Plus Quote Five Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesorderfilledplusquotefivelevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_plus_quote_ten_levels_message = ProtoField.new("Derivatives Order Filled Plus Quote Ten Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesorderfilledplusquotetenlevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_price_limit_range_increase_message = ProtoField.new("Derivatives Price Limit Range Increase Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativespricelimitrangeincreasemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quantity_allocation_message = ProtoField.new("Derivatives Quantity Allocation Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesquantityallocationmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quote_five_levels_message = ProtoField.new("Derivatives Quote Five Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesquotefivelevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quote_ten_levels_message = ProtoField.new("Derivatives Quote Ten Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativesquotetenlevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_snapshot_five_levels_message = ProtoField.new("Derivatives Snapshot Five Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativessnapshotfivelevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_snapshot_ten_levels_message = ProtoField.new("Derivatives Snapshot Ten Levels Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.derivativessnapshottenlevelsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.equity_derivatives_adjustment_details_message = ProtoField.new("Equity Derivatives Adjustment Details Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.equityderivativesadjustmentdetailsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_settled_price_message = ProtoField.new("Futures Settled Price Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.futuressettledpricemessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_base_price_of_clearing_margins_message = ProtoField.new("Options Base Price Of Clearing Margins Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.optionsbasepriceofclearingmarginsmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_implied_volatility_message = ProtoField.new("Options Implied Volatility Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.optionsimpliedvolatilitymessage", ftypes.STRING)
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_sensitivity_message = ProtoField.new("Options Sensitivity Message", "koscom.mdcsrealtime.derivativesa.exture.v2.018.optionssensitivitymessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime DerivativesA Exture 2.018 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime DerivativesA Exture 2.018 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime DerivativesA Exture 2.018 Show Options
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")


-- Handle changed preferences
function omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime DerivativesA Exture 2.018 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Adjusted Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price = {}

-- Size: Adjusted Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.size = 18

-- Display: Adjusted Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.display = function(value)
  return "Adjusted Base Price: "..value
end

-- Dissect: Adjusted Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjusted_base_price, range, value, display)

  return offset + length, value
end

-- Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = {}

-- Size: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size = 6

-- Display: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.display = function(value)
  return "Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted: "..value
end

-- Dissect: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted, range, value, display)

  return offset + length, value
end

-- Adjustment Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code = {}

-- Size: Adjustment Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.size = 2

-- Display: Adjustment Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.display = function(value)
  return "Adjustment Reason Code: "..value
end

-- Dissect: Adjustment Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.adjustment_reason_code, range, value, display)

  return offset + length, value
end

-- Allocation Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code = {}

-- Size: Allocation Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.size = 1

-- Display: Allocation Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.display = function(value)
  return "Allocation Type Code: "..value
end

-- Dissect: Allocation Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.allocation_type_code, range, value, display)

  return offset + length, value
end

-- Application Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date = {}

-- Size: Application Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.size = 8

-- Display: Application Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.display = function(value)
  return "Application Date: "..value
end

-- Dissect: Application Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.application_date, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts = {}

-- Size: Ask Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size = 5

-- Display: Ask Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.display = function(value)
  return "Ask Level 1 Order Counts: "..value
end

-- Dissect: Ask Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price = {}

-- Size: Ask Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size = 9

-- Display: Ask Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size = 9

-- Display: Ask Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts = {}

-- Size: Ask Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size = 5

-- Display: Ask Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.display = function(value)
  return "Ask Level 10 Order Counts: "..value
end

-- Dissect: Ask Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price = {}

-- Size: Ask Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size = 9

-- Display: Ask Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.display = function(value)
  return "Ask Level 10 Price: "..value
end

-- Dissect: Ask Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size = 9

-- Display: Ask Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.display = function(value)
  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts = {}

-- Size: Ask Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size = 5

-- Display: Ask Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.display = function(value)
  return "Ask Level 2 Order Counts: "..value
end

-- Dissect: Ask Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price = {}

-- Size: Ask Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size = 9

-- Display: Ask Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size = 9

-- Display: Ask Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts = {}

-- Size: Ask Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size = 5

-- Display: Ask Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.display = function(value)
  return "Ask Level 3 Order Counts: "..value
end

-- Dissect: Ask Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price = {}

-- Size: Ask Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size = 9

-- Display: Ask Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size = 9

-- Display: Ask Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts = {}

-- Size: Ask Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size = 5

-- Display: Ask Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.display = function(value)
  return "Ask Level 4 Order Counts: "..value
end

-- Dissect: Ask Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price = {}

-- Size: Ask Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size = 9

-- Display: Ask Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.display = function(value)
  return "Ask Level 4 Price: "..value
end

-- Dissect: Ask Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size = 9

-- Display: Ask Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.display = function(value)
  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts = {}

-- Size: Ask Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size = 5

-- Display: Ask Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.display = function(value)
  return "Ask Level 5 Order Counts: "..value
end

-- Dissect: Ask Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price = {}

-- Size: Ask Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size = 9

-- Display: Ask Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.display = function(value)
  return "Ask Level 5 Price: "..value
end

-- Dissect: Ask Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size = 9

-- Display: Ask Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.display = function(value)
  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts = {}

-- Size: Ask Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size = 5

-- Display: Ask Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.display = function(value)
  return "Ask Level 6 Order Counts: "..value
end

-- Dissect: Ask Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price = {}

-- Size: Ask Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size = 9

-- Display: Ask Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.display = function(value)
  return "Ask Level 6 Price: "..value
end

-- Dissect: Ask Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size = 9

-- Display: Ask Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.display = function(value)
  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts = {}

-- Size: Ask Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size = 5

-- Display: Ask Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.display = function(value)
  return "Ask Level 7 Order Counts: "..value
end

-- Dissect: Ask Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price = {}

-- Size: Ask Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size = 9

-- Display: Ask Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.display = function(value)
  return "Ask Level 7 Price: "..value
end

-- Dissect: Ask Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size = 9

-- Display: Ask Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.display = function(value)
  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts = {}

-- Size: Ask Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size = 5

-- Display: Ask Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.display = function(value)
  return "Ask Level 8 Order Counts: "..value
end

-- Dissect: Ask Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price = {}

-- Size: Ask Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size = 9

-- Display: Ask Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.display = function(value)
  return "Ask Level 8 Price: "..value
end

-- Dissect: Ask Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size = 9

-- Display: Ask Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.display = function(value)
  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts = {}

-- Size: Ask Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size = 5

-- Display: Ask Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.display = function(value)
  return "Ask Level 9 Order Counts: "..value
end

-- Dissect: Ask Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price = {}

-- Size: Ask Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size = 9

-- Display: Ask Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.display = function(value)
  return "Ask Level 9 Price: "..value
end

-- Dissect: Ask Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size = 9

-- Display: Ask Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.display = function(value)
  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Ask Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts = {}

-- Size: Ask Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size = 5

-- Display: Ask Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.display = function(value)
  return "Ask Price Valid Counts: "..value
end

-- Dissect: Ask Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_price_valid_counts, range, value, display)

  return offset + length, value
end

-- Ask Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume = {}

-- Size: Ask Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size = 9

-- Display: Ask Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.display = function(value)
  return "Ask Total Volume: "..value
end

-- Dissect: Ask Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_total_volume, range, value, display)

  return offset + length, value
end

-- Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value = {}

-- Size: Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.size = 22

-- Display: Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.display = function(value)
  return "Ask Trading Value: "..value
end

-- Dissect: Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_trading_value, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume = {}

-- Size: Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.size = 10

-- Display: Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.display = function(value)
  return "Ask Trading Volume: "..value
end

-- Dissect: Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Atm
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm = {}

-- Size: Atm
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.size = 11

-- Display: Atm
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.display = function(value)
  return "Atm: "..value
end

-- Dissect: Atm
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.atm, range, value, display)

  return offset + length, value
end

-- Atm Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code = {}

-- Size: Atm Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.size = 1

-- Display: Atm Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.display = function(value)
  return "Atm Type Code: "..value
end

-- Dissect: Atm Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.atm_type_code, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Price Adjustment Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code = {}

-- Size: Base Price Adjustment Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.size = 1

-- Display: Base Price Adjustment Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.display = function(value)
  return "Base Price Adjustment Type Code: "..value
end

-- Dissect: Base Price Adjustment Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_adjustment_type_code, range, value, display)

  return offset + length, value
end

-- Base Price For Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code = {}

-- Size: Base Price For Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.size = 1

-- Display: Base Price For Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.display = function(value)
  return "Base Price For Trading Type Code: "..value
end

-- Dissect: Base Price For Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_for_trading_type_code, range, value, display)

  return offset + length, value
end

-- Base Price Of Clearing Margins
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins = {}

-- Size: Base Price Of Clearing Margins
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.size = 18

-- Display: Base Price Of Clearing Margins
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.display = function(value)
  return "Base Price Of Clearing Margins: "..value
end

-- Dissect: Base Price Of Clearing Margins
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_of_clearing_margins, range, value, display)

  return offset + length, value
end

-- Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code = {}

-- Size: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.size = 2

-- Display: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.display = function(value)
  return "Base Price Of Clearing Margins Type Code: "..value
end

-- Dissect: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_of_clearing_margins_type_code, range, value, display)

  return offset + length, value
end

-- Base Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code = {}

-- Size: Base Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.size = 2

-- Display: Base Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.display = function(value)
  return "Base Price Type Code: "..value
end

-- Dissect: Base Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_price_type_code, range, value, display)

  return offset + length, value
end

-- Base Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id = {}

-- Size: Base Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.size = 11

-- Display: Base Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.display = function(value)
  return "Base Product Id: "..value
end

-- Dissect: Base Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_product_id, range, value, display)

  return offset + length, value
end

-- Base Theoretical Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price = {}

-- Size: Base Theoretical Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.size = 16

-- Display: Base Theoretical Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.display = function(value)
  return "Base Theoretical Price: "..value
end

-- Dissect: Base Theoretical Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.base_theoretical_price, range, value, display)

  return offset + length, value
end

-- Best Favorable Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code = {}

-- Size: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.size = 5

-- Display: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.display = function(value)
  return "Best Favorable Order Permission Type Code: "..value
end

-- Dissect: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.best_favorable_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts = {}

-- Size: Bid Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size = 5

-- Display: Bid Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.display = function(value)
  return "Bid Level 1 Order Counts: "..value
end

-- Dissect: Bid Level 1 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price = {}

-- Size: Bid Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size = 9

-- Display: Bid Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size = 9

-- Display: Bid Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts = {}

-- Size: Bid Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size = 5

-- Display: Bid Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.display = function(value)
  return "Bid Level 10 Order Counts: "..value
end

-- Dissect: Bid Level 10 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price = {}

-- Size: Bid Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size = 9

-- Display: Bid Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.display = function(value)
  return "Bid Level 10 Price: "..value
end

-- Dissect: Bid Level 10 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size = 9

-- Display: Bid Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.display = function(value)
  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts = {}

-- Size: Bid Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size = 5

-- Display: Bid Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.display = function(value)
  return "Bid Level 2 Order Counts: "..value
end

-- Dissect: Bid Level 2 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price = {}

-- Size: Bid Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size = 9

-- Display: Bid Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size = 9

-- Display: Bid Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts = {}

-- Size: Bid Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size = 5

-- Display: Bid Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.display = function(value)
  return "Bid Level 3 Order Counts: "..value
end

-- Dissect: Bid Level 3 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price = {}

-- Size: Bid Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size = 9

-- Display: Bid Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size = 9

-- Display: Bid Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts = {}

-- Size: Bid Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size = 5

-- Display: Bid Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.display = function(value)
  return "Bid Level 4 Order Counts: "..value
end

-- Dissect: Bid Level 4 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price = {}

-- Size: Bid Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size = 9

-- Display: Bid Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.display = function(value)
  return "Bid Level 4 Price: "..value
end

-- Dissect: Bid Level 4 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size = 9

-- Display: Bid Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.display = function(value)
  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts = {}

-- Size: Bid Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size = 5

-- Display: Bid Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.display = function(value)
  return "Bid Level 5 Order Counts: "..value
end

-- Dissect: Bid Level 5 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price = {}

-- Size: Bid Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size = 9

-- Display: Bid Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.display = function(value)
  return "Bid Level 5 Price: "..value
end

-- Dissect: Bid Level 5 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size = 9

-- Display: Bid Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.display = function(value)
  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts = {}

-- Size: Bid Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size = 5

-- Display: Bid Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.display = function(value)
  return "Bid Level 6 Order Counts: "..value
end

-- Dissect: Bid Level 6 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price = {}

-- Size: Bid Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size = 9

-- Display: Bid Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.display = function(value)
  return "Bid Level 6 Price: "..value
end

-- Dissect: Bid Level 6 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size = 9

-- Display: Bid Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.display = function(value)
  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts = {}

-- Size: Bid Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size = 5

-- Display: Bid Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.display = function(value)
  return "Bid Level 7 Order Counts: "..value
end

-- Dissect: Bid Level 7 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price = {}

-- Size: Bid Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size = 9

-- Display: Bid Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.display = function(value)
  return "Bid Level 7 Price: "..value
end

-- Dissect: Bid Level 7 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size = 9

-- Display: Bid Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.display = function(value)
  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts = {}

-- Size: Bid Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size = 5

-- Display: Bid Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.display = function(value)
  return "Bid Level 8 Order Counts: "..value
end

-- Dissect: Bid Level 8 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price = {}

-- Size: Bid Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size = 9

-- Display: Bid Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.display = function(value)
  return "Bid Level 8 Price: "..value
end

-- Dissect: Bid Level 8 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size = 9

-- Display: Bid Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.display = function(value)
  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts = {}

-- Size: Bid Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size = 5

-- Display: Bid Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.display = function(value)
  return "Bid Level 9 Order Counts: "..value
end

-- Dissect: Bid Level 9 Order Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price = {}

-- Size: Bid Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size = 9

-- Display: Bid Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.display = function(value)
  return "Bid Level 9 Price: "..value
end

-- Dissect: Bid Level 9 Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size = 9

-- Display: Bid Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.display = function(value)
  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts = {}

-- Size: Bid Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size = 5

-- Display: Bid Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.display = function(value)
  return "Bid Price Valid Counts: "..value
end

-- Dissect: Bid Price Valid Counts
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_price_valid_counts, range, value, display)

  return offset + length, value
end

-- Bid Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume = {}

-- Size: Bid Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size = 9

-- Display: Bid Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.display = function(value)
  return "Bid Total Volume: "..value
end

-- Dissect: Bid Total Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_total_volume, range, value, display)

  return offset + length, value
end

-- Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value = {}

-- Size: Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.size = 22

-- Display: Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.display = function(value)
  return "Bid Trading Value: "..value
end

-- Dissect: Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_trading_value, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume = {}

-- Size: Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.size = 10

-- Display: Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.display = function(value)
  return "Bid Trading Volume: "..value
end

-- Dissect: Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Bis Announcement Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date = {}

-- Size: Bis Announcement Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.size = 8

-- Display: Bis Announcement Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.display = function(value)
  return "Bis Announcement Date: "..value
end

-- Dissect: Bis Announcement Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_announcement_date, range, value, display)

  return offset + length, value
end

-- Bis Announcement Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time = {}

-- Size: Bis Announcement Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.size = 6

-- Display: Bis Announcement Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.display = function(value)
  return "Bis Announcement Time: "..value
end

-- Dissect: Bis Announcement Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_announcement_time, range, value, display)

  return offset + length, value
end

-- Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate = {}

-- Size: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.size = 4

-- Display: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.display = function(value)
  return "Bis Time Of Inputting Yield Rate: "..value
end

-- Dissect: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_time_of_inputting_yield_rate, range, value, display)

  return offset + length, value
end

-- Bis Yield Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio = {}

-- Size: Bis Yield Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.size = 9

-- Display: Bis Yield Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.display = function(value)
  return "Bis Yield Ratio: "..value
end

-- Dissect: Bis Yield Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.bis_yield_ratio, range, value, display)

  return offset + length, value
end

-- Block Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code = {}

-- Size: Block Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.size = 1

-- Display: Block Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.display = function(value)
  return "Block Trading Type Code: "..value
end

-- Dissect: Block Trading Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.block_trading_type_code, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code = {}

-- Size: Board Event Group Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size = 5

-- Display: Board Event Group Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id = {}

-- Size: Board Event Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size = 3

-- Display: Board Event Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Event Processing Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time = {}

-- Size: Board Event Processing Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.size = 9

-- Display: Board Event Processing Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.display = function(value)
  return "Board Event Processing Time: "..value
end

-- Dissect: Board Event Processing Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_event_processing_time, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.board_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculation Time String 6
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6 = {}

-- Size: Calculation Time String 6
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.size = 6

-- Display: Calculation Time String 6
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.display = function(value)
  return "Calculation Time String 6: "..value
end

-- Dissect: Calculation Time String 6
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculation_time_string_6, range, value, display)

  return offset + length, value
end

-- Calculation Time String 9
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9 = {}

-- Size: Calculation Time String 9
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.size = 9

-- Display: Calculation Time String 9
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.display = function(value)
  return "Calculation Time String 9: "..value
end

-- Dissect: Calculation Time String 9
koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.calculation_time_string_9, range, value, display)

  return offset + length, value
end

-- Call Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility = {}

-- Size: Call Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.size = 11

-- Display: Call Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.display = function(value)
  return "Call Averaged Implied Volatility: "..value
end

-- Dissect: Call Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.call_averaged_implied_volatility, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.size = 9

-- Display: Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset = {}

-- Size: Closing Price Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.size = 11

-- Display: Closing Price Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.display = function(value)
  return "Closing Price Of Underlying Asset: "..value
end

-- Dissect: Closing Price Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price_of_underlying_asset, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Conditioned Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code = {}

-- Size: Conditioned Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.size = 5

-- Display: Conditioned Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.display = function(value)
  return "Conditioned Order Permission Type Code: "..value
end

-- Dissect: Conditioned Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.conditioned_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Conversion Factor
koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor = {}

-- Size: Conversion Factor
koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.size = 22

-- Display: Conversion Factor
koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.display = function(value)
  return "Conversion Factor: "..value
end

-- Dissect: Conversion Factor
koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.conversion_factor, range, value, display)

  return offset + length, value
end

-- Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.date = {}

-- Size: Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.date.size = 8

-- Display: Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.date.display = function(value)
  return "Date: "..value
end

-- Dissect: Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.date, range, value, display)

  return offset + length, value
end

-- Delisting Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date = {}

-- Size: Delisting Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.size = 8

-- Display: Delisting Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment = {}

-- Size: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.size = 18

-- Display: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.display = function(value)
  return "Denominator Coefficient Of Adjustment: "..value
end

-- Dissect: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.denominator_coefficient_of_adjustment, range, value, display)

  return offset + length, value
end

-- Designation Date For Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks = {}

-- Size: Designation Date For Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.size = 8

-- Display: Designation Date For Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.display = function(value)
  return "Designation Date For Suspended Stocks: "..value
end

-- Dissect: Designation Date For Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.designation_date_for_suspended_stocks, range, value, display)

  return offset + length, value
end

-- Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code = {}

-- Size: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.size = 1

-- Display: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.display = function(value)
  return "Direction Of Price Limit Expansion Type Code: "..value
end

-- Dissect: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.direction_of_price_limit_expansion_type_code, range, value, display)

  return offset + length, value
end

-- Disclosure Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date = {}

-- Size: Disclosure Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.size = 14

-- Display: Disclosure Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.display = function(value)
  return "Disclosure Date: "..value
end

-- Dissect: Disclosure Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disclosure_date, range, value, display)

  return offset + length, value
end

-- Disclosure Type
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type = {}

-- Size: Disclosure Type
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.size = 2

-- Display: Disclosure Type
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.display = function(value)
  return "Disclosure Type: "..value
end

-- Dissect: Disclosure Type
koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disclosure_type, range, value, display)

  return offset + length, value
end

-- Disparate Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio = {}

-- Size: Disparate Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.size = 13

-- Display: Disparate Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.display = function(value)
  return "Disparate Ratio: "..value
end

-- Dissect: Disparate Ratio
koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.disparate_ratio, range, value, display)

  return offset + length, value
end

-- Distant Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price = {}

-- Size: Distant Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size = 9

-- Display: Distant Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.display = function(value)
  return "Distant Month Contract Trading Price: "..value
end

-- Dissect: Distant Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.distant_month_contract_trading_price, range, value, display)

  return offset + length, value
end

-- Dividend Value For Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price = {}

-- Size: Dividend Value For Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.size = 16

-- Display: Dividend Value For Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.display = function(value)
  return "Dividend Value For Settlement Price: "..value
end

-- Dissect: Dividend Value For Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.dividend_value_for_settlement_price, range, value, display)

  return offset + length, value
end

-- Dynamic Price Limit Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code = {}

-- Size: Dynamic Price Limit Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.size = 1

-- Display: Dynamic Price Limit Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.display = function(value)
  return "Dynamic Price Limit Type Code: "..value
end

-- Dissect: Dynamic Price Limit Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.dynamic_price_limit_type_code, range, value, display)

  return offset + length, value
end

-- Efp Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item = {}

-- Size: Efp Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.size = 1

-- Display: Efp Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.display = function(value)
  return "Efp Trading Item: "..value
end

-- Dissect: Efp Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_item, range, value, display)

  return offset + length, value
end

-- Efp Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value = {}

-- Size: Efp Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.size = 22

-- Display: Efp Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.display = function(value)
  return "Efp Trading Value: "..value
end

-- Dissect: Efp Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_value, range, value, display)

  return offset + length, value
end

-- Efp Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume = {}

-- Size: Efp Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.size = 12

-- Display: Efp Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.display = function(value)
  return "Efp Trading Volume: "..value
end

-- Dissect: Efp Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.efp_trading_volume, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- English Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name = {}

-- Size: English Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.size = 80

-- Display: English Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.display = function(value)
  return "English Issue Name: "..value
end

-- Dissect: English Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.english_issue_name, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price = {}

-- Size: Estimated Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size = 9

-- Display: Estimated Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.display = function(value)
  return "Estimated Trading Price: "..value
end

-- Dissect: Estimated Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size = 9

-- Display: Estimated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Exercise Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price = {}

-- Size: Exercise Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.size = 18

-- Display: Exercise Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.display = function(value)
  return "Exercise Price: "..value
end

-- Dissect: Exercise Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price, range, value, display)

  return offset + length, value
end

-- Exercise Price After Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment = {}

-- Size: Exercise Price After Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.size = 18

-- Display: Exercise Price After Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.display = function(value)
  return "Exercise Price After Adjustment: "..value
end

-- Dissect: Exercise Price After Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_after_adjustment, range, value, display)

  return offset + length, value
end

-- Exercise Price Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment = {}

-- Size: Exercise Price Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.size = 18

-- Display: Exercise Price Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.display = function(value)
  return "Exercise Price Before Adjustment: "..value
end

-- Dissect: Exercise Price Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_before_adjustment, range, value, display)

  return offset + length, value
end

-- Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading = {}

-- Size: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.size = 18

-- Display: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.display = function(value)
  return "Exercise Price For Displaying Not For Trading: "..value
end

-- Dissect: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.exercise_price_for_displaying_not_for_trading, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Expiration Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date = {}

-- Size: Expiration Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.size = 8

-- Display: Expiration Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.display = function(value)
  return "Final Ask Bid Type Code: "..value
end

-- Dissect: Final Ask Bid Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion = {}

-- Size: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.size = 3

-- Display: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.display = function(value)
  return "Final Stage Of Price Limit Expansion: "..value
end

-- Dissect: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.final_stage_of_price_limit_expansion, range, value, display)

  return offset + length, value
end

-- Flex Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item = {}

-- Size: Flex Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.size = 1

-- Display: Flex Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.display = function(value)
  return "Flex Trading Item: "..value
end

-- Dissect: Flex Trading Item
koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.flex_trading_item, range, value, display)

  return offset + length, value
end

-- Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price = {}

-- Size: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.size = 11

-- Display: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.display = function(value)
  return "Futures Circuit Breakers Lower Limit Price: "..value
end

-- Dissect: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_circuit_breakers_lower_limit_price, range, value, display)

  return offset + length, value
end

-- Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price = {}

-- Size: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.size = 11

-- Display: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.display = function(value)
  return "Futures Circuit Breakers Upper Limit Price: "..value
end

-- Dissect: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_circuit_breakers_upper_limit_price, range, value, display)

  return offset + length, value
end

-- Futures Options Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code = {}

-- Size: Futures Options Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.size = 1

-- Display: Futures Options Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.display = function(value)
  return "Futures Options Type Code: "..value
end

-- Dissect: Futures Options Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_options_type_code, range, value, display)

  return offset + length, value
end

-- Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value = {}

-- Size: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size = 11

-- Display: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.display = function(value)
  return "Gap Between Lower Limit Price Of Dynamic Price And Trading Value: "..value
end

-- Dissect: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.gap_between_lower_limit_price_of_dynamic_price_and_trading_value, range, value, display)

  return offset + length, value
end

-- Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value = {}

-- Size: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size = 11

-- Display: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.display = function(value)
  return "Gap Between Upper Limit Price Of Dynamic Price And Trading Value: "..value
end

-- Dissect: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.gap_between_upper_limit_price_of_dynamic_price_and_trading_value, range, value, display)

  return offset + length, value
end

-- Historical Volatility 90 Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days = {}

-- Size: Historical Volatility 90 Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.size = 11

-- Display: Historical Volatility 90 Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.display = function(value)
  return "Historical Volatility 90 Days: "..value
end

-- Dissect: Historical Volatility 90 Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.historical_volatility_90_days, range, value, display)

  return offset + length, value
end

-- Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility = {}

-- Size: Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.size = 11

-- Display: Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.display = function(value)
  return "Implied Volatility: "..value
end

-- Dissect: Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.implied_volatility, range, value, display)

  return offset + length, value
end

-- Implied Volatility Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code = {}

-- Size: Implied Volatility Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.size = 1

-- Display: Implied Volatility Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.display = function(value)
  return "Implied Volatility Type Code: "..value
end

-- Dissect: Implied Volatility Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.implied_volatility_type_code, range, value, display)

  return offset + length, value
end

-- Indexed Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate = {}

-- Size: Indexed Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.size = 12

-- Display: Indexed Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.display = function(value)
  return "Indexed Interest Rate: "..value
end

-- Dissect: Indexed Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.indexed_interest_rate, range, value, display)

  return offset + length, value
end

-- Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate = {}

-- Size: Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.size = 11

-- Display: Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.display = function(value)
  return "Interest Rate: "..value
end

-- Dissect: Interest Rate
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate, range, value, display)

  return offset + length, value
end

-- Interest Rate 180 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day = {}

-- Size: Interest Rate 180 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.size = 12

-- Display: Interest Rate 180 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.display = function(value)
  return "Interest Rate 180 Day: "..value
end

-- Dissect: Interest Rate 180 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_180_day, range, value, display)

  return offset + length, value
end

-- Interest Rate 30 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day = {}

-- Size: Interest Rate 30 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.size = 12

-- Display: Interest Rate 30 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.display = function(value)
  return "Interest Rate 30 Day: "..value
end

-- Dissect: Interest Rate 30 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_30_day, range, value, display)

  return offset + length, value
end

-- Interest Rate 90 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day = {}

-- Size: Interest Rate 90 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.size = 12

-- Display: Interest Rate 90 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.display = function(value)
  return "Interest Rate 90 Day: "..value
end

-- Dissect: Interest Rate 90 Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.interest_rate_90_day, range, value, display)

  return offset + length, value
end

-- Investor Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code = {}

-- Size: Investor Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.size = 4

-- Display: Investor Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Isin Of Base Issue For Payment
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment = {}

-- Size: Isin Of Base Issue For Payment
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.size = 12

-- Display: Isin Of Base Issue For Payment
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.display = function(value)
  return "Isin Of Base Issue For Payment: "..value
end

-- Dissect: Isin Of Base Issue For Payment
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_of_base_issue_for_payment, range, value, display)

  return offset + length, value
end

-- Isin Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset = {}

-- Size: Isin Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.size = 12

-- Display: Isin Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.display = function(value)
  return "Isin Of Underlying Asset: "..value
end

-- Dissect: Isin Of Underlying Asset
koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.isin_of_underlying_asset, range, value, display)

  return offset + length, value
end

-- Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name = {}

-- Size: Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.size = 80

-- Display: Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Ktb Isin
koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin = {}

-- Size: Ktb Isin
koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.size = 12

-- Display: Ktb Isin
koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.display = function(value)
  return "Ktb Isin: "..value
end

-- Dissect: Ktb Isin
koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.ktb_isin, range, value, display)

  return offset + length, value
end

-- Last Payment Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date = {}

-- Size: Last Payment Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.size = 8

-- Display: Last Payment Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.display = function(value)
  return "Last Payment Date: "..value
end

-- Dissect: Last Payment Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_payment_date, range, value, display)

  return offset + length, value
end

-- Last Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code = {}

-- Size: Last Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.size = 1

-- Display: Last Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.display = function(value)
  return "Last Settlement Price Type Code: "..value
end

-- Dissect: Last Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_settlement_price_type_code, range, value, display)

  return offset + length, value
end

-- Last Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date = {}

-- Size: Last Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.size = 8

-- Display: Last Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Last Trading Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day = {}

-- Size: Last Trading Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.size = 1

-- Display: Last Trading Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.display = function(value)
  return "Last Trading Day: "..value
end

-- Dissect: Last Trading Day
koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.last_trading_day, range, value, display)

  return offset + length, value
end

-- Limit Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code = {}

-- Size: Limit Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.size = 5

-- Display: Limit Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.display = function(value)
  return "Limit Order Permission Type Code: "..value
end

-- Dissect: Limit Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.limit_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Limitation Of Dynamic Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price = {}

-- Size: Limitation Of Dynamic Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.size = 1

-- Display: Limitation Of Dynamic Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.display = function(value)
  return "Limitation Of Dynamic Price: "..value
end

-- Dissect: Limitation Of Dynamic Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.limitation_of_dynamic_price, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Listing Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code = {}

-- Size: Listing Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.size = 1

-- Display: Listing Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.display = function(value)
  return "Listing Type Code: "..value
end

-- Dissect: Listing Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.listing_type_code, range, value, display)

  return offset + length, value
end

-- Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range = {}

-- Size: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size = 9

-- Display: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.display = function(value)
  return "Lower Limit Of Dynamic Price Range: "..value
end

-- Dissect: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_of_dynamic_price_range, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price = {}

-- Size: Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.size = 9

-- Display: Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.display = function(value)
  return "Lower Limit Price: "..value
end

-- Dissect: Lower Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity = {}

-- Size: Lower Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.size = 23

-- Display: Lower Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.display = function(value)
  return "Lower Limit Quantity: "..value
end

-- Dissect: Lower Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_quantity, range, value, display)

  return offset + length, value
end

-- Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade = {}

-- Size: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.size = 23

-- Display: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.display = function(value)
  return "Lower Limit Quantity For Block Trade: "..value
end

-- Dissect: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_limit_quantity_for_block_trade, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage = {}

-- Size: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.size = 11

-- Display: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.display = function(value)
  return "Lower Price Limit 1 St Stage: "..value
end

-- Dissect: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_1_st_stage, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage = {}

-- Size: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.size = 11

-- Display: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.display = function(value)
  return "Lower Price Limit 2 Nd Stage: "..value
end

-- Dissect: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_2_nd_stage, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage = {}

-- Size: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.size = 11

-- Display: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.display = function(value)
  return "Lower Price Limit 3 Rd Stage: "..value
end

-- Dissect: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.lower_price_limit_3_rd_stage, range, value, display)

  return offset + length, value
end

-- Market Holidays
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays = {}

-- Size: Market Holidays
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.size = 1

-- Display: Market Holidays
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.display = function(value)
  return "Market Holidays: "..value
end

-- Dissect: Market Holidays
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_holidays, range, value, display)

  return offset + length, value
end

-- Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id = {}

-- Size: Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.size = 3

-- Display: Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Price Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code = {}

-- Size: Market Price Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.size = 5

-- Display: Market Price Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.display = function(value)
  return "Market Price Order Permission Type Code: "..value
end

-- Dissect: Market Price Order Permission Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.market_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Me Group Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number = {}

-- Size: Me Group Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.size = 5

-- Display: Me Group Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.display = function(value)
  return "Me Group Number: "..value
end

-- Dissect: Me Group Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.me_group_number, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.display = function(value)
  if value == "B601F" then
    return "Message Code: Derivatives Quote Five Levels Message (B601F)"
  end
  if value == "B602F" then
    return "Message Code: Derivatives Quote Five Levels Message (B602F)"
  end
  if value == "B603F" then
    return "Message Code: Derivatives Quote Five Levels Message (B603F)"
  end
  if value == "B606F" then
    return "Message Code: Derivatives Quote Five Levels Message (B606F)"
  end
  if value == "B607F" then
    return "Message Code: Derivatives Quote Five Levels Message (B607F)"
  end
  if value == "B608F" then
    return "Message Code: Derivatives Quote Five Levels Message (B608F)"
  end
  if value == "B609F" then
    return "Message Code: Derivatives Quote Five Levels Message (B609F)"
  end
  if value == "B610F" then
    return "Message Code: Derivatives Quote Five Levels Message (B610F)"
  end
  if value == "B611F" then
    return "Message Code: Derivatives Quote Five Levels Message (B611F)"
  end
  if value == "B612F" then
    return "Message Code: Derivatives Quote Five Levels Message (B612F)"
  end
  if value == "B613F" then
    return "Message Code: Derivatives Quote Five Levels Message (B613F)"
  end
  if value == "B615F" then
    return "Message Code: Derivatives Quote Five Levels Message (B615F)"
  end
  if value == "B616F" then
    return "Message Code: Derivatives Quote Five Levels Message (B616F)"
  end
  if value == "B617F" then
    return "Message Code: Derivatives Quote Five Levels Message (B617F)"
  end
  if value == "B604F" then
    return "Message Code: Derivatives Quote Ten Levels Message (B604F)"
  end
  if value == "B605F" then
    return "Message Code: Derivatives Quote Ten Levels Message (B605F)"
  end
  if value == "B618F" then
    return "Message Code: Derivatives Quote Ten Levels Message (B618F)"
  end
  if value == "B201F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B201F)"
  end
  if value == "B202F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B202F)"
  end
  if value == "B203F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B203F)"
  end
  if value == "B206F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B206F)"
  end
  if value == "B207F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B207F)"
  end
  if value == "B208F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B208F)"
  end
  if value == "B209F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B209F)"
  end
  if value == "B210F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B210F)"
  end
  if value == "B211F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B211F)"
  end
  if value == "B212F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B212F)"
  end
  if value == "B213F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B213F)"
  end
  if value == "B215F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B215F)"
  end
  if value == "B216F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B216F)"
  end
  if value == "B217F" then
    return "Message Code: Derivatives Snapshot Five Levels Message (B217F)"
  end
  if value == "B204F" then
    return "Message Code: Derivatives Snapshot Ten Levels Message (B204F)"
  end
  if value == "B205F" then
    return "Message Code: Derivatives Snapshot Ten Levels Message (B205F)"
  end
  if value == "B218F" then
    return "Message Code: Derivatives Snapshot Ten Levels Message (B218F)"
  end
  if value == "A301F" then
    return "Message Code: Derivatives Order Filled Message (A301F)"
  end
  if value == "A302F" then
    return "Message Code: Derivatives Order Filled Message (A302F)"
  end
  if value == "A303F" then
    return "Message Code: Derivatives Order Filled Message (A303F)"
  end
  if value == "A304F" then
    return "Message Code: Derivatives Order Filled Message (A304F)"
  end
  if value == "A305F" then
    return "Message Code: Derivatives Order Filled Message (A305F)"
  end
  if value == "A306F" then
    return "Message Code: Derivatives Order Filled Message (A306F)"
  end
  if value == "A307F" then
    return "Message Code: Derivatives Order Filled Message (A307F)"
  end
  if value == "A308F" then
    return "Message Code: Derivatives Order Filled Message (A308F)"
  end
  if value == "A309F" then
    return "Message Code: Derivatives Order Filled Message (A309F)"
  end
  if value == "A310F" then
    return "Message Code: Derivatives Order Filled Message (A310F)"
  end
  if value == "A311F" then
    return "Message Code: Derivatives Order Filled Message (A311F)"
  end
  if value == "A312F" then
    return "Message Code: Derivatives Order Filled Message (A312F)"
  end
  if value == "A313F" then
    return "Message Code: Derivatives Order Filled Message (A313F)"
  end
  if value == "A315F" then
    return "Message Code: Derivatives Order Filled Message (A315F)"
  end
  if value == "A316F" then
    return "Message Code: Derivatives Order Filled Message (A316F)"
  end
  if value == "A317F" then
    return "Message Code: Derivatives Order Filled Message (A317F)"
  end
  if value == "A318F" then
    return "Message Code: Derivatives Order Filled Message (A318F)"
  end
  if value == "G701F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G701F)"
  end
  if value == "G702F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G702F)"
  end
  if value == "G703F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G703F)"
  end
  if value == "G706F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G706F)"
  end
  if value == "G707F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G707F)"
  end
  if value == "G708F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G708F)"
  end
  if value == "G709F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G709F)"
  end
  if value == "G710F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G710F)"
  end
  if value == "G711F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G711F)"
  end
  if value == "G712F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G712F)"
  end
  if value == "G713F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G713F)"
  end
  if value == "G715F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G715F)"
  end
  if value == "G716F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G716F)"
  end
  if value == "G717F" then
    return "Message Code: Derivatives Order Filled Plus Quote Five Levels Message (G717F)"
  end
  if value == "G704F" then
    return "Message Code: Derivatives Order Filled Plus Quote Ten Levels Message (G704F)"
  end
  if value == "G705F" then
    return "Message Code: Derivatives Order Filled Plus Quote Ten Levels Message (G705F)"
  end
  if value == "G718F" then
    return "Message Code: Derivatives Order Filled Plus Quote Ten Levels Message (G718F)"
  end
  if value == "R101F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R101F)"
  end
  if value == "R102F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R102F)"
  end
  if value == "R103F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R103F)"
  end
  if value == "R106F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R106F)"
  end
  if value == "R107F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R107F)"
  end
  if value == "R108F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R108F)"
  end
  if value == "R109F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R109F)"
  end
  if value == "R110F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R110F)"
  end
  if value == "R111F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R111F)"
  end
  if value == "R112F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R112F)"
  end
  if value == "R113F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R113F)"
  end
  if value == "R115F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R115F)"
  end
  if value == "R116F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R116F)"
  end
  if value == "R117F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R117F)"
  end
  if value == "R104F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R104F)"
  end
  if value == "R105F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R105F)"
  end
  if value == "R118F" then
    return "Message Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R118F)"
  end
  if value == "C401F" then
    return "Message Code: Derivatives Negotiated Trade Message (C401F)"
  end
  if value == "C402F" then
    return "Message Code: Derivatives Negotiated Trade Message (C402F)"
  end
  if value == "C403F" then
    return "Message Code: Derivatives Negotiated Trade Message (C403F)"
  end
  if value == "C404F" then
    return "Message Code: Derivatives Negotiated Trade Message (C404F)"
  end
  if value == "C405F" then
    return "Message Code: Derivatives Negotiated Trade Message (C405F)"
  end
  if value == "C406F" then
    return "Message Code: Derivatives Negotiated Trade Message (C406F)"
  end
  if value == "C407F" then
    return "Message Code: Derivatives Negotiated Trade Message (C407F)"
  end
  if value == "C408F" then
    return "Message Code: Derivatives Negotiated Trade Message (C408F)"
  end
  if value == "C409F" then
    return "Message Code: Derivatives Negotiated Trade Message (C409F)"
  end
  if value == "C410F" then
    return "Message Code: Derivatives Negotiated Trade Message (C410F)"
  end
  if value == "C411F" then
    return "Message Code: Derivatives Negotiated Trade Message (C411F)"
  end
  if value == "C412F" then
    return "Message Code: Derivatives Negotiated Trade Message (C412F)"
  end
  if value == "C413F" then
    return "Message Code: Derivatives Negotiated Trade Message (C413F)"
  end
  if value == "C415F" then
    return "Message Code: Derivatives Negotiated Trade Message (C415F)"
  end
  if value == "C416F" then
    return "Message Code: Derivatives Negotiated Trade Message (C416F)"
  end
  if value == "C417F" then
    return "Message Code: Derivatives Negotiated Trade Message (C417F)"
  end
  if value == "C418F" then
    return "Message Code: Derivatives Negotiated Trade Message (C418F)"
  end
  if value == "A701S" then
    return "Message Code: Derivatives Market Operation Ts Message (A701S)"
  end
  if value == "A702S" then
    return "Message Code: Derivatives Market Operation Ts Message (A702S)"
  end
  if value == "A703S" then
    return "Message Code: Derivatives Market Operation Ts Message (A703S)"
  end
  if value == "A704S" then
    return "Message Code: Derivatives Market Operation Ts Message (A704S)"
  end
  if value == "A705S" then
    return "Message Code: Derivatives Market Operation Ts Message (A705S)"
  end
  if value == "A701Q" then
    return "Message Code: Derivatives Market Operation Ts Message (A701Q)"
  end
  if value == "A701X" then
    return "Message Code: Derivatives Market Operation Ts Message (A701X)"
  end
  if value == "A701B" then
    return "Message Code: Derivatives Market Operation Ts Message (A701B)"
  end
  if value == "A701M" then
    return "Message Code: Derivatives Market Operation Ts Message (A701M)"
  end
  if value == "A701K" then
    return "Message Code: Derivatives Market Operation Ts Message (A701K)"
  end
  if value == "A701R" then
    return "Message Code: Derivatives Market Operation Ts Message (A701R)"
  end
  if value == "A701F" then
    return "Message Code: Derivatives Market Operation Ts Message (A701F)"
  end
  if value == "A702F" then
    return "Message Code: Derivatives Market Operation Ts Message (A702F)"
  end
  if value == "A703F" then
    return "Message Code: Derivatives Market Operation Ts Message (A703F)"
  end
  if value == "A704F" then
    return "Message Code: Derivatives Market Operation Ts Message (A704F)"
  end
  if value == "A705F" then
    return "Message Code: Derivatives Market Operation Ts Message (A705F)"
  end
  if value == "A706F" then
    return "Message Code: Derivatives Market Operation Ts Message (A706F)"
  end
  if value == "A707F" then
    return "Message Code: Derivatives Market Operation Ts Message (A707F)"
  end
  if value == "A708F" then
    return "Message Code: Derivatives Market Operation Ts Message (A708F)"
  end
  if value == "A709F" then
    return "Message Code: Derivatives Market Operation Ts Message (A709F)"
  end
  if value == "A710F" then
    return "Message Code: Derivatives Market Operation Ts Message (A710F)"
  end
  if value == "A711F" then
    return "Message Code: Derivatives Market Operation Ts Message (A711F)"
  end
  if value == "A712F" then
    return "Message Code: Derivatives Market Operation Ts Message (A712F)"
  end
  if value == "A713F" then
    return "Message Code: Derivatives Market Operation Ts Message (A713F)"
  end
  if value == "A715F" then
    return "Message Code: Derivatives Market Operation Ts Message (A715F)"
  end
  if value == "A716F" then
    return "Message Code: Derivatives Market Operation Ts Message (A716F)"
  end
  if value == "A717F" then
    return "Message Code: Derivatives Market Operation Ts Message (A717F)"
  end
  if value == "A718F" then
    return "Message Code: Derivatives Market Operation Ts Message (A718F)"
  end
  if value == "A701G" then
    return "Message Code: Derivatives Market Operation Ts Message (A701G)"
  end
  if value == "A701E" then
    return "Message Code: Derivatives Market Operation Ts Message (A701E)"
  end
  if value == "A601F" then
    return "Message Code: Derivatives Issue Closing Message (A601F)"
  end
  if value == "A602F" then
    return "Message Code: Derivatives Issue Closing Message (A602F)"
  end
  if value == "A603F" then
    return "Message Code: Derivatives Issue Closing Message (A603F)"
  end
  if value == "A604F" then
    return "Message Code: Derivatives Issue Closing Message (A604F)"
  end
  if value == "A605F" then
    return "Message Code: Derivatives Issue Closing Message (A605F)"
  end
  if value == "A606F" then
    return "Message Code: Derivatives Issue Closing Message (A606F)"
  end
  if value == "A607F" then
    return "Message Code: Derivatives Issue Closing Message (A607F)"
  end
  if value == "A608F" then
    return "Message Code: Derivatives Issue Closing Message (A608F)"
  end
  if value == "A609F" then
    return "Message Code: Derivatives Issue Closing Message (A609F)"
  end
  if value == "A610F" then
    return "Message Code: Derivatives Issue Closing Message (A610F)"
  end
  if value == "A611F" then
    return "Message Code: Derivatives Issue Closing Message (A611F)"
  end
  if value == "A612F" then
    return "Message Code: Derivatives Issue Closing Message (A612F)"
  end
  if value == "A613F" then
    return "Message Code: Derivatives Issue Closing Message (A613F)"
  end
  if value == "A615F" then
    return "Message Code: Derivatives Issue Closing Message (A615F)"
  end
  if value == "A616F" then
    return "Message Code: Derivatives Issue Closing Message (A616F)"
  end
  if value == "A617F" then
    return "Message Code: Derivatives Issue Closing Message (A617F)"
  end
  if value == "A618F" then
    return "Message Code: Derivatives Issue Closing Message (A618F)"
  end
  if value == "M401S" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401S)"
  end
  if value == "M402S" then
    return "Message Code: Derivatives Market Operation Schedule Message (M402S)"
  end
  if value == "M403S" then
    return "Message Code: Derivatives Market Operation Schedule Message (M403S)"
  end
  if value == "M404S" then
    return "Message Code: Derivatives Market Operation Schedule Message (M404S)"
  end
  if value == "M405S" then
    return "Message Code: Derivatives Market Operation Schedule Message (M405S)"
  end
  if value == "M401Q" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401Q)"
  end
  if value == "M401X" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401X)"
  end
  if value == "M401B" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401B)"
  end
  if value == "M401M" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401M)"
  end
  if value == "M401K" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401K)"
  end
  if value == "M401R" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401R)"
  end
  if value == "M401F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401F)"
  end
  if value == "M402F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M402F)"
  end
  if value == "M403F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M403F)"
  end
  if value == "M404F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M404F)"
  end
  if value == "M405F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M405F)"
  end
  if value == "M406F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M406F)"
  end
  if value == "M407F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M407F)"
  end
  if value == "M408F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M408F)"
  end
  if value == "M409F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M409F)"
  end
  if value == "M410F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M410F)"
  end
  if value == "M411F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M411F)"
  end
  if value == "M412F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M412F)"
  end
  if value == "M413F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M413F)"
  end
  if value == "M415F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M415F)"
  end
  if value == "M416F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M416F)"
  end
  if value == "M417F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M417F)"
  end
  if value == "M418F" then
    return "Message Code: Derivatives Market Operation Schedule Message (M418F)"
  end
  if value == "M401G" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401G)"
  end
  if value == "M401E" then
    return "Message Code: Derivatives Market Operation Schedule Message (M401E)"
  end
  if value == "Q201F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q201F)"
  end
  if value == "Q202F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q202F)"
  end
  if value == "Q203F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q203F)"
  end
  if value == "Q204F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q204F)"
  end
  if value == "Q206F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q206F)"
  end
  if value == "Q208F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q208F)"
  end
  if value == "Q209F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q209F)"
  end
  if value == "Q210F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q210F)"
  end
  if value == "Q211F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q211F)"
  end
  if value == "Q212F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q212F)"
  end
  if value == "Q216F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q216F)"
  end
  if value == "Q217F" then
    return "Message Code: Derivatives Dynamic Upper Lower Limit Message (Q217F)"
  end
  if value == "V101F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V101F)"
  end
  if value == "V102F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V102F)"
  end
  if value == "V103F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V103F)"
  end
  if value == "V104F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V104F)"
  end
  if value == "V105F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V105F)"
  end
  if value == "V108F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V108F)"
  end
  if value == "V109F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V109F)"
  end
  if value == "V111F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V111F)"
  end
  if value == "V112F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V112F)"
  end
  if value == "V113F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V113F)"
  end
  if value == "V115F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V115F)"
  end
  if value == "V116F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V116F)"
  end
  if value == "V117F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V117F)"
  end
  if value == "V118F" then
    return "Message Code: Derivatives Price Limit Range Increase Message (V118F)"
  end
  if value == "O601S" then
    return "Message Code: Derivatives Quantity Allocation Message (O601S)"
  end
  if value == "O603S" then
    return "Message Code: Derivatives Quantity Allocation Message (O603S)"
  end
  if value == "O604S" then
    return "Message Code: Derivatives Quantity Allocation Message (O604S)"
  end
  if value == "O605S" then
    return "Message Code: Derivatives Quantity Allocation Message (O605S)"
  end
  if value == "O601Q" then
    return "Message Code: Derivatives Quantity Allocation Message (O601Q)"
  end
  if value == "O601X" then
    return "Message Code: Derivatives Quantity Allocation Message (O601X)"
  end
  if value == "O601F" then
    return "Message Code: Derivatives Quantity Allocation Message (O601F)"
  end
  if value == "O602F" then
    return "Message Code: Derivatives Quantity Allocation Message (O602F)"
  end
  if value == "O603F" then
    return "Message Code: Derivatives Quantity Allocation Message (O603F)"
  end
  if value == "O604F" then
    return "Message Code: Derivatives Quantity Allocation Message (O604F)"
  end
  if value == "O605F" then
    return "Message Code: Derivatives Quantity Allocation Message (O605F)"
  end
  if value == "O606F" then
    return "Message Code: Derivatives Quantity Allocation Message (O606F)"
  end
  if value == "O607F" then
    return "Message Code: Derivatives Quantity Allocation Message (O607F)"
  end
  if value == "O608F" then
    return "Message Code: Derivatives Quantity Allocation Message (O608F)"
  end
  if value == "O609F" then
    return "Message Code: Derivatives Quantity Allocation Message (O609F)"
  end
  if value == "O610F" then
    return "Message Code: Derivatives Quantity Allocation Message (O610F)"
  end
  if value == "O611F" then
    return "Message Code: Derivatives Quantity Allocation Message (O611F)"
  end
  if value == "O612F" then
    return "Message Code: Derivatives Quantity Allocation Message (O612F)"
  end
  if value == "O613F" then
    return "Message Code: Derivatives Quantity Allocation Message (O613F)"
  end
  if value == "O615F" then
    return "Message Code: Derivatives Quantity Allocation Message (O615F)"
  end
  if value == "O616F" then
    return "Message Code: Derivatives Quantity Allocation Message (O616F)"
  end
  if value == "O617F" then
    return "Message Code: Derivatives Quantity Allocation Message (O617F)"
  end
  if value == "O618F" then
    return "Message Code: Derivatives Quantity Allocation Message (O618F)"
  end
  if value == "IF01S" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF01S)"
  end
  if value == "IF02S" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF02S)"
  end
  if value == "IF03S" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF03S)"
  end
  if value == "IF04S" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF04S)"
  end
  if value == "IF05S" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF05S)"
  end
  if value == "IF01Q" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF01Q)"
  end
  if value == "IF01F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF01F)"
  end
  if value == "IF02F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF02F)"
  end
  if value == "IF03F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF03F)"
  end
  if value == "IF04F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF04F)"
  end
  if value == "IF05F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF05F)"
  end
  if value == "IF06F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF06F)"
  end
  if value == "IF07F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF07F)"
  end
  if value == "IF08F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF08F)"
  end
  if value == "IF09F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF09F)"
  end
  if value == "IF10F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF10F)"
  end
  if value == "IF11F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF11F)"
  end
  if value == "IF12F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF12F)"
  end
  if value == "IF13F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF13F)"
  end
  if value == "IF15F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF15F)"
  end
  if value == "IF16F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF16F)"
  end
  if value == "IF17F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF17F)"
  end
  if value == "IF18F" then
    return "Message Code: Derivatives Group Order Acceptance Halt Message (IF18F)"
  end
  if value == "A001F" then
    return "Message Code: Derivatives Batch Data Message (A001F)"
  end
  if value == "A002F" then
    return "Message Code: Derivatives Batch Data Message (A002F)"
  end
  if value == "A003F" then
    return "Message Code: Derivatives Batch Data Message (A003F)"
  end
  if value == "A004F" then
    return "Message Code: Derivatives Batch Data Message (A004F)"
  end
  if value == "A005F" then
    return "Message Code: Derivatives Batch Data Message (A005F)"
  end
  if value == "A006F" then
    return "Message Code: Derivatives Batch Data Message (A006F)"
  end
  if value == "A007F" then
    return "Message Code: Derivatives Batch Data Message (A007F)"
  end
  if value == "A008F" then
    return "Message Code: Derivatives Batch Data Message (A008F)"
  end
  if value == "A009F" then
    return "Message Code: Derivatives Batch Data Message (A009F)"
  end
  if value == "A010F" then
    return "Message Code: Derivatives Batch Data Message (A010F)"
  end
  if value == "A011F" then
    return "Message Code: Derivatives Batch Data Message (A011F)"
  end
  if value == "A012F" then
    return "Message Code: Derivatives Batch Data Message (A012F)"
  end
  if value == "A013F" then
    return "Message Code: Derivatives Batch Data Message (A013F)"
  end
  if value == "A015F" then
    return "Message Code: Derivatives Batch Data Message (A015F)"
  end
  if value == "A016F" then
    return "Message Code: Derivatives Batch Data Message (A016F)"
  end
  if value == "A017F" then
    return "Message Code: Derivatives Batch Data Message (A017F)"
  end
  if value == "A018F" then
    return "Message Code: Derivatives Batch Data Message (A018F)"
  end
  if value == "H404F" then
    return "Message Code: Equity Derivatives Adjustment Details Message (H404F)"
  end
  if value == "H405F" then
    return "Message Code: Equity Derivatives Adjustment Details Message (H405F)"
  end
  if value == "H418F" then
    return "Message Code: Equity Derivatives Adjustment Details Message (H418F)"
  end
  if value == "H606F" then
    return "Message Code: Commodity Futures Settlement Reference Ktb Message (H606F)"
  end
  if value == "H101F" then
    return "Message Code: Derivatives Investor Activities Message (H101F)"
  end
  if value == "H102F" then
    return "Message Code: Derivatives Investor Activities Message (H102F)"
  end
  if value == "H103F" then
    return "Message Code: Derivatives Investor Activities Message (H103F)"
  end
  if value == "H104F" then
    return "Message Code: Derivatives Investor Activities Message (H104F)"
  end
  if value == "H105F" then
    return "Message Code: Derivatives Investor Activities Message (H105F)"
  end
  if value == "H106F" then
    return "Message Code: Derivatives Investor Activities Message (H106F)"
  end
  if value == "H107F" then
    return "Message Code: Derivatives Investor Activities Message (H107F)"
  end
  if value == "H108F" then
    return "Message Code: Derivatives Investor Activities Message (H108F)"
  end
  if value == "H109F" then
    return "Message Code: Derivatives Investor Activities Message (H109F)"
  end
  if value == "H110F" then
    return "Message Code: Derivatives Investor Activities Message (H110F)"
  end
  if value == "H111F" then
    return "Message Code: Derivatives Investor Activities Message (H111F)"
  end
  if value == "H112F" then
    return "Message Code: Derivatives Investor Activities Message (H112F)"
  end
  if value == "H113F" then
    return "Message Code: Derivatives Investor Activities Message (H113F)"
  end
  if value == "H115F" then
    return "Message Code: Derivatives Investor Activities Message (H115F)"
  end
  if value == "H116F" then
    return "Message Code: Derivatives Investor Activities Message (H116F)"
  end
  if value == "H117F" then
    return "Message Code: Derivatives Investor Activities Message (H117F)"
  end
  if value == "H118F" then
    return "Message Code: Derivatives Investor Activities Message (H118F)"
  end
  if value == "H201F" then
    return "Message Code: Derivatives Open Interest Message (H201F)"
  end
  if value == "H202F" then
    return "Message Code: Derivatives Open Interest Message (H202F)"
  end
  if value == "H203F" then
    return "Message Code: Derivatives Open Interest Message (H203F)"
  end
  if value == "H204F" then
    return "Message Code: Derivatives Open Interest Message (H204F)"
  end
  if value == "H205F" then
    return "Message Code: Derivatives Open Interest Message (H205F)"
  end
  if value == "H206F" then
    return "Message Code: Derivatives Open Interest Message (H206F)"
  end
  if value == "H207F" then
    return "Message Code: Derivatives Open Interest Message (H207F)"
  end
  if value == "H208F" then
    return "Message Code: Derivatives Open Interest Message (H208F)"
  end
  if value == "H209F" then
    return "Message Code: Derivatives Open Interest Message (H209F)"
  end
  if value == "H210F" then
    return "Message Code: Derivatives Open Interest Message (H210F)"
  end
  if value == "H211F" then
    return "Message Code: Derivatives Open Interest Message (H211F)"
  end
  if value == "H212F" then
    return "Message Code: Derivatives Open Interest Message (H212F)"
  end
  if value == "H213F" then
    return "Message Code: Derivatives Open Interest Message (H213F)"
  end
  if value == "H215F" then
    return "Message Code: Derivatives Open Interest Message (H215F)"
  end
  if value == "H216F" then
    return "Message Code: Derivatives Open Interest Message (H216F)"
  end
  if value == "H217F" then
    return "Message Code: Derivatives Open Interest Message (H217F)"
  end
  if value == "H218F" then
    return "Message Code: Derivatives Open Interest Message (H218F)"
  end
  if value == "H301F" then
    return "Message Code: Futures Settled Price Message (H301F)"
  end
  if value == "H302F" then
    return "Message Code: Futures Settled Price Message (H302F)"
  end
  if value == "H304F" then
    return "Message Code: Futures Settled Price Message (H304F)"
  end
  if value == "H306F" then
    return "Message Code: Futures Settled Price Message (H306F)"
  end
  if value == "H308F" then
    return "Message Code: Futures Settled Price Message (H308F)"
  end
  if value == "H309F" then
    return "Message Code: Futures Settled Price Message (H309F)"
  end
  if value == "H310F" then
    return "Message Code: Futures Settled Price Message (H310F)"
  end
  if value == "H311F" then
    return "Message Code: Futures Settled Price Message (H311F)"
  end
  if value == "H313F" then
    return "Message Code: Futures Settled Price Message (H313F)"
  end
  if value == "ID03F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID03F)"
  end
  if value == "ID05F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID05F)"
  end
  if value == "ID07F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID07F)"
  end
  if value == "ID12F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID12F)"
  end
  if value == "ID15F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID15F)"
  end
  if value == "ID16F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID16F)"
  end
  if value == "ID17F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID17F)"
  end
  if value == "ID18F" then
    return "Message Code: Options Base Price Of Clearing Margins Message (ID18F)"
  end
  if value == "P103F" then
    return "Message Code: Options Implied Volatility Message (P103F)"
  end
  if value == "P112F" then
    return "Message Code: Options Implied Volatility Message (P112F)"
  end
  if value == "P115F" then
    return "Message Code: Options Implied Volatility Message (P115F)"
  end
  if value == "P116F" then
    return "Message Code: Options Implied Volatility Message (P116F)"
  end
  if value == "P117F" then
    return "Message Code: Options Implied Volatility Message (P117F)"
  end
  if value == "N703F" then
    return "Message Code: Options Sensitivity Message (N703F)"
  end
  if value == "N705F" then
    return "Message Code: Options Sensitivity Message (N705F)"
  end
  if value == "N707F" then
    return "Message Code: Options Sensitivity Message (N707F)"
  end
  if value == "N712F" then
    return "Message Code: Options Sensitivity Message (N712F)"
  end
  if value == "N715F" then
    return "Message Code: Options Sensitivity Message (N715F)"
  end
  if value == "N716F" then
    return "Message Code: Options Sensitivity Message (N716F)"
  end
  if value == "N717F" then
    return "Message Code: Options Sensitivity Message (N717F)"
  end
  if value == "N718F" then
    return "Message Code: Options Sensitivity Message (N718F)"
  end
  if value == "H506F" then
    return "Message Code: Commodity Futures Spot Settlement Reference Message (H506F)"
  end
  if value == "H599F" then
    return "Message Code: Commodity Futures Spot Settlement Reference Message (H599F)"
  end
  if value == "HA06F" then
    return "Message Code: Daily Disclosed Rfr Message (HA06F)"
  end

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Nearby Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price = {}

-- Size: Nearby Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size = 9

-- Display: Nearby Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.display = function(value)
  return "Nearby Month Contract Trading Price: "..value
end

-- Dissect: Nearby Month Contract Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.nearby_month_contract_trading_price, range, value, display)

  return offset + length, value
end

-- Number Of Issues For Base Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product = {}

-- Size: Number Of Issues For Base Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.size = 6

-- Display: Number Of Issues For Base Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.display = function(value)
  return "Number Of Issues For Base Product: "..value
end

-- Dissect: Number Of Issues For Base Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_issues_for_base_product, range, value, display)

  return offset + length, value
end

-- Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product = {}

-- Size: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.size = 6

-- Display: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.display = function(value)
  return "Number Of Issues For Subsidiary Product: "..value
end

-- Dissect: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_issues_for_subsidiary_product, range, value, display)

  return offset + length, value
end

-- Number Of Listing Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year = {}

-- Size: Number Of Listing Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.size = 8

-- Display: Number Of Listing Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.display = function(value)
  return "Number Of Listing Days Per Year: "..value
end

-- Dissect: Number Of Listing Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_listing_days_per_year, range, value, display)

  return offset + length, value
end

-- Number Of Previous Days Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading = {}

-- Size: Number Of Previous Days Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.size = 15

-- Display: Number Of Previous Days Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.display = function(value)
  return "Number Of Previous Days Trading: "..value
end

-- Dissect: Number Of Previous Days Trading
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_previous_days_trading, range, value, display)

  return offset + length, value
end

-- Number Of Trading Days Per Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month = {}

-- Size: Number Of Trading Days Per Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.size = 8

-- Display: Number Of Trading Days Per Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.display = function(value)
  return "Number Of Trading Days Per Month: "..value
end

-- Dissect: Number Of Trading Days Per Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_trading_days_per_month, range, value, display)

  return offset + length, value
end

-- Number Of Trading Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year = {}

-- Size: Number Of Trading Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.size = 8

-- Display: Number Of Trading Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.display = function(value)
  return "Number Of Trading Days Per Year: "..value
end

-- Dissect: Number Of Trading Days Per Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.number_of_trading_days_per_year, range, value, display)

  return offset + length, value
end

-- Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient = {}

-- Size: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.size = 18

-- Display: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.display = function(value)
  return "Numerator Adjustment Of Coefficient: "..value
end

-- Dissect: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.numerator_adjustment_of_coefficient, range, value, display)

  return offset + length, value
end

-- Offset Rate Of Asset Group
koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group = {}

-- Size: Offset Rate Of Asset Group
koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.size = 11

-- Display: Offset Rate Of Asset Group
koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.display = function(value)
  return "Offset Rate Of Asset Group: "..value
end

-- Dissect: Offset Rate Of Asset Group
koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.offset_rate_of_asset_group, range, value, display)

  return offset + length, value
end

-- Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest = {}

-- Size: Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.size = 10

-- Display: Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Interest Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity = {}

-- Size: Open Interest Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.size = 15

-- Display: Open Interest Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.display = function(value)
  return "Open Interest Limit Quantity: "..value
end

-- Dissect: Open Interest Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest_limit_quantity, range, value, display)

  return offset + length, value
end

-- Open Interest Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code = {}

-- Size: Open Interest Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.size = 2

-- Display: Open Interest Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.display = function(value)
  return "Open Interest Type Code: "..value
end

-- Dissect: Open Interest Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.open_interest_type_code, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size = 9

-- Display: Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Payment Methods
koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods = {}

-- Size: Payment Methods
koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.size = 1

-- Display: Payment Methods
koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.display = function(value)
  return "Payment Methods: "..value
end

-- Dissect: Payment Methods
koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.payment_methods, range, value, display)

  return offset + length, value
end

-- Previous Days Adjusted Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price = {}

-- Size: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.size = 18

-- Display: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.display = function(value)
  return "Previous Days Adjusted Closing Price: "..value
end

-- Dissect: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Previous Days Best Ask
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask = {}

-- Size: Previous Days Best Ask
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.size = 11

-- Display: Previous Days Best Ask
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.display = function(value)
  return "Previous Days Best Ask: "..value
end

-- Dissect: Previous Days Best Ask
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_best_ask, range, value, display)

  return offset + length, value
end

-- Previous Days Best Bid
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid = {}

-- Size: Previous Days Best Bid
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.size = 11

-- Display: Previous Days Best Bid
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.display = function(value)
  return "Previous Days Best Bid: "..value
end

-- Dissect: Previous Days Best Bid
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_best_bid, range, value, display)

  return offset + length, value
end

-- Previous Days Bpmm
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm = {}

-- Size: Previous Days Bpmm
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.size = 23

-- Display: Previous Days Bpmm
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.display = function(value)
  return "Previous Days Bpmm: "..value
end

-- Dissect: Previous Days Bpmm
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_bpmm, range, value, display)

  return offset + length, value
end

-- Previous Days High Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price = {}

-- Size: Previous Days High Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.size = 11

-- Display: Previous Days High Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.display = function(value)
  return "Previous Days High Price: "..value
end

-- Dissect: Previous Days High Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_high_price, range, value, display)

  return offset + length, value
end

-- Previous Days Low Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price = {}

-- Size: Previous Days Low Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.size = 11

-- Display: Previous Days Low Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.display = function(value)
  return "Previous Days Low Price: "..value
end

-- Dissect: Previous Days Low Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_low_price, range, value, display)

  return offset + length, value
end

-- Previous Days Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest = {}

-- Size: Previous Days Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.size = 12

-- Display: Previous Days Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.display = function(value)
  return "Previous Days Open Interest: "..value
end

-- Dissect: Previous Days Open Interest
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_open_interest, range, value, display)

  return offset + length, value
end

-- Previous Days Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price = {}

-- Size: Previous Days Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.size = 11

-- Display: Previous Days Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.display = function(value)
  return "Previous Days Opening Price: "..value
end

-- Dissect: Previous Days Opening Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_opening_price, range, value, display)

  return offset + length, value
end

-- Previous Days Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price = {}

-- Size: Previous Days Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.size = 18

-- Display: Previous Days Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.display = function(value)
  return "Previous Days Settlement Price: "..value
end

-- Dissect: Previous Days Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_settlement_price, range, value, display)

  return offset + length, value
end

-- Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value = {}

-- Size: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.size = 22

-- Display: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.display = function(value)
  return "Previous Days Total Accumulated Trading Value: "..value
end

-- Dissect: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume = {}

-- Size: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.size = 15

-- Display: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.display = function(value)
  return "Previous Days Total Accumulated Trading Volume: "..value
end

-- Dissect: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_days_total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Previous Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price = {}

-- Size: Previous Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.size = 9

-- Display: Previous Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Dissect: Previous Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Price Limit Expansion Lower Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit = {}

-- Size: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.size = 2

-- Display: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.display = function(value)
  return "Price Limit Expansion Lower Limit: "..value
end

-- Dissect: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_expansion_lower_limit, range, value, display)

  return offset + length, value
end

-- Price Limit Expansion Upper Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit = {}

-- Size: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.size = 2

-- Display: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.display = function(value)
  return "Price Limit Expansion Upper Limit: "..value
end

-- Dissect: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_expansion_upper_limit, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.display = function(value)
  return "Processing Time Of Trading System: "..value
end

-- Dissect: Processing Time Of Trading System
koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id = {}

-- Size: Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.size = 11

-- Display: Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.product_id, range, value, display)

  return offset + length, value
end

-- Put Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility = {}

-- Size: Put Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.size = 11

-- Display: Put Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.display = function(value)
  return "Put Averaged Implied Volatility: "..value
end

-- Dissect: Put Averaged Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.put_averaged_implied_volatility, range, value, display)

  return offset + length, value
end

-- Remaining Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days = {}

-- Size: Remaining Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.size = 8

-- Display: Remaining Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.display = function(value)
  return "Remaining Days: "..value
end

-- Dissect: Remaining Days
koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.remaining_days, range, value, display)

  return offset + length, value
end

-- Representative Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility = {}

-- Size: Representative Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.size = 11

-- Display: Representative Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.display = function(value)
  return "Representative Implied Volatility: "..value
end

-- Dissect: Representative Implied Volatility
koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.representative_implied_volatility, range, value, display)

  return offset + length, value
end

-- Rfr
koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr = {}

-- Size: Rfr
koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.size = 9

-- Display: Rfr
koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.display = function(value)
  return "Rfr: "..value
end

-- Dissect: Rfr
koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.rfr, range, value, display)

  return offset + length, value
end

-- Rights Execution Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code = {}

-- Size: Rights Execution Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.size = 1

-- Display: Rights Execution Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.display = function(value)
  return "Rights Execution Type Code: "..value
end

-- Dissect: Rights Execution Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.rights_execution_type_code, range, value, display)

  return offset + length, value
end

-- Sensitivity Delta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta = {}

-- Size: Sensitivity Delta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.size = 20

-- Display: Sensitivity Delta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.display = function(value)
  return "Sensitivity Delta: "..value
end

-- Dissect: Sensitivity Delta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_delta, range, value, display)

  return offset + length, value
end

-- Sensitivity Gamma
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma = {}

-- Size: Sensitivity Gamma
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.size = 20

-- Display: Sensitivity Gamma
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.display = function(value)
  return "Sensitivity Gamma: "..value
end

-- Dissect: Sensitivity Gamma
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_gamma, range, value, display)

  return offset + length, value
end

-- Sensitivity Rho
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho = {}

-- Size: Sensitivity Rho
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.size = 20

-- Display: Sensitivity Rho
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.display = function(value)
  return "Sensitivity Rho: "..value
end

-- Dissect: Sensitivity Rho
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_rho, range, value, display)

  return offset + length, value
end

-- Sensitivity Theta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta = {}

-- Size: Sensitivity Theta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.size = 20

-- Display: Sensitivity Theta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.display = function(value)
  return "Sensitivity Theta: "..value
end

-- Dissect: Sensitivity Theta
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_theta, range, value, display)

  return offset + length, value
end

-- Sensitivity Vega
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega = {}

-- Size: Sensitivity Vega
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.size = 20

-- Display: Sensitivity Vega
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.display = function(value)
  return "Sensitivity Vega: "..value
end

-- Dissect: Sensitivity Vega
koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sensitivity_vega, range, value, display)

  return offset + length, value
end

-- Sequence Number For Delivery Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month = {}

-- Size: Sequence Number For Delivery Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.size = 3

-- Display: Sequence Number For Delivery Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.display = function(value)
  return "Sequence Number For Delivery Month: "..value
end

-- Dissect: Sequence Number For Delivery Month
koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.sequence_number_for_delivery_month, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code = {}

-- Size: Session Start End Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.size = 2

-- Display: Session Start End Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price = {}

-- Size: Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.size = 18

-- Display: Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option = {}

-- Size: Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.size = 18

-- Display: Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.display = function(value)
  return "Settlement Price After Exercising An Option: "..value
end

-- Dissect: Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price_after_exercising_an_option, range, value, display)

  return offset + length, value
end

-- Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code = {}

-- Size: Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.size = 2

-- Display: Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.display = function(value)
  return "Settlement Price Type Code: "..value
end

-- Dissect: Settlement Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_price_type_code, range, value, display)

  return offset + length, value
end

-- Settlement Week
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week = {}

-- Size: Settlement Week
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.size = 2

-- Display: Settlement Week
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.display = function(value)
  return "Settlement Week: "..value
end

-- Dissect: Settlement Week
koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.settlement_week, range, value, display)

  return offset + length, value
end

-- Spread Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value = {}

-- Size: Spread Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.size = 22

-- Display: Spread Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.display = function(value)
  return "Spread Ask Trading Value: "..value
end

-- Dissect: Spread Ask Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Spread Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume = {}

-- Size: Spread Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.size = 10

-- Display: Spread Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.display = function(value)
  return "Spread Ask Trading Volume: "..value
end

-- Dissect: Spread Ask Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Spread Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value = {}

-- Size: Spread Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.size = 22

-- Display: Spread Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.display = function(value)
  return "Spread Bid Trading Value: "..value
end

-- Dissect: Spread Bid Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Spread Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume = {}

-- Size: Spread Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.size = 10

-- Display: Spread Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.display = function(value)
  return "Spread Bid Trading Volume: "..value
end

-- Dissect: Spread Bid Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Spread Composition Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code = {}

-- Size: Spread Composition Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.size = 2

-- Display: Spread Composition Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.display = function(value)
  return "Spread Composition Code: "..value
end

-- Dissect: Spread Composition Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_composition_code, range, value, display)

  return offset + length, value
end

-- Spread Issue Isin 1
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1 = {}

-- Size: Spread Issue Isin 1
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.size = 12

-- Display: Spread Issue Isin 1
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.display = function(value)
  return "Spread Issue Isin 1: "..value
end

-- Dissect: Spread Issue Isin 1
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_issue_isin_1, range, value, display)

  return offset + length, value
end

-- Spread Issue Isin 2
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2 = {}

-- Size: Spread Issue Isin 2
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.size = 12

-- Display: Spread Issue Isin 2
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.display = function(value)
  return "Spread Issue Isin 2: "..value
end

-- Dissect: Spread Issue Isin 2
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_issue_isin_2, range, value, display)

  return offset + length, value
end

-- Spread Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code = {}

-- Size: Spread Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.size = 1

-- Display: Spread Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.display = function(value)
  return "Spread Type Code: "..value
end

-- Dissect: Spread Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.spread_type_code, range, value, display)

  return offset + length, value
end

-- Start End Of Allocation
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation = {}

-- Size: Start End Of Allocation
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.size = 1

-- Display: Start End Of Allocation
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.display = function(value)
  return "Start End Of Allocation: "..value
end

-- Dissect: Start End Of Allocation
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.start_end_of_allocation, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied = {}

-- Size: Step Applied
koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.size = 2

-- Display: Step Applied
koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Subsidiary Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id = {}

-- Size: Subsidiary Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.size = 11

-- Display: Subsidiary Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.display = function(value)
  return "Subsidiary Product Id: "..value
end

-- Dissect: Subsidiary Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.subsidiary_product_id, range, value, display)

  return offset + length, value
end

-- Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks = {}

-- Size: Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.size = 1

-- Display: Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.display = function(value)
  return "Suspended Stocks: "..value
end

-- Dissect: Suspended Stocks
koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.suspended_stocks, range, value, display)

  return offset + length, value
end

-- The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year = {}

-- Size: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.size = 8

-- Display: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.display = function(value)
  return "The Date Of The Highest Premium In A Year: "..value
end

-- Dissect: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_highest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime = {}

-- Size: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.size = 8

-- Display: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.display = function(value)
  return "The Date Of The Highest Premium Of The Lifetime: "..value
end

-- Dissect: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_highest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year = {}

-- Size: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.size = 8

-- Display: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.display = function(value)
  return "The Date Of The Lowest Premium In A Year: "..value
end

-- Dissect: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_lowest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime = {}

-- Size: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.size = 8

-- Display: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.display = function(value)
  return "The Date Of The Lowest Premium Of The Lifetime: "..value
end

-- Dissect: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_date_of_the_lowest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The First Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date = {}

-- Size: The First Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.size = 8

-- Display: The First Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.display = function(value)
  return "The First Trading Date: "..value
end

-- Dissect: The First Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_first_trading_date, range, value, display)

  return offset + length, value
end

-- The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year = {}

-- Size: The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.size = 11

-- Display: The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.display = function(value)
  return "The Highest Premium In A Year: "..value
end

-- Dissect: The Highest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_highest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime = {}

-- Size: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.size = 11

-- Display: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.display = function(value)
  return "The Highest Premium Of The Lifetime: "..value
end

-- Dissect: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_highest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Last Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price = {}

-- Size: The Last Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.size = 18

-- Display: The Last Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.display = function(value)
  return "The Last Settlement Price: "..value
end

-- Dissect: The Last Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_last_settlement_price, range, value, display)

  return offset + length, value
end

-- The Last Trading Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time = {}

-- Size: The Last Trading Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.size = 9

-- Display: The Last Trading Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.display = function(value)
  return "The Last Trading Time: "..value
end

-- Dissect: The Last Trading Time
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_last_trading_time, range, value, display)

  return offset + length, value
end

-- The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year = {}

-- Size: The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.size = 11

-- Display: The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.display = function(value)
  return "The Lowest Premium In A Year: "..value
end

-- Dissect: The Lowest Premium In A Year
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_lowest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime = {}

-- Size: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.size = 11

-- Display: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.display = function(value)
  return "The Lowest Premium Of The Lifetime: "..value
end

-- Dissect: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_lowest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Time Imposing A Price Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit = {}

-- Size: The Time Imposing A Price Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.size = 9

-- Display: The Time Imposing A Price Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.display = function(value)
  return "The Time Imposing A Price Limit: "..value
end

-- Dissect: The Time Imposing A Price Limit
koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.the_time_imposing_a_price_limit, range, value, display)

  return offset + length, value
end

-- Theoretical Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price = {}

-- Size: Theoretical Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.size = 16

-- Display: Theoretical Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.display = function(value)
  return "Theoretical Settlement Price: "..value
end

-- Dissect: Theoretical Settlement Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.theoretical_settlement_price, range, value, display)

  return offset + length, value
end

-- Time When Allocation Ended
koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended = {}

-- Size: Time When Allocation Ended
koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.size = 9

-- Display: Time When Allocation Ended
koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.display = function(value)
  return "Time When Allocation Ended: "..value
end

-- Dissect: Time When Allocation Ended
koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.time_when_allocation_ended, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size = 9

-- Display: Todays High
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size = 9

-- Display: Todays Low
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value = {}

-- Size: Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.size = 22

-- Display: Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.display = function(value)
  return "Total Accumulated Trading Value: "..value
end

-- Dissect: Total Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume = {}

-- Size: Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.size = 15

-- Display: Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.display = function(value)
  return "Total Accumulated Trading Volume: "..value
end

-- Dissect: Total Accumulated Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.display = function(value)
  return "Trading Date: "..value
end

-- Dissect: Trading Date
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Multiplier
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier = {}

-- Size: Trading Multiplier
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.size = 22

-- Display: Trading Multiplier
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.display = function(value)
  return "Trading Multiplier: "..value
end

-- Dissect: Trading Multiplier
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier, range, value, display)

  return offset + length, value
end

-- Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10 = {}

-- Size: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.size = 22

-- Display: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.display = function(value)
  return "Trading Multiplier After Adjustment Equity Options 10: "..value
end

-- Dissect: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier_after_adjustment_equity_options_10, range, value, display)

  return offset + length, value
end

-- Trading Multiplier Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment = {}

-- Size: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.size = 22

-- Display: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.display = function(value)
  return "Trading Multiplier Before Adjustment: "..value
end

-- Dissect: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_multiplier_before_adjustment, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size = 9

-- Display: Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Unit
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit = {}

-- Size: Trading Unit
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.size = 22

-- Display: Trading Unit
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.display = function(value)
  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.size = 9

-- Display: Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transaction Status Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code = {}

-- Size: Transaction Status Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.size = 2

-- Display: Transaction Status Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.display = function(value)
  return "Transaction Status Type Code: "..value
end

-- Dissect: Transaction Status Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.transaction_status_type_code, range, value, display)

  return offset + length, value
end

-- Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option = {}

-- Size: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.size = 1

-- Display: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.display = function(value)
  return "Type Code Of Settlement Price After Exercising An Option: "..value
end

-- Dissect: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.type_code_of_settlement_price_after_exercising_an_option, range, value, display)

  return offset + length, value
end

-- Type Of Liquidityproviding Lp
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp = {}

-- Size: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.size = 1

-- Display: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.display = function(value)
  return "Type Of Liquidityproviding Lp: "..value
end

-- Dissect: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.type_of_liquidityproviding_lp, range, value, display)

  return offset + length, value
end

-- Underlying Asset Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id = {}

-- Size: Underlying Asset Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size = 3

-- Display: Underlying Asset Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.display = function(value)
  return "Underlying Asset Id: "..value
end

-- Dissect: Underlying Asset Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id = {}

-- Size: Underlying Asset Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.size = 3

-- Display: Underlying Asset Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.display = function(value)
  return "Underlying Asset Market Id: "..value
end

-- Dissect: Underlying Asset Market Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_market_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id = {}

-- Size: Underlying Asset Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.size = 4

-- Display: Underlying Asset Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.display = function(value)
  return "Underlying Asset Product Id: "..value
end

-- Dissect: Underlying Asset Product Id
koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.underlying_asset_product_id, range, value, display)

  return offset + length, value
end

-- Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range = {}

-- Size: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size = 9

-- Display: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.display = function(value)
  return "Upper Limit Of Dynamic Price Range: "..value
end

-- Dissect: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_of_dynamic_price_range, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price = {}

-- Size: Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.size = 9

-- Display: Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.display = function(value)
  return "Upper Limit Price: "..value
end

-- Dissect: Upper Limit Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity = {}

-- Size: Upper Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.size = 23

-- Display: Upper Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.display = function(value)
  return "Upper Limit Quantity: "..value
end

-- Dissect: Upper Limit Quantity
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_quantity, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade = {}

-- Size: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.size = 23

-- Display: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.display = function(value)
  return "Upper Limit Quantity For Block Trade: "..value
end

-- Dissect: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_limit_quantity_for_block_trade, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage = {}

-- Size: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.size = 11

-- Display: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.display = function(value)
  return "Upper Price Limit 1 St Stage: "..value
end

-- Dissect: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_1_st_stage, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage = {}

-- Size: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.size = 11

-- Display: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.display = function(value)
  return "Upper Price Limit 2 Nd Stage: "..value
end

-- Dissect: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_2_nd_stage, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage = {}

-- Size: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.size = 11

-- Display: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.display = function(value)
  return "Upper Price Limit 3 Rd Stage: "..value
end

-- Dissect: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.upper_price_limit_3_rd_stage, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount = {}

-- Size: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.size = 12

-- Display: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.display = function(value)
  return "Yesterdays Accumulated Trading Amount: "..value
end

-- Dissect: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_accumulated_trading_amount, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value = {}

-- Size: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.size = 22

-- Display: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.display = function(value)
  return "Yesterdays Accumulated Trading Value: "..value
end

-- Dissect: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price = {}

-- Size: Yesterdays Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.size = 11

-- Display: Yesterdays Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.display = function(value)
  return "Yesterdays Closing Price: "..value
end

-- Dissect: Yesterdays Closing Price
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_closing_price, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code = {}

-- Size: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.size = 1

-- Display: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.display = function(value)
  return "Yesterdays Closing Price Type Code: "..value
end

-- Dissect: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_derivativesa_exture_v2_018.text_encoding)
  local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.yesterdays_closing_price_type_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime DerivativesA Exture 2.018
-----------------------------------------------------------------------

-- Daily Disclosed Rfr Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message = {}

-- Size: Daily Disclosed Rfr Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Daily Disclosed Rfr Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Daily Disclosed Rfr Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_date.dissect(buffer, index, packet, parent)

  -- Disclosure Type: Int
  index, disclosure_type = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_type.dissect(buffer, index, packet, parent)

  -- Disclosure Date: String
  index, disclosure_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.disclosure_date.dissect(buffer, index, packet, parent)

  -- Rfr: String
  index, rfr = koscom_mdcsrealtime_derivativesa_exture_v2_018.rfr.dissect(buffer, index, packet, parent)

  -- Indexed Interest Rate: String
  index, indexed_interest_rate = koscom_mdcsrealtime_derivativesa_exture_v2_018.indexed_interest_rate.dissect(buffer, index, packet, parent)

  -- Interest Rate 30 Day: String
  index, interest_rate_30_day = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_30_day.dissect(buffer, index, packet, parent)

  -- Interest Rate 90 Day: String
  index, interest_rate_90_day = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_90_day.dissect(buffer, index, packet, parent)

  -- Interest Rate 180 Day: String
  index, interest_rate_180_day = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate_180_day.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Daily Disclosed Rfr Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.daily_disclosed_rfr_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message = {}

-- Size: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bis Announcement Date: String
  index, bis_announcement_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_date.dissect(buffer, index, packet, parent)

  -- Bis Announcement Time: String
  index, bis_announcement_time = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_announcement_time.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Bis Yield Ratio: Double
  index, bis_yield_ratio = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_yield_ratio.dissect(buffer, index, packet, parent)

  -- Isin Of Base Issue For Payment: String
  index, isin_of_base_issue_for_payment = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.dissect(buffer, index, packet, parent)

  -- Ktb Isin: String
  index, ktb_isin = koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.dissect(buffer, index, packet, parent)

  -- Bis Time Of Inputting Yield Rate: String
  index, bis_time_of_inputting_yield_rate = koscom_mdcsrealtime_derivativesa_exture_v2_018.bis_time_of_inputting_yield_rate.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.commodity_futures_spot_settlement_reference_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Sensitivity Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message = {}

-- Size: Options Sensitivity Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Options Sensitivity Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Sensitivity Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculation Time String 9: String
  index, calculation_time_string_9 = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_9.dissect(buffer, index, packet, parent)

  -- Implied Volatility Type Code: String
  index, implied_volatility_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility_type_code.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Sensitivity Delta: FLOAT128
  index, sensitivity_delta = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_delta.dissect(buffer, index, packet, parent)

  -- Sensitivity Theta: FLOAT128
  index, sensitivity_theta = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_theta.dissect(buffer, index, packet, parent)

  -- Sensitivity Vega: FLOAT128
  index, sensitivity_vega = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_vega.dissect(buffer, index, packet, parent)

  -- Sensitivity Gamma: FLOAT128
  index, sensitivity_gamma = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_gamma.dissect(buffer, index, packet, parent)

  -- Sensitivity Rho: FLOAT128
  index, sensitivity_rho = koscom_mdcsrealtime_derivativesa_exture_v2_018.sensitivity_rho.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Sensitivity Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_sensitivity_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Implied Volatility Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message = {}

-- Size: Options Implied Volatility Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Options Implied Volatility Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Implied Volatility Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Call Averaged Implied Volatility: Double
  index, call_averaged_implied_volatility = koscom_mdcsrealtime_derivativesa_exture_v2_018.call_averaged_implied_volatility.dissect(buffer, index, packet, parent)

  -- Put Averaged Implied Volatility: Double
  index, put_averaged_implied_volatility = koscom_mdcsrealtime_derivativesa_exture_v2_018.put_averaged_implied_volatility.dissect(buffer, index, packet, parent)

  -- Representative Implied Volatility: Double
  index, representative_implied_volatility = koscom_mdcsrealtime_derivativesa_exture_v2_018.representative_implied_volatility.dissect(buffer, index, packet, parent)

  -- Historical Volatility 90 Days: Double
  index, historical_volatility_90_days = koscom_mdcsrealtime_derivativesa_exture_v2_018.historical_volatility_90_days.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Implied Volatility Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_implied_volatility_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message = {}

-- Size: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins: FLOAT128
  index, base_price_of_clearing_margins = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins Type Code: String
  index, base_price_of_clearing_margins_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.dissect(buffer, index, packet, parent)

  -- Settlement Price After Exercising An Option: FLOAT128
  index, settlement_price_after_exercising_an_option = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_after_exercising_an_option.dissect(buffer, index, packet, parent)

  -- Type Code Of Settlement Price After Exercising An Option: String
  index, type_code_of_settlement_price_after_exercising_an_option = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_code_of_settlement_price_after_exercising_an_option.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.options_base_price_of_clearing_margins_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Settled Price Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message = {}

-- Size: Futures Settled Price Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Futures Settled Price Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Settled Price Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Settlement Price: FLOAT128
  index, settlement_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Code: String
  index, settlement_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- The Last Settlement Price: FLOAT128
  index, the_last_settlement_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_settlement_price.dissect(buffer, index, packet, parent)

  -- Last Settlement Price Type Code: String
  index, last_settlement_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Settled Price Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.futures_settled_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Open Interest Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message = {}

-- Size: Derivatives Open Interest Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Open Interest Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Open Interest Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Open Interest Type Code: String
  index, open_interest_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_type_code.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Open Interest Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_open_interest_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Investor Activities Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message = {}

-- Size: Derivatives Investor Activities Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Investor Activities Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Investor Activities Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date: String
  index, date = koscom_mdcsrealtime_derivativesa_exture_v2_018.date.dissect(buffer, index, packet, parent)

  -- Calculation Time String 6: String
  index, calculation_time_string_6 = koscom_mdcsrealtime_derivativesa_exture_v2_018.calculation_time_string_6.dissect(buffer, index, packet, parent)

  -- Transaction Status Type Code: String
  index, transaction_status_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.transaction_status_type_code.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Futures Options Type Code: String
  index, futures_options_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.investor_code.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume: Long
  index, bid_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume: Long
  index, ask_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Bid Trading Value: FLOAT128
  index, bid_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_trading_value.dissect(buffer, index, packet, parent)

  -- Ask Trading Value: FLOAT128
  index, ask_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_trading_value.dissect(buffer, index, packet, parent)

  -- Spread Bid Trading Volume: Long
  index, spread_bid_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Spread Ask Trading Volume: Long
  index, spread_ask_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Spread Bid Trading Value: FLOAT128
  index, spread_bid_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_bid_trading_value.dissect(buffer, index, packet, parent)

  -- Spread Ask Trading Value: FLOAT128
  index, spread_ask_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_ask_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Investor Activities Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_investor_activities_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message = {}

-- Size: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Application Date: String
  index, application_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.application_date.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Ktb Isin: String
  index, ktb_isin = koscom_mdcsrealtime_derivativesa_exture_v2_018.ktb_isin.dissect(buffer, index, packet, parent)

  -- Isin Of Base Issue For Payment: String
  index, isin_of_base_issue_for_payment = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_base_issue_for_payment.dissect(buffer, index, packet, parent)

  -- Conversion Factor: FLOAT128
  index, conversion_factor = koscom_mdcsrealtime_derivativesa_exture_v2_018.conversion_factor.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.commodity_futures_settlement_reference_ktb_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message = {}

-- Size: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Denominator Coefficient Of Adjustment: FLOAT128
  index, denominator_coefficient_of_adjustment = koscom_mdcsrealtime_derivativesa_exture_v2_018.denominator_coefficient_of_adjustment.dissect(buffer, index, packet, parent)

  -- Numerator Adjustment Of Coefficient: FLOAT128
  index, numerator_adjustment_of_coefficient = koscom_mdcsrealtime_derivativesa_exture_v2_018.numerator_adjustment_of_coefficient.dissect(buffer, index, packet, parent)

  -- Trading Multiplier Before Adjustment: FLOAT128
  index, trading_multiplier_before_adjustment = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_before_adjustment.dissect(buffer, index, packet, parent)

  -- Trading Multiplier After Adjustment Equity Options 10: FLOAT128
  index, trading_multiplier_after_adjustment_equity_options_10 = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier_after_adjustment_equity_options_10.dissect(buffer, index, packet, parent)

  -- Exercise Price Before Adjustment: FLOAT128
  index, exercise_price_before_adjustment = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_before_adjustment.dissect(buffer, index, packet, parent)

  -- Exercise Price After Adjustment: FLOAT128
  index, exercise_price_after_adjustment = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_after_adjustment.dissect(buffer, index, packet, parent)

  -- Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted: Int
  index, adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.equity_derivatives_adjustment_details_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Batch Data Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message = {}

-- Size: Derivatives Batch Data Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Batch Data Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Batch Data Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Futures Options Type Code: String
  index, futures_options_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_options_type_code.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_derivativesa_exture_v2_018.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_derivativesa_exture_v2_018.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_derivativesa_exture_v2_018.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.delisting_date.dissect(buffer, index, packet, parent)

  -- Spread Type Code: String
  index, spread_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_type_code.dissect(buffer, index, packet, parent)

  -- Payment Methods: String
  index, payment_methods = koscom_mdcsrealtime_derivativesa_exture_v2_018.payment_methods.dissect(buffer, index, packet, parent)

  -- Direction Of Price Limit Expansion Type Code: String
  index, direction_of_price_limit_expansion_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.direction_of_price_limit_expansion_type_code.dissect(buffer, index, packet, parent)

  -- Final Stage Of Price Limit Expansion: Int
  index, final_stage_of_price_limit_expansion = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_stage_of_price_limit_expansion.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 1 St Stage: Double
  index, upper_price_limit_1_st_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_1_st_stage.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 2 Nd Stage: Double
  index, upper_price_limit_2_nd_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_2_nd_stage.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 3 Rd Stage: Double
  index, upper_price_limit_3_rd_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_price_limit_3_rd_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 1 St Stage: Double
  index, lower_price_limit_1_st_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_1_st_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 2 Nd Stage: Double
  index, lower_price_limit_2_nd_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_2_nd_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 3 Rd Stage: Double
  index, lower_price_limit_3_rd_stage = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_price_limit_3_rd_stage.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Rights Execution Type Code: String
  index, rights_execution_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.rights_execution_type_code.dissect(buffer, index, packet, parent)

  -- Spread Composition Code: String
  index, spread_composition_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_composition_code.dissect(buffer, index, packet, parent)

  -- Spread Issue Isin 1: String
  index, spread_issue_isin_1 = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_1.dissect(buffer, index, packet, parent)

  -- Spread Issue Isin 2: String
  index, spread_issue_isin_2 = koscom_mdcsrealtime_derivativesa_exture_v2_018.spread_issue_isin_2.dissect(buffer, index, packet, parent)

  -- Last Trading Date: String
  index, last_trading_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_date.dissect(buffer, index, packet, parent)

  -- Last Payment Date: String
  index, last_payment_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_payment_date.dissect(buffer, index, packet, parent)

  -- Sequence Number For Delivery Month: Int
  index, sequence_number_for_delivery_month = koscom_mdcsrealtime_derivativesa_exture_v2_018.sequence_number_for_delivery_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.expiration_date.dissect(buffer, index, packet, parent)

  -- Exercise Price: FLOAT128
  index, exercise_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price.dissect(buffer, index, packet, parent)

  -- Base Price Adjustment Type Code: String
  index, base_price_adjustment_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_adjustment_type_code.dissect(buffer, index, packet, parent)

  -- Trading Unit: FLOAT128
  index, trading_unit = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_unit.dissect(buffer, index, packet, parent)

  -- Trading Multiplier: FLOAT128
  index, trading_multiplier = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_multiplier.dissect(buffer, index, packet, parent)

  -- Type Of Liquidityproviding Lp: String
  index, type_of_liquidityproviding_lp = koscom_mdcsrealtime_derivativesa_exture_v2_018.type_of_liquidityproviding_lp.dissect(buffer, index, packet, parent)

  -- Listing Type Code: String
  index, listing_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.listing_type_code.dissect(buffer, index, packet, parent)

  -- Atm: Double
  index, atm = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm.dissect(buffer, index, packet, parent)

  -- Adjustment Reason Code: String
  index, adjustment_reason_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjustment_reason_code.dissect(buffer, index, packet, parent)

  -- Isin Of Underlying Asset: String
  index, isin_of_underlying_asset = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_of_underlying_asset.dissect(buffer, index, packet, parent)

  -- Closing Price Of Underlying Asset: Double
  index, closing_price_of_underlying_asset = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_of_underlying_asset.dissect(buffer, index, packet, parent)

  -- Remaining Days: Int
  index, remaining_days = koscom_mdcsrealtime_derivativesa_exture_v2_018.remaining_days.dissect(buffer, index, packet, parent)

  -- Adjusted Base Price: FLOAT128
  index, adjusted_base_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.adjusted_base_price.dissect(buffer, index, packet, parent)

  -- Base Price Type Code: String
  index, base_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_type_code.dissect(buffer, index, packet, parent)

  -- Base Price For Trading Type Code: String
  index, base_price_for_trading_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_for_trading_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Adjusted Closing Price: FLOAT128
  index, previous_days_adjusted_closing_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Block Trading Type Code: String
  index, block_trading_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.block_trading_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Bpmm: FLOAT128
  index, previous_days_bpmm = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_bpmm.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins Type Code: String
  index, base_price_of_clearing_margins_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_price_of_clearing_margins_type_code.dissect(buffer, index, packet, parent)

  -- Theoretical Settlement Price: FLOAT128
  index, theoretical_settlement_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.theoretical_settlement_price.dissect(buffer, index, packet, parent)

  -- Base Theoretical Price: FLOAT128
  index, base_theoretical_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_theoretical_price.dissect(buffer, index, packet, parent)

  -- Previous Days Settlement Price: FLOAT128
  index, previous_days_settlement_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_settlement_price.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt.dissect(buffer, index, packet, parent)

  -- Futures Circuit Breakers Upper Limit Price: Double
  index, futures_circuit_breakers_upper_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_upper_limit_price.dissect(buffer, index, packet, parent)

  -- Futures Circuit Breakers Lower Limit Price: Double
  index, futures_circuit_breakers_lower_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_circuit_breakers_lower_limit_price.dissect(buffer, index, packet, parent)

  -- Exercise Price For Displaying Not For Trading: FLOAT128
  index, exercise_price_for_displaying_not_for_trading = koscom_mdcsrealtime_derivativesa_exture_v2_018.exercise_price_for_displaying_not_for_trading.dissect(buffer, index, packet, parent)

  -- Atm Type Code: String
  index, atm_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.atm_type_code.dissect(buffer, index, packet, parent)

  -- Last Trading Day: String
  index, last_trading_day = koscom_mdcsrealtime_derivativesa_exture_v2_018.last_trading_day.dissect(buffer, index, packet, parent)

  -- Dividend Value For Settlement Price: FLOAT128
  index, dividend_value_for_settlement_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.dividend_value_for_settlement_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Opening Price: Double
  index, previous_days_opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_opening_price.dissect(buffer, index, packet, parent)

  -- Previous Days High Price: Double
  index, previous_days_high_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_high_price.dissect(buffer, index, packet, parent)

  -- Previous Days Low Price: Double
  index, previous_days_low_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_low_price.dissect(buffer, index, packet, parent)

  -- The First Trading Date: String
  index, the_first_trading_date = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_first_trading_date.dissect(buffer, index, packet, parent)

  -- The Last Trading Time: String
  index, the_last_trading_time = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_last_trading_time.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Code: String
  index, settlement_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- Disparate Ratio: Double
  index, disparate_ratio = koscom_mdcsrealtime_derivativesa_exture_v2_018.disparate_ratio.dissect(buffer, index, packet, parent)

  -- Previous Days Open Interest: Long
  index, previous_days_open_interest = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_open_interest.dissect(buffer, index, packet, parent)

  -- Previous Days Best Ask: Double
  index, previous_days_best_ask = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_ask.dissect(buffer, index, packet, parent)

  -- Previous Days Best Bid: Double
  index, previous_days_best_bid = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_best_bid.dissect(buffer, index, packet, parent)

  -- Implied Volatility: Double
  index, implied_volatility = koscom_mdcsrealtime_derivativesa_exture_v2_018.implied_volatility.dissect(buffer, index, packet, parent)

  -- The Highest Premium Of The Lifetime: Double
  index, the_highest_premium_of_the_lifetime = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Lowest Premium Of The Lifetime: Double
  index, the_lowest_premium_of_the_lifetime = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Highest Premium In A Year: Double
  index, the_highest_premium_in_a_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_highest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Lowest Premium In A Year: Double
  index, the_lowest_premium_in_a_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_lowest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Date Of The Highest Premium Of The Lifetime: String
  index, the_date_of_the_highest_premium_of_the_lifetime = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Date Of The Lowest Premium Of The Lifetime: String
  index, the_date_of_the_lowest_premium_of_the_lifetime = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Date Of The Highest Premium In A Year: String
  index, the_date_of_the_highest_premium_in_a_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_highest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Date Of The Lowest Premium In A Year: String
  index, the_date_of_the_lowest_premium_in_a_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_date_of_the_lowest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- Number Of Listing Days Per Year: Int
  index, number_of_listing_days_per_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_listing_days_per_year.dissect(buffer, index, packet, parent)

  -- Number Of Trading Days Per Month: Int
  index, number_of_trading_days_per_month = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_month.dissect(buffer, index, packet, parent)

  -- Number Of Trading Days Per Year: Int
  index, number_of_trading_days_per_year = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_trading_days_per_year.dissect(buffer, index, packet, parent)

  -- Number Of Previous Days Trading: Long
  index, number_of_previous_days_trading = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_previous_days_trading.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Amount: Long
  index, yesterdays_accumulated_trading_amount = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_amount.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Value: FLOAT128
  index, yesterdays_accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.yesterdays_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Previous Days Total Accumulated Trading Volume: Long
  index, previous_days_total_accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Previous Days Total Accumulated Trading Value: FLOAT128
  index, previous_days_total_accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_days_total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Interest Rate: Double
  index, interest_rate = koscom_mdcsrealtime_derivativesa_exture_v2_018.interest_rate.dissect(buffer, index, packet, parent)

  -- Open Interest Limit Quantity: Long
  index, open_interest_limit_quantity = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest_limit_quantity.dissect(buffer, index, packet, parent)

  -- Underlying Asset Product Id: String
  index, underlying_asset_product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_product_id.dissect(buffer, index, packet, parent)

  -- Offset Rate Of Asset Group: Double
  index, offset_rate_of_asset_group = koscom_mdcsrealtime_derivativesa_exture_v2_018.offset_rate_of_asset_group.dissect(buffer, index, packet, parent)

  -- Limit Order Permission Type Code: Int
  index, limit_order_permission_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.limit_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Market Price Order Permission Type Code: Int
  index, market_price_order_permission_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Conditioned Order Permission Type Code: Int
  index, conditioned_order_permission_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.conditioned_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Best Favorable Order Permission Type Code: Int
  index, best_favorable_order_permission_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.best_favorable_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Efp Trading Item: String
  index, efp_trading_item = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_item.dissect(buffer, index, packet, parent)

  -- Flex Trading Item: String
  index, flex_trading_item = koscom_mdcsrealtime_derivativesa_exture_v2_018.flex_trading_item.dissect(buffer, index, packet, parent)

  -- Efp Trading Volume: Long
  index, efp_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_volume.dissect(buffer, index, packet, parent)

  -- Efp Trading Value: FLOAT128
  index, efp_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.efp_trading_value.dissect(buffer, index, packet, parent)

  -- Market Holidays: String
  index, market_holidays = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_holidays.dissect(buffer, index, packet, parent)

  -- Limitation Of Dynamic Price: String
  index, limitation_of_dynamic_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.limitation_of_dynamic_price.dissect(buffer, index, packet, parent)

  -- Gap Between Upper Limit Price Of Dynamic Price And Trading Value: Double
  index, gap_between_upper_limit_price_of_dynamic_price_and_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.dissect(buffer, index, packet, parent)

  -- Gap Between Lower Limit Price Of Dynamic Price And Trading Value: Double
  index, gap_between_lower_limit_price_of_dynamic_price_and_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.dissect(buffer, index, packet, parent)

  -- Underlying Asset Market Id: String
  index, underlying_asset_market_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.underlying_asset_market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity: FLOAT128
  index, upper_limit_quantity = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity.dissect(buffer, index, packet, parent)

  -- Lower Limit Quantity: FLOAT128
  index, lower_limit_quantity = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity For Block Trade: FLOAT128
  index, upper_limit_quantity_for_block_trade = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_quantity_for_block_trade.dissect(buffer, index, packet, parent)

  -- Lower Limit Quantity For Block Trade: FLOAT128
  index, lower_limit_quantity_for_block_trade = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_quantity_for_block_trade.dissect(buffer, index, packet, parent)

  -- Base Product Id: String
  index, base_product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.base_product_id.dissect(buffer, index, packet, parent)

  -- Subsidiary Product Id: String
  index, subsidiary_product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.subsidiary_product_id.dissect(buffer, index, packet, parent)

  -- Number Of Issues For Base Product: Int
  index, number_of_issues_for_base_product = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_base_product.dissect(buffer, index, packet, parent)

  -- Number Of Issues For Subsidiary Product: Int
  index, number_of_issues_for_subsidiary_product = koscom_mdcsrealtime_derivativesa_exture_v2_018.number_of_issues_for_subsidiary_product.dissect(buffer, index, packet, parent)

  -- Settlement Week: String
  index, settlement_week = koscom_mdcsrealtime_derivativesa_exture_v2_018.settlement_week.dissect(buffer, index, packet, parent)

  -- Suspended Stocks: String
  index, suspended_stocks = koscom_mdcsrealtime_derivativesa_exture_v2_018.suspended_stocks.dissect(buffer, index, packet, parent)

  -- Designation Date For Suspended Stocks: String
  index, designation_date_for_suspended_stocks = koscom_mdcsrealtime_derivativesa_exture_v2_018.designation_date_for_suspended_stocks.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Batch Data Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message = {}

-- Size: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_id.dissect(buffer, index, packet, parent)

  -- Me Group Number: String
  index, me_group_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.me_group_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Board Event Processing Time: String
  index, board_event_processing_time = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_processing_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_group_order_acceptance_halt_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quantity Allocation Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message = {}

-- Size: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Start End Of Allocation: String
  index, start_end_of_allocation = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_end_of_allocation.dissect(buffer, index, packet, parent)

  -- Allocation Type Code: String
  index, allocation_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.allocation_type_code.dissect(buffer, index, packet, parent)

  -- Time When Allocation Ended: String
  index, time_when_allocation_ended = koscom_mdcsrealtime_derivativesa_exture_v2_018.time_when_allocation_ended.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quantity_allocation_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message = {}

-- Size: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- The Time Imposing A Price Limit: String
  index, the_time_imposing_a_price_limit = koscom_mdcsrealtime_derivativesa_exture_v2_018.the_time_imposing_a_price_limit.dissect(buffer, index, packet, parent)

  -- Price Limit Expansion Upper Limit: Int
  index, price_limit_expansion_upper_limit = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_upper_limit.dissect(buffer, index, packet, parent)

  -- Price Limit Expansion Lower Limit: Int
  index, price_limit_expansion_lower_limit = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_expansion_lower_limit.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_price_limit_range_increase_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message = {}

-- Size: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Dynamic Price Limit Type Code: String
  index, dynamic_price_limit_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.dynamic_price_limit_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_dynamic_upper_lower_limit_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message = {}

-- Size: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_derivativesa_exture_v2_018.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Issue Closing Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message = {}

-- Size: Derivatives Issue Closing Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Issue Closing Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Issue Closing Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Issue Closing Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message = {}

-- Size: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Negotiated Trade Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message = {}

-- Size: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Volume: Long
  index, total_accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Value: FLOAT128
  index, total_accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message = {}

-- Size: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_plus_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message = {}

-- Size: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_derivativesa_exture_v2_018.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_market_operation_ts_plus_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message = {}

-- Size: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_plus_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message = {}

-- Size: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_plus_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message = {}

-- Size: Derivatives Order Filled Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Order Filled Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message = {}

-- Size: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_snapshot_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message = {}

-- Size: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.trading_price.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_derivativesa_exture_v2_018.todays_low.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_derivativesa_exture_v2_018.open_interest.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_derivativesa_exture_v2_018.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_snapshot_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message = {}

-- Size: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message = {}

-- Size: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.size =
  koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.size + 
  koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.size

-- Display: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_derivativesa_exture_v2_018.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_derivativesa_exture_v2_018.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_derivativesa_exture_v2_018.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_derivativesa_exture_v2_018.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_derivativesa_exture_v2_018.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_derivativesa_exture_v2_018.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.fields.derivatives_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_derivativesa_exture_v2_018.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_derivativesa_exture_v2_018.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B601F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B602F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B603F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B606F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B607F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B608F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B609F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B610F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B611F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B612F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B613F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B615F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B616F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Five Levels Message
  if message_code == "B617F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Ten Levels Message
  if message_code == "B604F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Ten Levels Message
  if message_code == "B605F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quote Ten Levels Message
  if message_code == "B618F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B201F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B202F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B203F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B206F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B207F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B208F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B209F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B210F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B211F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B212F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B213F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B215F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B216F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Five Levels Message
  if message_code == "B217F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Ten Levels Message
  if message_code == "B204F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Ten Levels Message
  if message_code == "B205F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Snapshot Ten Levels Message
  if message_code == "B218F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_snapshot_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A301F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A302F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A303F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A304F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A305F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A306F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A307F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A308F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A309F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A310F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A311F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A312F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A313F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A315F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A316F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A317F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Message
  if message_code == "A318F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G701F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G702F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G703F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G706F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G707F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G708F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G709F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G710F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G711F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G712F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G713F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G715F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G716F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Five Levels Message
  if message_code == "G717F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Ten Levels Message
  if message_code == "G704F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Ten Levels Message
  if message_code == "G705F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Order Filled Plus Quote Ten Levels Message
  if message_code == "G718F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_order_filled_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R101F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R102F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R103F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R106F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R107F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R108F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R109F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R110F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R111F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R112F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R113F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R115F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R116F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Five Levels Message
  if message_code == "R117F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Ten Levels Message
  if message_code == "R104F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Ten Levels Message
  if message_code == "R105F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Plus Quote Ten Levels Message
  if message_code == "R118F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C401F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C402F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C403F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C404F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C405F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C406F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C407F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C408F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C409F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C410F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C411F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C412F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C413F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C415F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C416F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C417F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Negotiated Trade Message
  if message_code == "C418F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_negotiated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A702S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A703S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A704S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A705S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701Q" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701X" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701B" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701M" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701K" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701R" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A702F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A703F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A704F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A705F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A706F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A707F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A708F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A709F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A710F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A711F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A712F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A713F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A715F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A716F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A717F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A718F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701G" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Ts Message
  if message_code == "A701E" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A601F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A602F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A603F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A604F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A605F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A606F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A607F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A608F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A609F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A610F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A611F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A612F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A613F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A615F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A616F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A617F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Issue Closing Message
  if message_code == "A618F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M402S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M403S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M404S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M405S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401Q" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401X" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401B" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401M" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401K" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401R" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M402F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M403F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M404F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M405F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M406F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M407F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M408F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M409F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M410F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M411F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M412F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M413F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M415F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M416F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M417F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M418F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401G" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Operation Schedule Message
  if message_code == "M401E" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_market_operation_schedule_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q201F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q202F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q203F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q204F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q206F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q208F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q209F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q210F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q211F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q212F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q216F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Dynamic Upper Lower Limit Message
  if message_code == "Q217F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_dynamic_upper_lower_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V101F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V102F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V103F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V104F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V105F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V108F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V109F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V111F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V112F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V113F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V115F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V116F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V117F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Price Limit Range Increase Message
  if message_code == "V118F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_price_limit_range_increase_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O601S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O603S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O604S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O605S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O601Q" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O601X" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O601F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O602F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O603F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O604F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O605F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O606F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O607F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O608F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O609F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O610F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O611F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O612F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O613F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O615F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O616F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O617F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Quantity Allocation Message
  if message_code == "O618F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_quantity_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF01S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF02S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF03S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF04S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF05S" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF01Q" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF01F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF02F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF03F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF04F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF05F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF06F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF07F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF08F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF09F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF10F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF11F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF12F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF13F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF15F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF16F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF17F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Group Order Acceptance Halt Message
  if message_code == "IF18F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_group_order_acceptance_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A001F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A002F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A003F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A004F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A005F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A006F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A007F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A008F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A009F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A010F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A011F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A012F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A013F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A015F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A016F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A017F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Batch Data Message
  if message_code == "A018F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_batch_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Adjustment Details Message
  if message_code == "H404F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Adjustment Details Message
  if message_code == "H405F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Derivatives Adjustment Details Message
  if message_code == "H418F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.equity_derivatives_adjustment_details_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Futures Settlement Reference Ktb Message
  if message_code == "H606F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_settlement_reference_ktb_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H101F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H102F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H103F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H104F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H105F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H106F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H107F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H108F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H109F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H110F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H111F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H112F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H113F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H115F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H116F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H117F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Investor Activities Message
  if message_code == "H118F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_investor_activities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H201F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H202F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H203F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H204F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H205F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H206F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H207F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H208F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H209F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H210F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H211F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H212F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H213F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H215F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H216F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H217F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Open Interest Message
  if message_code == "H218F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.derivatives_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H301F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H302F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H304F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H306F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H308F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H309F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H310F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H311F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Settled Price Message
  if message_code == "H313F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.futures_settled_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID03F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID05F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID07F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID12F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID15F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID16F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID17F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Base Price Of Clearing Margins Message
  if message_code == "ID18F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_base_price_of_clearing_margins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Implied Volatility Message
  if message_code == "P103F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Implied Volatility Message
  if message_code == "P112F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Implied Volatility Message
  if message_code == "P115F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Implied Volatility Message
  if message_code == "P116F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Implied Volatility Message
  if message_code == "P117F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_implied_volatility_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N703F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N705F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N707F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N712F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N715F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N716F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N717F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Sensitivity Message
  if message_code == "N718F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.options_sensitivity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Futures Spot Settlement Reference Message
  if message_code == "H506F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Futures Spot Settlement Reference Message
  if message_code == "H599F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.commodity_futures_spot_settlement_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Daily Disclosed Rfr Message
  if message_code == "HA06F" then
    return koscom_mdcsrealtime_derivativesa_exture_v2_018.daily_disclosed_rfr_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_derivativesa_exture_v2_018.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_derivativesa_exture_v2_018.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_derivativesa_exture_v2_018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_derivativesa_exture_v2_018.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 28 branches
    index = koscom_mdcsrealtime_derivativesa_exture_v2_018.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.init()
end

-- Dissector for Koscom MdcsRealtime DerivativesA Exture 2.018
function omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018, buffer(), omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_derivativesa_exture_v2_018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime DerivativesA Exture 2.018 (Udp)
local function omi_koscom_mdcsrealtime_derivativesa_exture_v2_018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_derivativesa_exture_v2_018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_derivativesa_exture_v2_018
  omi_koscom_mdcsrealtime_derivativesa_exture_v2_018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime DerivativesA Exture 2.018
omi_koscom_mdcsrealtime_derivativesa_exture_v2_018:register_heuristic("udp", omi_koscom_mdcsrealtime_derivativesa_exture_v2_018_udp_heuristic)

-- Register Koscom MdcsRealtime DerivativesA Exture 2.018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_derivativesa_exture_v2_018)

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
