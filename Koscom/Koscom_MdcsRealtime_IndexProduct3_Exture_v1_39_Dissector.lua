-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Protocol
local omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39 = Proto("Omi.Koscom.MdcsRealtime.IndexProduct3.Exture.v1.39", "Koscom MdcsRealtime IndexProduct3 Exture 1.39")

-- Protocol table
local koscom_mdcsrealtime_indexproduct3_exture_v1_39 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Fields
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.accumulatedcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.accumulatedtradingvalue", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.accumulatedtradingvolume", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageconvexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averagecouponprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averagecurrentyield", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageduration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageforwardytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageremainingmaturityprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averagespread", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averagespreadsign", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageyld", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.averageytm", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.basedate", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.basetime", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.basisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.bondindexid", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.businessdate", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.calculatingdate", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.calculatingtime", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.calculationtime", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_double_11 = ProtoField.new("Call Re Investment Index Double 11", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.callreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_float_12816 = ProtoField.new("Call Re Investment Index Float 12816", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.callreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.callreinvestmentindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.cashinflow", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.cleanprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_double_11 = ProtoField.new("Clean Price Index Double 11", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.cleanpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_float_12816 = ProtoField.new("Clean Price Index Float 12816", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.cleanpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.cleanpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.convexity", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.currencycode", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.currenttime", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.duration", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.endkeyword", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.filler4", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.futuresbasisprice", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.groupcode", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.index", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexchangeagainstthepreviousday", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexchangesignagainstthepreviousday", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexconstituent", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexid", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexmarketcapitalization", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.indexnumberofsecurities", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.isincode", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.issuedamount", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.issuedamountweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.marketcapitalizationweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_double_11 = ProtoField.new("Market Price Index Double 11", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.marketpriceindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_float_12816 = ProtoField.new("Market Price Index Float 12816", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.marketpriceindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.marketpriceindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.maturitycode", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.message_code = ProtoField.new("Message Code", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.messagecode", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.messagesequencenumber", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.reinvestcallcash", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.totalearningsindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.totalearningsindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.totalprofitindex", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.transmissiontime", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.weightofcleanindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.weightofsumindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_double_11 = ProtoField.new("Zero Re Investment Index Double 11", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.zeroreinvestmentindexdouble11", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_float_12816 = ProtoField.new("Zero Re Investment Index Float 12816", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.zeroreinvestmentindexfloat12816", ftypes.DOUBLE)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.zeroreinvestmentindexweight", ftypes.STRING)

-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Headers
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.packet", ftypes.STRING)

-- Koscom MdcsRealtime IndexProduct3 1.39 Application Messages
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.bondindexkrxmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.bondktbindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.bondktbindextermstructuremessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.bondprimeindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.globalindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.krxestimatedindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.krxindexmessage", ftypes.STRING)
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.indexproduct3.exture.v1.39.pollingdatamessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime IndexProduct3 Exture 1.39 Show Options
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime IndexProduct3 Exture 1.39 Fields
-----------------------------------------------------------------------

-- Accumulated Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.display = function(value)
  return "Accumulated Cash: "..value
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.size = 12

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.display = function(value)
  return "Average Convexity: "..value
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.display = function(value)
  return "Average Coupon Price: "..value
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.display = function(value)
  return "Average Current Yield: "..value
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.display = function(value)
  return "Average Duration: "..value
end

-- Dissect: Average Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.display = function(value)
  return "Average Forward Ytm: "..value
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.display = function(value)
  return "Average Remaining Maturity Price: "..value
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.display = function(value)
  return "Average Spread: "..value
end

-- Dissect: Average Spread
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.display = function(value)
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
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.display = function(value)
  return "Average Yld: "..value
end

-- Dissect: Average Yld
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.display = function(value)
  return "Average Ytm: "..value
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.display = function(value)
  return "Base Time: "..value
end

-- Dissect: Base Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.display = function(value)
  return "Basis Price: "..value
end

-- Dissect: Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.display = function(value)
  return "Calculating Time: "..value
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.display = function(value)
  return "Calculation Time: "..value
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11 = {}

-- Size: Call Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.size = 11

-- Display: Call Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.display = function(value)
  return "Call Re Investment Index Double 11: "..value
end

-- Dissect: Call Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816 = {}

-- Size: Call Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.size = 16

-- Display: Call Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.display = function(value)
  return "Call Re Investment Index Float 12816: "..value
end

-- Dissect: Call Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.display = function(value)
  return "Call Re Investment Index Weight: "..value
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.display = function(value)
  return "Cash Inflow: "..value
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.display = function(value)
  return "Clean Price: "..value
end

-- Dissect: Clean Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11 = {}

-- Size: Clean Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.size = 11

-- Display: Clean Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.display = function(value)
  return "Clean Price Index Double 11: "..value
end

-- Dissect: Clean Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Clean Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816 = {}

-- Size: Clean Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.size = 16

-- Display: Clean Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.display = function(value)
  return "Clean Price Index Float 12816: "..value
end

-- Dissect: Clean Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.display = function(value)
  return "Clean Price Index Weight: "..value
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.display = function(value)
  return "Convexity: "..value
end

-- Dissect: Convexity
koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.convexity, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.size = 3

-- Display: Currency Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.display = function(value)
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
koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.display = function(value)
  return "Current Time: "..value
end

-- Dissect: Current Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.current_time, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration = {}

-- Size: Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.display = function(value)
  return "Duration: "..value
end

-- Dissect: Duration
koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.display = function(value)
  return "Futures Basis Price: "..value
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.group_code, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index = {}

-- Size: Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.size = 9

-- Display: Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.display = function(value)
  return "Index: "..value
end

-- Dissect: Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.display = function(value)
  return "Index Change Against The Previous Day: "..value
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.display = function(value)
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
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.display = function(value)
  if value == "0" then
    return "Index Constituent: Included In Etf Not In Index (0)"
  end
  if value == "1" then
    return "Index Constituent: Included In Index (1)"
  end

  return "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.display = function(value)
  return "Issued Amount Weight: "..value
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.display = function(value)
  return "Market Capitalization Weight: "..value
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11 = {}

-- Size: Market Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.size = 11

-- Display: Market Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.display = function(value)
  return "Market Price Index Double 11: "..value
end

-- Dissect: Market Price Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_double_11, range, value, display)

  return offset + length, value
end

-- Market Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816 = {}

-- Size: Market Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.size = 16

-- Display: Market Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.display = function(value)
  return "Market Price Index Float 12816: "..value
end

-- Dissect: Market Price Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_float_12816, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.display = function(value)
  return "Market Price Index Weight: "..value
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Message Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code = {}

-- Size: Message Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.size = 5

-- Display: Message Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.display = function(value)
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

  return "Message Code: Unknown("..value..")"
end

-- Dissect: Message Code
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.message_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.display = function(value)
  return "Reinvest Call Cash: "..value
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.display = function(value)
  return "Total Earnings Index: "..value
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.display = function(value)
  return "Total Earnings Index Weight: "..value
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.display = function(value)
  return "Total Profit Index: "..value
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.display = function(value)
  return "Transmission Time: "..value
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_indexproduct3_exture_v1_39.text_encoding)
  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Clean Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Sum Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value)
  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..value
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11 = {}

-- Size: Zero Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.size = 11

-- Display: Zero Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.display = function(value)
  return "Zero Re Investment Index Double 11: "..value
end

-- Dissect: Zero Re Investment Index Double 11
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_double_11, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816 = {}

-- Size: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.size = 16

-- Display: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.display = function(value)
  return "Zero Re Investment Index Float 12816: "..value
end

-- Dissect: Zero Re Investment Index Float 12816
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_float_12816, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.display = function(value)
  return "Zero Re Investment Index Weight: "..value
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime IndexProduct3 Exture 1.39
-----------------------------------------------------------------------

-- Bond Index Krx Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Float 12816: FLOAT128
  index, market_price_index_float_12816 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Float 12816: FLOAT128
  index, zero_re_investment_index_float_12816 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Float 12816: FLOAT128
  index, call_re_investment_index_float_12816 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_float_12816.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_indexproduct3_exture_v1_39.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_indexproduct3_exture_v1_39.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_indexproduct3_exture_v1_39.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Double 11: Double
  index, clean_price_index_double_11 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Market Price Index Double 11: Double
  index, market_price_index_double_11 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.market_price_index_double_11.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Double 11: Double
  index, call_re_investment_index_double_11 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.call_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Double 11: Double
  index, zero_re_investment_index_double_11 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.zero_re_investment_index_double_11.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_indexproduct3_exture_v1_39.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_indexproduct3_exture_v1_39.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_indexproduct3_exture_v1_39.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Float 12816: FLOAT128
  index, clean_price_index_float_12816 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_float_12816.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_indexproduct3_exture_v1_39.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_indexproduct3_exture_v1_39.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_indexproduct3_exture_v1_39.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_indexproduct3_exture_v1_39.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_indexproduct3_exture_v1_39.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_indexproduct3_exture_v1_39.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.size =
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.size + 
  koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_indexproduct3_exture_v1_39.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_indexproduct3_exture_v1_39.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_indexproduct3_exture_v1_39.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_indexproduct3_exture_v1_39.payload.dissect = function(buffer, offset, packet, parent, message_code)
  -- Dissect Polling Data Message
  if message_code == "I2000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Index Message
  if message_code == "IA000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Krx Estimated Index Message
  if message_code == "IB000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.krx_estimated_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Index Message
  if message_code == "J2000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.global_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Prime Index Message
  if message_code == "J4000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_prime_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Message
  if message_code == "K1000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Ktb Index Term Structure Message
  if message_code == "K8000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_ktb_index_term_structure_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bond Index Krx Message
  if message_code == "IG000" then
    return koscom_mdcsrealtime_indexproduct3_exture_v1_39.bond_index_krx_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_indexproduct3_exture_v1_39.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_indexproduct3_exture_v1_39.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_indexproduct3_exture_v1_39.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Code: String
    index, message_code = koscom_mdcsrealtime_indexproduct3_exture_v1_39.message_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 8 branches
    index = koscom_mdcsrealtime_indexproduct3_exture_v1_39.payload.dissect(buffer, index, packet, parent, message_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.init()
end

-- Dissector for Koscom MdcsRealtime IndexProduct3 Exture 1.39
function omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39, buffer(), omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_indexproduct3_exture_v1_39.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime IndexProduct3 Exture 1.39 (Udp)
local function omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_indexproduct3_exture_v1_39.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39
  omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime IndexProduct3 Exture 1.39
omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39:register_heuristic("udp", omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39_udp_heuristic)

-- Register Koscom MdcsRealtime IndexProduct3 Exture 1.39 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_indexproduct3_exture_v1_39)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Koscom Co., Ltd.
--   Version: 1.39
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
